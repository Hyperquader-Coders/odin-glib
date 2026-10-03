package gobject

// Hand-written helpers over the generated API; regeneration does not touch this file.
// From odin-gtk (MIT, docs/LICENSE-odin-gtk.md).

import "base:intrinsics"
import glib "glib:glib"

// With GTK_SAFE_CAST a cast checks the instance's type; it defaults to on unless the
// build optimises for speed.
GTK_SAFE_CAST :: #config(GTK_SAFE_CAST, ODIN_OPTIMIZATION_MODE < .Speed)

signal_connect :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: $T,
    data: glib.pointer = nil,
) -> glib.ulong where intrinsics.type_is_proc(T) {
    return signal_connect_data(instance, detailed_signal, cast(Callback)c_handler, data, nil, {})
}

signal_connect_after :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: $T,
    data: glib.pointer = nil,
) -> glib.ulong where intrinsics.type_is_proc(T) {
    return signal_connect_data(instance, detailed_signal, cast(Callback)c_handler, data, nil, {.AFTER})
}

signal_connect_swapped :: #force_inline proc "c" (
    instance: glib.pointer,
    detailed_signal: cstring,
    c_handler: $T,
    data: glib.pointer = nil,
) -> glib.ulong where intrinsics.type_is_proc(T) {
    return signal_connect_data(instance, detailed_signal, cast(Callback)c_handler, data, nil, {.SWAPPED})
}

// The C macros over signal_handlers_*_matched. The handler is matched by its address and
// the closure data; a handler connected with signal_connect_data and a nil data matches
// data = nil.
signal_handlers_disconnect_by_func :: #force_inline proc "c" (
    instance: glib.pointer,
    func: $T,
    data: glib.pointer = nil,
) -> glib.uint_ where intrinsics.type_is_proc(T) {
    return signal_handlers_disconnect_matched(instance, {.MATCH_FUNC, .MATCH_DATA}, 0, 0, nil, cast(glib.pointer)func, data)
}

signal_handlers_disconnect_by_data :: #force_inline proc "c" (
    instance: glib.pointer,
    data: glib.pointer,
) -> glib.uint_ {
    return signal_handlers_disconnect_matched(instance, {.MATCH_DATA}, 0, 0, nil, nil, data)
}

signal_handlers_block_by_func :: #force_inline proc "c" (
    instance: glib.pointer,
    func: $T,
    data: glib.pointer = nil,
) -> glib.uint_ where intrinsics.type_is_proc(T) {
    return signal_handlers_block_matched(instance, {.MATCH_FUNC, .MATCH_DATA}, 0, 0, nil, cast(glib.pointer)func, data)
}

signal_handlers_unblock_by_func :: #force_inline proc "c" (
    instance: glib.pointer,
    func: $T,
    data: glib.pointer = nil,
) -> glib.uint_ where intrinsics.type_is_proc(T) {
    return signal_handlers_unblock_matched(instance, {.MATCH_FUNC, .MATCH_DATA}, 0, 0, nil, cast(glib.pointer)func, data)
}

type_cast :: #force_inline proc "contextless" (
    $T: typeid,
    instance: $Ptr,
    g_type: $TypeProc,
) -> ^T where intrinsics.type_is_pointer(Ptr),
    intrinsics.type_is_proc(TypeProc) &&
    intrinsics.type_proc_return_count(TypeProc) == 1 &&
    intrinsics.type_proc_return_type(TypeProc, 0) == Type {
    when GTK_SAFE_CAST {
        return cast(^T)type_check_instance_cast(cast(^TypeInstance)instance, g_type())
    } else {
        return cast(^T)instance
    }
}

type_is :: #force_inline proc "contextless" (
    instance: $Ptr,
    g_type: $TypeProc,
) -> glib.boolean where intrinsics.type_is_pointer(Ptr),
    intrinsics.type_is_proc(TypeProc) &&
    intrinsics.type_proc_return_count(TypeProc) == 1 &&
    intrinsics.type_proc_return_type(TypeProc, 0) == Type {
    return type_check_instance_is_a(cast(^TypeInstance)instance, g_type())
}
