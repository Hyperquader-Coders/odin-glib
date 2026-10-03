#+test
package gobject

import "core:testing"
import glib "glib:glib"

@(test)
test_fundamental_type_names :: proc(t: ^testing.T) {
    testing.expect_value(t, string(type_name(object_get_type())), "GObject")
}

@(test)
test_object_new_and_unref :: proc(t: ^testing.T) {
    obj := object_new(object_get_type(), nil)
    testing.expect(t, obj != nil)
    testing.expect(t, type_check_instance_is_a(cast(^TypeInstance)obj, object_get_type()) != false)
    object_unref(obj)
}

@(test)
test_flag_sets_keep_the_c_layout :: proc(t: ^testing.T) {
    testing.expect_value(t, size_of(ParamFlags), 4)
    testing.expect_value(t, size_of(SignalFlags), 4)
    testing.expect_value(t, size_of(ConnectFlags), 4)
    testing.expect_value(t, transmute(u32)ParamFlags{.DEPRECATED}, 0x80000000)
    testing.expect_value(t, transmute(u32)ParamFlags{.EXPLICIT_NOTIFY}, 0x40000000)
    testing.expect_value(t, transmute(u32)PARAM_FLAGS_READWRITE, 3)
    testing.expect_value(t, transmute(u32)PARAM_STATIC_STRINGS, 0xe0)
    testing.expect_value(t, transmute(u32)SignalFlags{.ACCUMULATOR_FIRST_RUN}, 1 << 17)
    testing.expect_value(t, transmute(u32)ConnectFlags{.SWAPPED}, 2)
    testing.expect_value(t, ParamFlags{.PRIVATE}, ParamFlags{.STATIC_NAME})
}

@(test)
test_param_flags_are_stored_in_the_spec :: proc(t: ^testing.T) {
    spec := param_spec_int("n", "n", "n", 0, 10, 5, {.READABLE, .WRITABLE, .EXPLICIT_NOTIFY})
    param_spec_ref_sink(spec)
    defer param_spec_unref(spec)
    testing.expect_value(t, spec.flags, ParamFlags{.READABLE, .WRITABLE, .EXPLICIT_NOTIFY})
}

@(test)
test_signal_flags_are_read_from_the_query :: proc(t: ^testing.T) {
    id := signal_lookup("notify", object_get_type())
    query: SignalQuery
    signal_query(id, &query)
    testing.expect(t, .RUN_FIRST in query.signal_flags)
    testing.expect(t, .DETAILED in query.signal_flags)
    testing.expect(t, .RUN_LAST not_in query.signal_flags)
}

on_hit :: proc "c" (instance: glib.pointer, data: glib.pointer) {
    (^int)(data)^ += 1
}

emit_hit :: proc(instance: glib.pointer, id: glib.uint_) {
    value: Value
    value_init(&value, object_get_type())
    defer value_unset(&value)
    value_set_object(&value, instance)
    signal_emitv(&value, id, 0, nil)
}

@(test)
test_signal_handler_macros :: proc(t: ^testing.T) {
    id := signal_newv("odin-glib-hit", object_get_type(), {.RUN_LAST}, nil, nil, nil, nil, TYPE_NONE, 0, nil)
    obj := object_new(object_get_type(), nil)
    defer object_unref(obj)
    a, b: int
    signal_connect(obj, "odin-glib-hit", on_hit, &a)
    signal_connect_after(obj, "odin-glib-hit", on_hit, &b)

    emit_hit(obj, id)
    testing.expect_value(t, a, 1)
    testing.expect_value(t, b, 1)

    testing.expect_value(t, signal_handlers_block_by_func(obj, on_hit, &a), 1)
    emit_hit(obj, id)
    testing.expect_value(t, a, 1)
    testing.expect_value(t, b, 2)

    testing.expect_value(t, signal_handlers_unblock_by_func(obj, on_hit, &a), 1)
    emit_hit(obj, id)
    testing.expect_value(t, a, 2)
    testing.expect_value(t, b, 3)

    // The data must match too: another pointer matches nothing.
    other: int
    testing.expect_value(t, signal_handlers_disconnect_by_func(obj, on_hit, &other), 0)

    testing.expect_value(t, signal_handlers_disconnect_by_data(obj, &a), 1)
    emit_hit(obj, id)
    testing.expect_value(t, a, 2)
    testing.expect_value(t, b, 4)

    testing.expect_value(t, signal_handlers_disconnect_by_func(obj, on_hit, &b), 1)
    emit_hit(obj, id)
    testing.expect_value(t, b, 4)
    testing.expect_value(t, signal_handlers_disconnect_by_func(obj, on_hit, &b), 0)
}

// A C-variadic procedure takes `#c_vararg ..any`: each argument is passed as its own C value,
// small integers, bool and f32 promoted as C does. A custom signal with (gdouble, gint, gchar *)
// parameters round-trips typed arguments through signal_new and signal_emit_by_name.
Emitted :: struct {
    d: f64,
    i: i32,
    s_ok: bool,
}

@(private = "file")
on_custom :: proc "c" (instance: glib.pointer, d: f64, i: i32, s: cstring, data: glib.pointer) {
    e := cast(^Emitted)data
    e.d, e.i, e.s_ok = d, i, string(s) == "hi"
}

@(test)
test_variadic_arguments_arrive_with_their_c_types :: proc(t: ^testing.T) {
    obj := object_new(object_get_type(), nil)
    defer object_unref(obj)
    id := signal_new("amber-test-variadic", object_get_type(), {.RUN_LAST}, 0, nil, nil, nil, TYPE_NONE, 3, TYPE_DOUBLE, TYPE_INT, TYPE_STRING)
    testing.expect(t, id != 0)
    e: Emitted
    signal_connect(obj, "amber-test-variadic", on_custom, &e)
    signal_emit_by_name(obj, "amber-test-variadic", f64(2.5), i32(-7), cstring("hi"))
    testing.expect_value(t, e.d, 2.5)
    testing.expect_value(t, e.i, -7)
    testing.expect(t, e.s_ok)
}

@(test)
test_object_casts :: proc(t: ^testing.T) {
    obj := object_new(object_get_type(), nil)
    defer object_unref(obj)
    testing.expect(t, OBJECT(obj) == obj)
    testing.expect(t, bool(IS_OBJECT(obj)))
    testing.expect(t, !bool(IS_BINDING(obj)))
    testing.expect(t, !bool(IS_OBJECT(rawptr(nil))))
}
