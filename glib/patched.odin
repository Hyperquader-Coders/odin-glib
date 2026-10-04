package glib

// One typed pin per generation rule that changes a type (docs/PATCHED.md). A regeneration that
// drops or changes one fails to compile here.

// Flag types are bit_sets of the C size, so they pass by value and sit in structs unchanged.
#assert(size_of(LogLevelFlags) == 4)
#assert(size_of(IOCondition) == 4)
#assert(size_of(SpawnFlags) == 4)

// A GSourceFunc result is a gboolean.
@(private)
patched_source_remove: boolean = SOURCE_REMOVE
@(private)
patched_source_continue: boolean = SOURCE_CONTINUE

// An error-domain macro is the quark procedure.
@(private)
patched_file_error: proc "c" () -> Quark = FILE_ERROR

// The single-object rule for a pointer parameter whose name ends in "s" (docs/PATCHED.md):
// `T *settings` is ^T, not the [^]T runic writes. One pin per distinct parameter name and type.
@(private = "file")
patched_bit_lock: proc "c" (_: ^int_, _: int_) = bit_lock

@(private = "file")
patched_bytes_new_from_bytes: proc "c" (_: ^Bytes, _: size, _: size) -> ^Bytes = bytes_new_from_bytes

@(private = "file")
patched_get_filename_charsets: proc "c" (_: ^[^]cstring) -> boolean = get_filename_charsets

@(private = "file")
patched_date_compare: proc "c" (_: ^Date, _: ^Date) -> int_ = date_compare

@(private = "file")
patched_file_get_contents: proc "c" (_: cstring, _: ^cstring, _: ^size, _: ^^Error) -> boolean = file_get_contents

@(private = "file")
patched_file_set_contents: proc "c" (_: cstring, _: ^byte, _: ssize, _: ^^Error) -> boolean = file_set_contents

@(private = "file")
patched_main_context_find_source_by_funcs_user_data: proc "c" (_: ^MainContext, _: ^SourceFuncs, _: pointer) -> ^Source = main_context_find_source_by_funcs_user_data

@(private = "file")
patched_source_new: proc "c" (_: ^SourceFuncs, _: uint_) -> ^Source = source_new

@(private = "file")
patched_source_set_callback_indirect: proc "c" (_: ^Source, _: pointer, _: ^SourceCallbackFuncs) = source_set_callback_indirect

@(private = "file")
patched_utf8_pointer_to_offset: proc "c" (_: cstring, _: cstring) -> long = utf8_pointer_to_offset

@(private = "file")
patched_strdelimit: proc "c" (_: cstring, _: cstring, _: char) -> cstring = strdelimit

@(private = "file")
patched_strcanon: proc "c" (_: cstring, _: cstring, _: char) -> cstring = strcanon

@(private = "file")
patched_strescape: proc "c" (_: cstring, _: cstring) -> cstring = strescape

@(private = "file")
patched_str_tokenize_and_fold: proc "c" (_: cstring, _: cstring, _: ^[^]cstring) -> ^cstring = str_tokenize_and_fold

@(private = "file")
patched_io_channel_read_line: proc "c" (_: ^IOChannel, _: ^cstring, _: ^size, _: ^size, _: ^^Error) -> IOStatus = io_channel_read_line

@(private = "file")
patched_variant_get_fixed_array: proc "c" (_: ^Variant, _: ^size, _: size) -> constpointer = variant_get_fixed_array

@(private = "file")
patched_log_variant: proc "c" (_: cstring, _: LogLevelFlags, _: ^Variant) = log_variant

@(private = "file")
patched_option_context_parse_strv: proc "c" (_: ^OptionContext, _: ^[^]cstring, _: ^^Error) -> boolean = option_context_parse_strv

@(private = "file")
patched_regex_check_replacement: proc "c" (_: cstring, _: ^boolean, _: ^^Error) -> boolean = regex_check_replacement

@(private = "file")
patched_match_info_fetch_pos: proc "c" (_: ^MatchInfo, _: int_, _: ^int_, _: ^int_) -> boolean = match_info_fetch_pos

@(private = "file")
patched_slice_get_config_state: proc "c" (_: SliceConfig, _: int64, _: ^uint_) -> ^int64 = slice_get_config_state

@(private = "file")
patched_spawn_sync: proc "c" (_: cstring, _: ^cstring, _: ^cstring, _: SpawnFlags, _: SpawnChildSetupFunc, _: pointer, _: ^cstring, _: ^cstring, _: ^int_, _: ^^Error) -> boolean = spawn_sync

@(private = "file")
patched_timer_elapsed: proc "c" (_: ^Timer, _: ^ulong) -> double = timer_elapsed

@(private = "file")
patched_uri_split_with_user: proc "c" (_: cstring, _: UriFlags, _: ^cstring, _: ^cstring, _: ^cstring, _: ^cstring, _: ^cstring, _: ^int_, _: ^cstring, _: ^cstring, _: ^cstring, _: ^^Error) -> boolean = uri_split_with_user

@(private = "file")
patched_uri_join_with_user: proc "c" (_: UriFlags, _: cstring, _: cstring, _: cstring, _: cstring, _: cstring, _: int_, _: cstring, _: cstring, _: cstring) -> cstring = uri_join_with_user

@(private = "file")
patched_uri_parse_params: proc "c" (_: cstring, _: ssize, _: cstring, _: UriParamsFlags, _: ^^Error) -> ^HashTable = uri_parse_params

@(private = "file")
patched_completion_add_items: proc "c" (_: ^Completion, _: ^List) = completion_add_items

@(private = "file")
patched_tuples_destroy: proc "c" (_: ^Tuples) = tuples_destroy


#assert(type_of(Completion{}.items) == ^List)
#assert(type_of(TestLogBuffer{}.msgs) == ^SList)
#assert(type_of(Source{}.source_funcs) == ^SourceFuncs)
