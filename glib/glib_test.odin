#+test
package glib

import "core:sys/posix"
import "core:strings"
import "core:testing"

// Version recorded in README.md: "**Bound version:** X.Y.Z".
README :: #load("../README.md", string)

bound_version :: proc() -> (major, minor, micro: uint_, ok: bool) {
    marker :: "**Bound version:** "
    readme := README
    i := strings.index(readme, marker)
    if i < 0 do return
    rest := readme[i + len(marker):]
    end := strings.index_any(rest, " \n")
    if end < 0 do return
    parts := strings.split(rest[:end], ".", context.temp_allocator)
    if len(parts) != 3 do return
    nums: [3]uint_
    for p, n in parts {
        v := 0
        if len(p) == 0 do return
        for c in p {
            if c < '0' || c > '9' do return
            v = v * 10 + int(c - '0')
        }
        nums[n] = uint_(v)
    }
    return nums[0], nums[1], nums[2], true
}

@(test)
test_readme_version_matches_header_macros :: proc(t: ^testing.T) {
    major, minor, micro, ok := bound_version()
    testing.expect(t, ok, "README.md has no '**Bound version:** X.Y.Z'")
    testing.expect_value(t, major, uint_(GLIB_MAJOR_VERSION))
    testing.expect_value(t, minor, uint_(GLIB_MINOR_VERSION))
    testing.expect_value(t, micro, uint_(GLIB_MICRO_VERSION))
}

@(test)
test_loaded_library_is_not_older_than_the_headers :: proc(t: ^testing.T) {
    testing.expect_value(t, glib_major_version, uint_(GLIB_MAJOR_VERSION))
    testing.expect(t, glib_minor_version >= uint_(GLIB_MINOR_VERSION), "libglib is older than the bound headers")
    testing.expect(
        t,
        check_version(GLIB_MAJOR_VERSION, GLIB_MINOR_VERSION, GLIB_MICRO_VERSION) == nil,
        "check_version rejects the bound version",
    )
}

@(test)
test_string_functions :: proc(t: ^testing.T) {
    up := ascii_strup("amber", -1)
    defer free(rawptr(up))
    testing.expect_value(t, string(up), "AMBER")

    testing.expect(t, bool(str_has_prefix("odin-glib", "odin")))
    testing.expect_value(t, utf8_strlen("h\xc3\xa9llo", -1), 5)

    base := path_get_basename("/usr/lib/libglib-2.0.so")
    defer free(rawptr(base))
    testing.expect_value(t, string(base), "libglib-2.0.so")
}

@(test)
test_list_and_hash_table :: proc(t: ^testing.T) {
    list: ^List
    for i in 0 ..< 3 do list = list_append(list, rawptr(uintptr(i + 1)))
    testing.expect_value(t, list_length(list), 3)
    list_free(list)

    table := hash_table_new(direct_hash, direct_equal)
    defer hash_table_unref(table)
    hash_table_insert(table, rawptr(uintptr(7)), rawptr(uintptr(70)))
    testing.expect_value(t, hash_table_size(table), 1)
    testing.expect_value(t, uintptr(hash_table_lookup(table, rawptr(uintptr(7)))), 70)
}

@(test)
test_flag_sets_keep_the_c_layout :: proc(t: ^testing.T) {
    testing.expect_value(t, size_of(SpawnFlags), 4)
    testing.expect_value(t, size_of(LogLevelFlags), 4)
    testing.expect_value(t, size_of(IOCondition), 4)
    testing.expect_value(t, transmute(u32)SpawnFlags{.SPAWN_DO_NOT_REAP_CHILD, .SPAWN_SEARCH_PATH}, 6)
    testing.expect_value(t, transmute(u32)IOCondition{.IO_IN, .IO_OUT, .IO_ERR}, 13)
    testing.expect_value(t, transmute(u32)LOG_FATAL_MASK, 5)
    testing.expect_value(t, transmute(u32)LOG_LEVEL_MASK, 0xFFFFFFFC)
    testing.expect_value(t, transmute(u32)REGEX_NEWLINE_CRLF, 3145728)
    testing.expect_value(t, transmute(u32)TRAVERSE_ALL, 3)
    testing.expect_value(t, SPAWN_DEFAULT, SpawnFlags{})
}

@(test)
test_flags_pass_by_value_to_c :: proc(t: ^testing.T) {
    testing.expect(t, bool(file_test("/", {.IS_DIR})))
    testing.expect(t, !bool(file_test("/", {.IS_REGULAR})))
    testing.expect(t, bool(file_test("/", {.EXISTS, .IS_DIR})))

    previous := log_set_always_fatal({.LOG_LEVEL_ERROR})
    got := log_set_always_fatal(previous)
    testing.expect(t, .LOG_LEVEL_ERROR in got)
}

idle_runs: int

on_idle :: proc "c" (data: pointer) -> boolean {
    idle_runs += 1
    return SOURCE_CONTINUE if idle_runs < 3 else SOURCE_REMOVE
}

@(test)
test_source_results_are_boolean :: proc(t: ^testing.T) {
    idle_runs = 0
    idle_add(on_idle, nil)
    for _ in 0 ..< 10 do main_context_iteration(nil, false)
    testing.expect_value(t, idle_runs, 3)
    testing.expect_value(t, SOURCE_REMOVE, FALSE)
    testing.expect_value(t, SOURCE_CONTINUE, TRUE)
}

on_io :: proc "c" (source: ^IOChannel, condition: IOCondition, data: pointer) -> boolean {
    (^IOCondition)(data)^ = condition
    return SOURCE_REMOVE
}

@(test)
test_io_condition_reaches_a_callback :: proc(t: ^testing.T) {
    fds: [2]posix.FD
    testing.expect_value(t, posix.pipe(&fds), posix.result.OK)
    defer posix.close(fds[0])
    defer posix.close(fds[1])
    channel := io_channel_unix_new(i32(fds[0]))
    defer io_channel_unref(channel)

    seen: IOCondition
    io_add_watch(channel, {.IO_IN}, on_io, &seen)
    b: byte = 'x'
    posix.write(fds[1], &b, 1)
    for _ in 0 ..< 10 do main_context_iteration(nil, false)
    testing.expect_value(t, seen, IOCondition{.IO_IN})
}

@(test)
test_time_span_names :: proc(t: ^testing.T) {
    testing.expect_value(t, TIME_SPAN_HOUR, 60 * TIME_SPAN_MINUTE)
    testing.expect_value(t, TIME_SPAN_MINUTE, 60 * TIME_SPAN_SECOND)
    testing.expect_value(t, TIME_SPAN_SECOND, 1000 * TIME_SPAN_MILLISECOND)
}

@(test)
test_error_quark_macros_are_procedures :: proc(t: ^testing.T) {
    testing.expect_value(t, FILE_ERROR(), file_error_quark())
    testing.expect(t, FILE_ERROR() != 0)
}
