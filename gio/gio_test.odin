#+test
package gio

import "core:testing"
import glib "glib:glib"
import gobj "glib:gobject"

@(test)
test_file_basename :: proc(t: ^testing.T) {
    f := file_new_for_path("/tmp/odin-glib/example.txt")
    defer gobj.object_unref(f)
    name := file_get_basename(f)
    defer glib.free(rawptr(name))
    testing.expect_value(t, string(name), "example.txt")
}

@(test)
test_application_id_round_trip :: proc(t: ^testing.T) {
    app := application_new("org.amberlinux.OdinGlibTest", {.APPLICATION_NON_UNIQUE})
    defer gobj.object_unref(app)
    testing.expect_value(t, string(application_get_application_id(app)), "org.amberlinux.OdinGlibTest")
}

activated: int

on_activate :: proc "c" (app: ^Application, data: rawptr) {
    activated += 1
}

Mallinfo2 :: struct {
    arena, ordblks, smblks, hblks, hblkhd, usmblks, fsmblks, uordblks, fordblks, keepcost: uint,
}

foreign import libc "system:c"
@(default_calling_convention = "c")
foreign libc {
    mallinfo2 :: proc() -> Mallinfo2 ---
}

// Heap bytes in use, as glibc's malloc counts them. Reads zero under AddressSanitizer,
// which replaces malloc; the test then cannot fail, and ASAN=1 reports the leak itself.
heap_in_use :: proc() -> uint {
    return mallinfo2().uordblks
}

on_open :: proc "c" (app: ^Application, files: [^]^File, n_files: i32, hint: cstring, data: rawptr) {
    activated += 1
}

// run_once runs a fresh application (one cannot run twice) over args; the extra arguments
// are files, so the application handles "open".
run_once :: proc(t: ^testing.T, args: []string) {
    app := application_new("org.amberlinux.OdinGlibLeak", {.APPLICATION_NON_UNIQUE, .APPLICATION_HANDLES_OPEN})
    defer gobj.object_unref(app)
    gobj.signal_connect(app, "open", on_open)
    testing.expect_value(t, application_run(app, args), 0)
}

// application_run builds and frees its own argv (docs/PATCHED.md). Measured as heap growth
// across one run, so this must be the only test running: the Makefile sets
// ODIN_TEST_THREADS=1, which also keeps g_application_run's main context to one thread.
// A leaked GString struct is 24 bytes and the array segment grows with the count, so
// 4000 arguments leak over 100 KB when application_run drops them. A correct run
// leaves a few KB of GIO state at most.
@(test)
test_application_run_leaves_no_argv_behind :: proc(t: ^testing.T) {
    args := make([]string, 4000)
    defer delete(args)
    for &a in args do a = "arg"
    args[0] = "odin-glib-test"

    activated = 0
    run_once(t, args) // warm-up: one-time GIO state
    before := heap_in_use()
    run_once(t, args)
    after := heap_in_use()
    testing.expect_value(t, activated, 2)
    grown := after - before if after > before else 0
    testing.expectf(t, grown < 16 * 1024, "application_run left %v bytes allocated", grown)
}

@(test)
test_type_casts :: proc(t: ^testing.T) {
    app := application_new("org.amberlinux.OdinGlibCast", {.APPLICATION_NON_UNIQUE})
    defer gobj.object_unref(app)
    testing.expect(t, APPLICATION(app) == app)
    testing.expect(t, bool(IS_APPLICATION(app)))
    testing.expect(t, bool(IS_ACTION_GROUP(app)))
    testing.expect(t, !bool(IS_FILE(app)))
}

@(test)
test_flag_sets_keep_the_c_layout :: proc(t: ^testing.T) {
    testing.expect_value(t, size_of(FileCopyFlags), 4)
    testing.expect_value(t, size_of(TlsCertificateFlags), 4)
    testing.expect_value(t, transmute(u32)FileMeasureFlags{.APPARENT_SIZE, .NO_XDEV}, 12)
    testing.expect_value(t, transmute(u32)ApplicationFlags{.APPLICATION_NON_UNIQUE}, 32)
    testing.expect_value(t, transmute(u32)SubprocessFlags{.SEARCH_PATH_FROM_ENVP}, 256)
    testing.expect_value(t, transmute(u32)VALIDATE_ALL, 127)
    testing.expect_value(t, APPLICATION_DEFAULT_FLAGS, ApplicationFlags{})
    testing.expect_value(t, TLS_CERTIFICATE_FLAGS_NO_FLAGS, TlsCertificateFlags{})
    testing.expect_value(t, CONVERTER_FLAGS_NO_FLAGS, ConverterFlags{})
}

@(test)
test_flags_pass_by_value_to_c :: proc(t: ^testing.T) {
    f := file_new_for_path("/tmp")
    defer gobj.object_unref(f)
    err: ^glib.Error
    info := file_query_info(f, "standard::name", {.NOFOLLOW_SYMLINKS}, nil, &err)
    testing.expect(t, err == nil)
    defer gobj.object_unref(info)
    testing.expect_value(t, string(file_info_get_name(info)), "tmp")
}
