package gobject

import glib "glib:glib"

// One typed pin per generation rule that changes a type (docs/PATCHED.md). A regeneration that
// drops or changes one fails to compile here.

// Flag types are bit_sets of the C size, so they pass by value and sit in structs unchanged.
#assert(size_of(ParamFlags) == 4)
#assert(size_of(SignalFlags) == 4)
#assert(size_of(ConnectFlags) == 4)
#assert(size_of(SignalMatchType) == 4)

@(private)
patched_param_static_strings: ParamFlags = PARAM_STATIC_STRINGS

// The single-object rule for a pointer parameter whose name ends in "s" (docs/PATCHED.md):
// `T *settings` is ^T, not the [^]T runic writes. One pin per distinct parameter name and type.
@(private = "file")
patched_type_interfaces: proc "c" (_: Type, _: ^glib.uint_) -> ^Type = type_interfaces

@(private = "file")
patched_type_interface_prerequisites: proc "c" (_: Type, _: ^glib.uint_) -> ^Type = type_interface_prerequisites

@(private = "file")
patched_type_class_get_private: proc "c" (_: ^TypeClass, _: Type) -> glib.pointer = type_class_get_private

@(private = "file")
patched_signal_list_ids: proc "c" (_: Type, _: ^glib.uint_) -> ^glib.uint_ = signal_list_ids

@(private = "file")
patched_object_class_list_properties: proc "c" (_: ^ObjectClass, _: ^glib.uint_) -> ^^ParamSpec = object_class_list_properties


@(private = "file")
patched_weak_notify: WeakNotify = proc "c" (_: glib.pointer, _: ^Object) {}
