package gio

import "base:runtime"
import "core:os"
import glib "glib:glib"

foreign import gio_wrapper "system:gio-2.0"

@(default_calling_convention = "c")
foreign gio_wrapper {
    @(link_name = "g_application_run")
    g_application_run :: proc(application: ^Application, argc: i32, argv: ^cstring) -> i32 ---
}

// application_run builds the C argv from `args` (default: the process arguments) and
// frees it again. See docs/PATCHED.md.
application_run :: proc(application: ^Application, args := os.args) -> i32 {
    argv := glib.ptr_array_new()
    defer glib.ptr_array_free(argv, true)
    defer for i in 0 ..< argv.len do glib.free(([^]glib.pointer)(argv.pdata)[i])

    for arg in args {
        str := transmute(runtime.Raw_String)arg
        g_str := glib.string_new_len(cast(cstring)str.data, glib.ssize(str.len))
        // string_free(…, false) hands over the character buffer and frees the
        // GString itself; the buffer is freed above, the array's segment with it.
        glib.ptr_array_add(argv, cast(glib.pointer)glib.string_free(g_str, false))
    }

    return g_application_run(application, i32(argv.len), cast(^cstring)argv.pdata)
}
