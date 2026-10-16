# odin-glib API

Every public declaration of every package, generated from the source by `make api`; do not
edit. The reference is the [README](../README.md) and [SPEC](SPEC.md); the short form is the
[cheat sheet](CHEATSHEET.md).

## glib:glib

```text
package glib
	constants
		ALLOCATOR_LIST :: 1
		ALLOCATOR_NODE :: 3
		ALLOCATOR_SLIST :: 2
		ALLOC_AND_FREE :: 2
		ALLOC_ONLY :: 1
		ANALYZER_ANALYZING :: 0
		ASCII_DTOSTR_BUF_SIZE :: 29 + 10
		BIG_ENDIAN :: 4321
		BYTE_ORDER :: 1234
		CSET_A_2_Z :: "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		CSET_DIGITS :: "0123456789"
		CSET_a_2_z :: "abcdefghijklmnopqrstuvwxyz"
		DATALIST_FLAGS_MASK :: 3
		DATE_BAD_DAY :: 0
		DATE_BAD_JULIAN :: 0
		DATE_BAD_YEAR :: 0
		E :: 2.7182818284590451
		FALSE :: false
		FILE_SET_CONTENTS_NONE :: FileSetContentsFlags{}
		FORMAT_SIZE_DEFAULT :: FormatSizeFlags{}
		GINT16_FORMAT :: "hi"
		GINT16_MODIFIER :: "h"
		GINT32_FORMAT :: "i"
		GINT32_MODIFIER :: ""
		GINT64_FORMAT :: "li"
		GINT64_MODIFIER :: "l"
		GINTPTR_FORMAT :: "li"
		GINTPTR_MODIFIER :: "l"
		GLIB_MAJOR_VERSION :: 2
		GLIB_MICRO_VERSION :: 0
		GLIB_MINOR_VERSION :: 80
		GOFFSET_FORMAT :: "li"
		GOFFSET_MODIFIER :: "l"
		GSIZE_FORMAT :: "lu"
		GSIZE_MODIFIER :: "l"
		GSSIZE_FORMAT :: "li"
		GSSIZE_MODIFIER :: "l"
		GUINT16_FORMAT :: "hu"
		GUINT32_FORMAT :: "u"
		GUINT64_FORMAT :: "lu"
		GUINTPTR_FORMAT :: "lu"
		HAVE_GINT64 :: 1
		HAVE_GROWING_STACK :: 0
		HAVE_ISO_VARARGS :: 1
		HOOK_FLAG_MASK :: transmute(HookFlagMask)u32(15)
		HOOK_FLAG_USER_SHIFT :: 4
		IEEE754_DOUBLE_BIAS :: 1023
		IEEE754_FLOAT_BIAS :: 127
		IO_FLAG_GET_MASK :: IOFlags{.IO_FLAG_APPEND, .IO_FLAG_NONBLOCK, .IO_FLAG_IS_READABLE, .IO_FLAG_IS_WRITABLE, .IO_FLAG_IS_SEEKABLE}
		IO_FLAG_MASK :: IOFlags{.IO_FLAG_APPEND, .IO_FLAG_NONBLOCK, .IO_FLAG_IS_READABLE, .IO_FLAG_IS_WRITABLE, .IO_FLAG_IS_SEEKABLE}
		IO_FLAG_NONE :: IOFlags{}
		IO_FLAG_SET_MASK :: IOFlags{.IO_FLAG_APPEND, .IO_FLAG_NONBLOCK}
		KEY_FILE_DESKTOP_GROUP :: "Desktop Entry"
		KEY_FILE_DESKTOP_KEY_ACTIONS :: "Actions"
		KEY_FILE_DESKTOP_KEY_CATEGORIES :: "Categories"
		KEY_FILE_DESKTOP_KEY_COMMENT :: "Comment"
		KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE :: "DBusActivatable"
		KEY_FILE_DESKTOP_KEY_EXEC :: "Exec"
		KEY_FILE_DESKTOP_KEY_GENERIC_NAME :: "GenericName"
		KEY_FILE_DESKTOP_KEY_HIDDEN :: "Hidden"
		KEY_FILE_DESKTOP_KEY_ICON :: "Icon"
		KEY_FILE_DESKTOP_KEY_MIME_TYPE :: "MimeType"
		KEY_FILE_DESKTOP_KEY_NAME :: "Name"
		KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN :: "NotShowIn"
		KEY_FILE_DESKTOP_KEY_NO_DISPLAY :: "NoDisplay"
		KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN :: "OnlyShowIn"
		KEY_FILE_DESKTOP_KEY_PATH :: "Path"
		KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY :: "StartupNotify"
		KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS :: "StartupWMClass"
		KEY_FILE_DESKTOP_KEY_TERMINAL :: "Terminal"
		KEY_FILE_DESKTOP_KEY_TRY_EXEC :: "TryExec"
		KEY_FILE_DESKTOP_KEY_TYPE :: "Type"
		KEY_FILE_DESKTOP_KEY_URL :: "URL"
		KEY_FILE_DESKTOP_KEY_VERSION :: "Version"
		KEY_FILE_DESKTOP_TYPE_APPLICATION :: "Application"
		KEY_FILE_DESKTOP_TYPE_DIRECTORY :: "Directory"
		KEY_FILE_DESKTOP_TYPE_LINK :: "Link"
		KEY_FILE_NONE :: KeyFileFlags{}
		LITTLE_ENDIAN :: 1234
		LN10 :: 2.3025850929940459
		LN2 :: 0.6931471805599453
		LOG_2_BASE_10 :: 0.30102999566398119521
		LOG_FATAL_MASK :: LogLevelFlags{.LOG_FLAG_RECURSION, .LOG_LEVEL_ERROR}
		LOG_LEVEL_MASK :: transmute(LogLevelFlags)u32(4294967292)
		LOG_LEVEL_USER_SHIFT :: 8
		MAIN_CONTEXT_FLAGS_NONE :: MainContextFlags{}
		MARKUP_DEFAULT_FLAGS :: MarkupParseFlags{}
		MAXDOUBLE :: max(double)
		MAXFLOAT :: max(float)
		MAXINT :: max(int_)
		MAXINT16 :: max(int16)
		MAXINT32 :: max(int32)
		MAXINT64 :: max(int64)
		MAXINT8 :: max(int8)
		MAXLONG :: max(long)
		MAXOFFSET :: 0x7fffffffffffffff
		MAXSHORT :: max(short)
		MAXSIZE :: max(size)
		MAXSSIZE :: max(ssize)
		MAXUINT :: max(uint_)
		MAXUINT16 :: max(uint16)
		MAXUINT32 :: max(uint32)
		MAXUINT64 :: max(uint64)
		MAXUINT8 :: max(uint8)
		MAXULONG :: max(ulong)
		MAXUSHORT :: max(ushort)
		MEM_ALIGN :: 8
		MINDOUBLE :: min(double)
		MINFLOAT :: min(float)
		MININT :: min(int_)
		MININT16 :: min(int16)
		MININT32 :: min(int32)
		MININT64 :: min(int64)
		MININT8 :: min(int8)
		MINLONG :: min(long)
		MINOFFSET :: -(0x7fffffffffffffff) - (1)
		MINSHORT :: min(short)
		MINSSIZE :: min(ssize)
		OPTION_FLAG_NONE :: OptionFlags{}
		OS_INFO_KEY_BUG_REPORT_URL :: "BUG_REPORT_URL"
		OS_INFO_KEY_DOCUMENTATION_URL :: "DOCUMENTATION_URL"
		OS_INFO_KEY_HOME_URL :: "HOME_URL"
		OS_INFO_KEY_ID :: "ID"
		OS_INFO_KEY_NAME :: "NAME"
		OS_INFO_KEY_PRETTY_NAME :: "PRETTY_NAME"
		OS_INFO_KEY_PRIVACY_POLICY_URL :: "PRIVACY_POLICY_URL"
		OS_INFO_KEY_SUPPORT_URL :: "SUPPORT_URL"
		OS_INFO_KEY_VERSION :: "VERSION"
		OS_INFO_KEY_VERSION_CODENAME :: "VERSION_CODENAME"
		OS_INFO_KEY_VERSION_ID :: "VERSION_ID"
		PDP_ENDIAN :: 3412
		PI :: 3.1415926535897931
		PID_FORMAT :: "i"
		PI_2 :: 1.5707963267948966
		PI_4 :: 0.7853981633974483
		POLLFD_FORMAT :: "%d"
		PRIORITY_DEFAULT :: 0
		PRIORITY_DEFAULT_IDLE :: 200
		PRIORITY_HIGH :: -100
		PRIORITY_HIGH_IDLE :: 100
		PRIORITY_LOW :: 300
		REGEX_DEFAULT :: RegexCompileFlags{}
		REGEX_MATCH_DEFAULT :: RegexMatchFlags{}
		REGEX_MATCH_NEWLINE_ANYCRLF :: RegexMatchFlags{.REGEX_MATCH_NEWLINE_CR, .REGEX_MATCH_NEWLINE_ANY}
		REGEX_MATCH_NEWLINE_CRLF :: RegexMatchFlags{.REGEX_MATCH_NEWLINE_CR, .REGEX_MATCH_NEWLINE_LF}
		REGEX_NEWLINE_ANYCRLF :: transmute(RegexCompileFlags)u32(5242880)
		REGEX_NEWLINE_CRLF :: RegexCompileFlags{.REGEX_NEWLINE_CR, .REGEX_NEWLINE_LF}
		SOURCE_CONTINUE :: TRUE
		SOURCE_REMOVE :: FALSE
		SPAWN_DEFAULT :: SpawnFlags{}
		SQRT2 :: 1.4142135623730951
		STR_DELIMITERS :: "_-|> <."
		TEST_OPTION_ISOLATE_DIRS :: "isolate_dirs"
		TEST_SUBPROCESS_DEFAULT :: TestSubprocessFlags{}
		TEST_TRAP_DEFAULT :: TestTrapFlags{}
		TIME_SPAN_DAY :: 86400000000
		TIME_SPAN_HOUR :: 3600000000
		TIME_SPAN_MILLISECOND :: 1000
		TIME_SPAN_MINUTE :: 60000000
		TIME_SPAN_SECOND :: 1000000
		TRAVERSE_ALL :: TraverseFlags{.TRAVERSE_LEAVES, .TRAVERSE_NON_LEAVES}
		TRAVERSE_MASK :: TraverseFlags{.TRAVERSE_LEAVES, .TRAVERSE_NON_LEAVES}
		TRUE :: true
		UNICHAR_MAX_DECOMPOSITION_LENGTH :: 18
		URI_FLAGS_NONE :: UriFlags{}
		URI_HIDE_NONE :: UriHideFlags{}
		URI_PARAMS_NONE :: UriParamsFlags{}
		URI_RESERVED_CHARS_ALLOWED_IN_PATH :: "!$&'()*+,;=:@/"
		URI_RESERVED_CHARS_ALLOWED_IN_PATH_ELEMENT :: "!$&'()*+,;=:@"
		URI_RESERVED_CHARS_ALLOWED_IN_USERINFO :: "!$&'()*+,;=:"
		URI_RESERVED_CHARS_GENERIC_DELIMITERS :: ":/?#[]@"
		URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS :: "!$&'()*+,;="
		USEC_PER_SEC :: 1000000
		VARIANT_TYPE_ANY :: "*"
		VARIANT_TYPE_ARRAY :: "a*"
		VARIANT_TYPE_BASIC :: "?"
		VARIANT_TYPE_BOOLEAN :: "b"
		VARIANT_TYPE_BYTE :: "y"
		VARIANT_TYPE_BYTESTRING :: "ay"
		VARIANT_TYPE_BYTESTRING_ARRAY :: "aay"
		VARIANT_TYPE_DICTIONARY :: "a{?*}"
		VARIANT_TYPE_DICT_ENTRY :: "{?*}"
		VARIANT_TYPE_DOUBLE :: "d"
		VARIANT_TYPE_HANDLE :: "h"
		VARIANT_TYPE_INT16 :: "n"
		VARIANT_TYPE_INT32 :: "i"
		VARIANT_TYPE_INT64 :: "x"
		VARIANT_TYPE_MAYBE :: "m*"
		VARIANT_TYPE_OBJECT_PATH :: "o"
		VARIANT_TYPE_OBJECT_PATH_ARRAY :: "ao"
		VARIANT_TYPE_SIGNATURE :: "g"
		VARIANT_TYPE_STRING :: "s"
		VARIANT_TYPE_STRING_ARRAY :: "as"
		VARIANT_TYPE_TUPLE :: "r"
		VARIANT_TYPE_UINT16 :: "q"
		VARIANT_TYPE_UINT32 :: "u"
		VARIANT_TYPE_UINT64 :: "t"
		VARIANT_TYPE_UNIT :: "()"
		VARIANT_TYPE_VARDICT :: "a{sv}"
		VARIANT_TYPE_VARIANT :: "v"

	variables
		g_ascii_table: ^uint16
		g_child_watch_funcs: SourceFuncs
		g_idle_funcs: SourceFuncs
		g_io_watch_funcs: SourceFuncs
		g_mem_gc_friendly: boolean
		g_test_config_vars: ^TestConfig
		g_thread_functions_for_glib_use: ThreadFunctions
		g_thread_gettime: #type proc() -> uint64
		g_thread_use_default_impl: boolean
		g_threads_got_initialized: boolean
		g_timeout_funcs: SourceFuncs
		g_unix_fd_source_funcs: SourceFuncs
		g_unix_signal_funcs: SourceFuncs
		g_utf8_skip: cstring
		glib_binary_age: uint_
		glib_interface_age: uint_
		glib_major_version: uint_
		glib_mem_profiler_table: ^MemVTable
		glib_micro_version: uint_
		glib_minor_version: uint_

	procedures
		_g_log_fallback_handler :: proc(log_domain: cstring, log_level: LogLevelFlags, message: cstring, unused_data: pointer) ---
		aligned_alloc :: proc(n_blocks: size, n_block_bytes: size, alignment: size) -> pointer ---
		aligned_alloc0 :: proc(n_blocks: size, n_block_bytes: size, alignment: size) -> pointer ---
		aligned_free :: proc(mem: pointer) ---
		aligned_free_sized :: proc(mem: pointer, alignment: uint, size_p: uint) ---
		allocator_free :: proc(allocator: ^Allocator) ---
		allocator_new :: proc(name: cstring, n_preallocs: uint_) -> ^Allocator ---
		array_append_vals :: proc(array: ^Array, data: constpointer, len: uint_) -> ^Array ---
		array_binary_search :: proc(array: ^Array, target: constpointer, compare_func: CompareFunc, out_match_index: ^uint_) -> boolean ---
		array_copy :: proc(array: ^Array) -> ^Array ---
		array_free :: proc(array: ^Array, free_segment: boolean) -> cstring ---
		array_get_element_size :: proc(array: ^Array) -> uint_ ---
		array_insert_vals :: proc(array: ^Array, index_: uint_, data: constpointer, len: uint_) -> ^Array ---
		array_new :: proc(zero_terminated: boolean, clear_: boolean, element_size: uint_) -> ^Array ---
		array_new_take :: proc(data: pointer, len: size, clear: boolean, element_size: size) -> ^Array ---
		array_new_take_zero_terminated :: proc(data: pointer, clear: boolean, element_size: size) -> ^Array ---
		array_prepend_vals :: proc(array: ^Array, data: constpointer, len: uint_) -> ^Array ---
		array_ref :: proc(array: ^Array) -> ^Array ---
		array_remove_index :: proc(array: ^Array, index_: uint_) -> ^Array ---
		array_remove_index_fast :: proc(array: ^Array, index_: uint_) -> ^Array ---
		array_remove_range :: proc(array: ^Array, index_: uint_, length: uint_) -> ^Array ---
		array_set_clear_func :: proc(array: ^Array, clear_func: DestroyNotify) ---
		array_set_size :: proc(array: ^Array, length: uint_) -> ^Array ---
		array_sized_new :: proc(zero_terminated: boolean, clear_: boolean, element_size: uint_, reserved_size: uint_) -> ^Array ---
		array_sort :: proc(array: ^Array, compare_func: CompareFunc) ---
		array_sort_with_data :: proc(array: ^Array, compare_func: CompareDataFunc, user_data: pointer) ---
		array_steal :: proc(array: ^Array, len: ^size) -> pointer ---
		array_unref :: proc(array: ^Array) ---
		ascii_digit_value :: proc(c: char) -> int_ ---
		ascii_dtostr :: proc(buffer: ^byte, buf_len: int_, d: double) -> cstring ---
		ascii_formatd :: proc(buffer: ^byte, buf_len: int_, format: cstring, d: double) -> cstring ---
		ascii_strcasecmp :: proc(s1: cstring, s2: cstring) -> int_ ---
		ascii_strdown :: proc(str: cstring, len: ssize) -> cstring ---
		ascii_string_to_signed :: proc(str: cstring, base: uint_, min: int64, max: int64, out_num: ^int64, error: ^^Error) -> boolean ---
		ascii_string_to_unsigned :: proc(str: cstring, base: uint_, min: uint64, max: uint64, out_num: ^uint64, error: ^^Error) -> boolean ---
		ascii_strncasecmp :: proc(s1: cstring, s2: cstring, n: size) -> int_ ---
		ascii_strtod :: proc(nptr: cstring, endptr: ^cstring) -> double ---
		ascii_strtoll :: proc(nptr: cstring, endptr: ^cstring, base: uint_) -> int64 ---
		ascii_strtoull :: proc(nptr: cstring, endptr: ^cstring, base: uint_) -> uint64 ---
		ascii_strup :: proc(str: cstring, len: ssize) -> cstring ---
		ascii_tolower :: proc(c: char) -> char ---
		ascii_toupper :: proc(c: char) -> char ---
		ascii_xdigit_value :: proc(c: char) -> int_ ---
		assert_warning :: proc(log_domain: cstring, file: cstring, line: i32, pretty_function: cstring, expression: cstring) ---
		assertion_message :: proc(domain: cstring, file: cstring, line: i32, func: cstring, message: cstring) ---
		assertion_message_cmpint :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: uint64, cmp: cstring, arg2: uint64, numtype: char) ---
		assertion_message_cmpnum :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: [16]byte, cmp: cstring, arg2: [16]byte, numtype: char) ---
		assertion_message_cmpstr :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: cstring, cmp: cstring, arg2: cstring) ---
		assertion_message_cmpstrv :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, arg1: ^cstring, arg2: ^cstring, first_wrong_idx: size) ---
		assertion_message_error :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring, error: ^Error, error_domain: Quark, error_code: i32) ---
		assertion_message_expr :: proc(domain: cstring, file: cstring, line: i32, func: cstring, expr: cstring) ---
		async_queue_length :: proc(queue: ^AsyncQueue) -> int_ ---
		async_queue_length_unlocked :: proc(queue: ^AsyncQueue) -> int_ ---
		async_queue_lock :: proc(queue: ^AsyncQueue) ---
		async_queue_new :: proc() -> ^AsyncQueue ---
		async_queue_new_full :: proc(item_free_func: DestroyNotify) -> ^AsyncQueue ---
		async_queue_pop :: proc(queue: ^AsyncQueue) -> pointer ---
		async_queue_pop_unlocked :: proc(queue: ^AsyncQueue) -> pointer ---
		async_queue_push :: proc(queue: ^AsyncQueue, data: pointer) ---
		async_queue_push_front :: proc(queue: ^AsyncQueue, item: pointer) ---
		async_queue_push_front_unlocked :: proc(queue: ^AsyncQueue, item: pointer) ---
		async_queue_push_sorted :: proc(queue: ^AsyncQueue, data: pointer, func: CompareDataFunc, user_data: pointer) ---
		async_queue_push_sorted_unlocked :: proc(queue: ^AsyncQueue, data: pointer, func: CompareDataFunc, user_data: pointer) ---
		async_queue_push_unlocked :: proc(queue: ^AsyncQueue, data: pointer) ---
		async_queue_ref :: proc(queue: ^AsyncQueue) -> ^AsyncQueue ---
		async_queue_ref_unlocked :: proc(queue: ^AsyncQueue) ---
		async_queue_remove :: proc(queue: ^AsyncQueue, item: pointer) -> boolean ---
		async_queue_remove_unlocked :: proc(queue: ^AsyncQueue, item: pointer) -> boolean ---
		async_queue_sort :: proc(queue: ^AsyncQueue, func: CompareDataFunc, user_data: pointer) ---
		async_queue_sort_unlocked :: proc(queue: ^AsyncQueue, func: CompareDataFunc, user_data: pointer) ---
		async_queue_timed_pop :: proc(queue: ^AsyncQueue, end_time: ^TimeVal) -> pointer ---
		async_queue_timed_pop_unlocked :: proc(queue: ^AsyncQueue, end_time: ^TimeVal) -> pointer ---
		async_queue_timeout_pop :: proc(queue: ^AsyncQueue, timeout: uint64) -> pointer ---
		async_queue_timeout_pop_unlocked :: proc(queue: ^AsyncQueue, timeout: uint64) -> pointer ---
		async_queue_try_pop :: proc(queue: ^AsyncQueue) -> pointer ---
		async_queue_try_pop_unlocked :: proc(queue: ^AsyncQueue) -> pointer ---
		async_queue_unlock :: proc(queue: ^AsyncQueue) ---
		async_queue_unref :: proc(queue: ^AsyncQueue) ---
		async_queue_unref_and_unlock :: proc(queue: ^AsyncQueue) ---
		atexit :: proc(func: VoidFunc) ---
		atomic_int_add :: proc(atomic: ^int_, val: int_) -> int_ ---
		atomic_int_and :: proc(atomic: ^uint_, val: uint_) -> uint_ ---
		atomic_int_compare_and_exchange :: proc(atomic: ^int_, oldval: int_, newval: int_) -> boolean ---
		atomic_int_compare_and_exchange_full :: proc(atomic: ^int_, oldval: int_, newval: int_, preval: ^int_) -> boolean ---
		atomic_int_dec_and_test :: proc(atomic: ^int_) -> boolean ---
		atomic_int_exchange :: proc(atomic: ^int_, newval: int_) -> int_ ---
		atomic_int_exchange_and_add :: proc(atomic: ^int_, val: int_) -> int_ ---
		atomic_int_get :: proc(atomic: ^int_) -> int_ ---
		atomic_int_inc :: proc(atomic: ^int_) ---
		atomic_int_or :: proc(atomic: ^uint_, val: uint_) -> uint_ ---
		atomic_int_set :: proc(atomic: ^int_, newval: int_) ---
		atomic_int_xor :: proc(atomic: ^uint_, val: uint_) -> uint_ ---
		atomic_pointer_add :: proc(atomic: rawptr, val: ssize) -> intptr ---
		atomic_pointer_and :: proc(atomic: rawptr, val: size) -> uintptr_ ---
		atomic_pointer_compare_and_exchange :: proc(atomic: rawptr, oldval: pointer, newval: pointer) -> boolean ---
		atomic_pointer_compare_and_exchange_full :: proc(atomic: rawptr, oldval: pointer, newval: pointer, preval: rawptr) -> boolean ---
		atomic_pointer_exchange :: proc(atomic: rawptr, newval: pointer) -> pointer ---
		atomic_pointer_get :: proc(atomic: rawptr) -> pointer ---
		atomic_pointer_or :: proc(atomic: rawptr, val: size) -> uintptr_ ---
		atomic_pointer_set :: proc(atomic: rawptr, newval: pointer) ---
		atomic_pointer_xor :: proc(atomic: rawptr, val: size) -> uintptr_ ---
		atomic_rc_box_acquire :: proc(mem_block: pointer) -> pointer ---
		atomic_rc_box_alloc :: proc(block_size: size) -> pointer ---
		atomic_rc_box_alloc0 :: proc(block_size: size) -> pointer ---
		atomic_rc_box_dup :: proc(block_size: size, mem_block: constpointer) -> pointer ---
		atomic_rc_box_get_size :: proc(mem_block: pointer) -> size ---
		atomic_rc_box_release :: proc(mem_block: pointer) ---
		atomic_rc_box_release_full :: proc(mem_block: pointer, clear_func: DestroyNotify) ---
		atomic_ref_count_compare :: proc(arc: ^atomicrefcount, val: int_) -> boolean ---
		atomic_ref_count_dec :: proc(arc: ^atomicrefcount) -> boolean ---
		atomic_ref_count_inc :: proc(arc: ^atomicrefcount) ---
		atomic_ref_count_init :: proc(arc: ^atomicrefcount) ---
		base64_decode :: proc(text: cstring, out_len: ^size) -> ^uchar ---
		base64_decode_inplace :: proc(text: cstring, out_len: ^size) -> ^uchar ---
		base64_decode_step :: proc(in_p: cstring, len: size, out: ^uchar, state: ^int_, save: ^uint_) -> size ---
		base64_encode :: proc(data: ^uchar, len: size) -> cstring ---
		base64_encode_close :: proc(break_lines: boolean, out: cstring, state: ^int_, save: ^int_) -> size ---
		base64_encode_step :: proc(in_p: ^uchar, len: size, break_lines: boolean, out: cstring, state: ^int_, save: ^int_) -> size ---
		basename :: proc(file_name: cstring) -> cstring ---
		bit_lock :: proc(address: ^int_, lock_bit: int_) ---
		bit_nth_lsf :: proc(mask: ulong, nth_bit: int_) -> int_ ---
		bit_nth_msf :: proc(mask: ulong, nth_bit: int_) -> int_ ---
		bit_storage :: proc(number: ulong) -> uint_ ---
		bit_trylock :: proc(address: ^int_, lock_bit: int_) -> boolean ---
		bit_unlock :: proc(address: ^int_, lock_bit: int_) ---
		blow_chunks :: proc() ---
		bookmark_file_add_application :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: cstring) ---
		bookmark_file_add_group :: proc(bookmark: ^BookmarkFile, uri: cstring, group: cstring) ---
		bookmark_file_copy :: proc(bookmark: ^BookmarkFile) -> ^BookmarkFile ---
		bookmark_file_error_quark :: proc() -> Quark ---
		bookmark_file_error_quark :: proc() -> Quark ---
		bookmark_file_free :: proc(bookmark: ^BookmarkFile) ---
		bookmark_file_get_added :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> libc.time_t ---
		bookmark_file_get_added_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> ^DateTime ---
		bookmark_file_get_app_info :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: ^cstring, count: ^uint_, stamp: ^libc.time_t, error: ^^Error) -> boolean ---
		bookmark_file_get_application_info :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: ^cstring, count: ^u32, stamp: ^^DateTime, error: ^^Error) -> boolean ---
		bookmark_file_get_applications :: proc(bookmark: ^BookmarkFile, uri: cstring, length: ^size, error: ^^Error) -> ^cstring ---
		bookmark_file_get_description :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> cstring ---
		bookmark_file_get_groups :: proc(bookmark: ^BookmarkFile, uri: cstring, length: ^size, error: ^^Error) -> ^cstring ---
		bookmark_file_get_icon :: proc(bookmark: ^BookmarkFile, uri: cstring, href: ^cstring, mime_type: ^cstring, error: ^^Error) -> boolean ---
		bookmark_file_get_is_private :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> boolean ---
		bookmark_file_get_mime_type :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> cstring ---
		bookmark_file_get_modified :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> libc.time_t ---
		bookmark_file_get_modified_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> ^DateTime ---
		bookmark_file_get_size :: proc(bookmark: ^BookmarkFile) -> int_ ---
		bookmark_file_get_title :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> cstring ---
		bookmark_file_get_uris :: proc(bookmark: ^BookmarkFile, length: ^size) -> ^cstring ---
		bookmark_file_get_visited :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> libc.time_t ---
		bookmark_file_get_visited_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> ^DateTime ---
		bookmark_file_has_application :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, error: ^^Error) -> boolean ---
		bookmark_file_has_group :: proc(bookmark: ^BookmarkFile, uri: cstring, group: cstring, error: ^^Error) -> boolean ---
		bookmark_file_has_item :: proc(bookmark: ^BookmarkFile, uri: cstring) -> boolean ---
		bookmark_file_load_from_data :: proc(bookmark: ^BookmarkFile, data: ^byte, length: size, error: ^^Error) -> boolean ---
		bookmark_file_load_from_data_dirs :: proc(bookmark: ^BookmarkFile, file: cstring, full_path: ^cstring, error: ^^Error) -> boolean ---
		bookmark_file_load_from_file :: proc(bookmark: ^BookmarkFile, filename: cstring, error: ^^Error) -> boolean ---
		bookmark_file_move_item :: proc(bookmark: ^BookmarkFile, old_uri: cstring, new_uri: cstring, error: ^^Error) -> boolean ---
		bookmark_file_new :: proc() -> ^BookmarkFile ---
		bookmark_file_remove_application :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, error: ^^Error) -> boolean ---
		bookmark_file_remove_group :: proc(bookmark: ^BookmarkFile, uri: cstring, group: cstring, error: ^^Error) -> boolean ---
		bookmark_file_remove_item :: proc(bookmark: ^BookmarkFile, uri: cstring, error: ^^Error) -> boolean ---
		bookmark_file_set_added :: proc(bookmark: ^BookmarkFile, uri: cstring, added: libc.time_t) ---
		bookmark_file_set_added_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, added: ^DateTime) ---
		bookmark_file_set_app_info :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: cstring, count: int_, stamp: libc.time_t, error: ^^Error) -> boolean ---
		bookmark_file_set_application_info :: proc(bookmark: ^BookmarkFile, uri: cstring, name: cstring, exec: cstring, count: i32, stamp: ^DateTime, error: ^^Error) -> boolean ---
		bookmark_file_set_description :: proc(bookmark: ^BookmarkFile, uri: cstring, description: cstring) ---
		bookmark_file_set_groups :: proc(bookmark: ^BookmarkFile, uri: cstring, groups: [^]cstring, length: size) ---
		bookmark_file_set_icon :: proc(bookmark: ^BookmarkFile, uri: cstring, href: cstring, mime_type: cstring) ---
		bookmark_file_set_is_private :: proc(bookmark: ^BookmarkFile, uri: cstring, is_private: boolean) ---
		bookmark_file_set_mime_type :: proc(bookmark: ^BookmarkFile, uri: cstring, mime_type: cstring) ---
		bookmark_file_set_modified :: proc(bookmark: ^BookmarkFile, uri: cstring, modified: libc.time_t) ---
		bookmark_file_set_modified_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, modified: ^DateTime) ---
		bookmark_file_set_title :: proc(bookmark: ^BookmarkFile, uri: cstring, title: cstring) ---
		bookmark_file_set_visited :: proc(bookmark: ^BookmarkFile, uri: cstring, visited: libc.time_t) ---
		bookmark_file_set_visited_date_time :: proc(bookmark: ^BookmarkFile, uri: cstring, visited: ^DateTime) ---
		bookmark_file_to_data :: proc(bookmark: ^BookmarkFile, length: ^size, error: ^^Error) -> cstring ---
		bookmark_file_to_file :: proc(bookmark: ^BookmarkFile, filename: cstring, error: ^^Error) -> boolean ---
		build_filename :: proc(first_element: cstring, #c_vararg var_args: ..any) -> cstring ---
		build_filenamev :: proc(args: [^]cstring) -> cstring ---
		build_path :: proc(separator: cstring, first_element: cstring, #c_vararg var_args: ..any) -> cstring ---
		build_pathv :: proc(separator: cstring, args: [^]cstring) -> cstring ---
		byte_array_append :: proc(array: ^ByteArray, data: ^uint8, len: uint_) -> ^ByteArray ---
		byte_array_free :: proc(array: ^ByteArray, free_segment: boolean) -> ^uint8 ---
		byte_array_free_to_bytes :: proc(array: ^ByteArray) -> ^Bytes ---
		byte_array_new :: proc() -> ^ByteArray ---
		byte_array_new_take :: proc(data: ^uint8, len: size) -> ^ByteArray ---
		byte_array_prepend :: proc(array: ^ByteArray, data: ^uint8, len: uint_) -> ^ByteArray ---
		byte_array_ref :: proc(array: ^ByteArray) -> ^ByteArray ---
		byte_array_remove_index :: proc(array: ^ByteArray, index_: uint_) -> ^ByteArray ---
		byte_array_remove_index_fast :: proc(array: ^ByteArray, index_: uint_) -> ^ByteArray ---
		byte_array_remove_range :: proc(array: ^ByteArray, index_: uint_, length: uint_) -> ^ByteArray ---
		byte_array_set_size :: proc(array: ^ByteArray, length: uint_) -> ^ByteArray ---
		byte_array_sized_new :: proc(reserved_size: uint_) -> ^ByteArray ---
		byte_array_sort :: proc(array: ^ByteArray, compare_func: CompareFunc) ---
		byte_array_sort_with_data :: proc(array: ^ByteArray, compare_func: CompareDataFunc, user_data: pointer) ---
		byte_array_steal :: proc(array: ^ByteArray, len: ^size) -> ^uint8 ---
		byte_array_unref :: proc(array: ^ByteArray) ---
		bytes_compare :: proc(bytes1: constpointer, bytes2: constpointer) -> int_ ---
		bytes_equal :: proc(bytes1: constpointer, bytes2: constpointer) -> boolean ---
		bytes_get_data :: proc(bytes: ^Bytes, size_p: ^size) -> constpointer ---
		bytes_get_region :: proc(bytes: ^Bytes, element_size: size, offset_p: size, n_elements: size) -> constpointer ---
		bytes_get_size :: proc(bytes: ^Bytes) -> size ---
		bytes_hash :: proc(bytes: constpointer) -> uint_ ---
		bytes_new :: proc(data: constpointer, size_p: size) -> ^Bytes ---
		bytes_new_from_bytes :: proc(bytes: ^Bytes, offset_p: size, length: size) -> ^Bytes ---
		bytes_new_static :: proc(data: constpointer, size_p: size) -> ^Bytes ---
		bytes_new_take :: proc(data: pointer, size_p: size) -> ^Bytes ---
		bytes_new_with_free_func :: proc(data: constpointer, size_p: size, free_func: DestroyNotify, user_data: pointer) -> ^Bytes ---
		bytes_ref :: proc(bytes: ^Bytes) -> ^Bytes ---
		bytes_unref :: proc(bytes: ^Bytes) ---
		bytes_unref_to_array :: proc(bytes: ^Bytes) -> ^ByteArray ---
		bytes_unref_to_data :: proc(bytes: ^Bytes, size_p: ^size) -> pointer ---
		cache_destroy :: proc(cache: ^Cache) ---
		cache_insert :: proc(cache: ^Cache, key: pointer) -> pointer ---
		cache_key_foreach :: proc(cache: ^Cache, func: HFunc, user_data: pointer) ---
		cache_new :: proc(value_new_func: CacheNewFunc, value_destroy_func: CacheDestroyFunc, key_dup_func: CacheDupFunc, key_destroy_func: CacheDestroyFunc, hash_key_func: HashFunc, hash_value_func: HashFunc, key_equal_func: EqualFunc) -> ^Cache ---
		cache_remove :: proc(cache: ^Cache, value: constpointer) ---
		cache_value_foreach :: proc(cache: ^Cache, func: HFunc, user_data: pointer) ---
		canonicalize_filename :: proc(filename: cstring, relative_to: cstring) -> cstring ---
		check_version :: proc(required_major: uint_, required_minor: uint_, required_micro: uint_) -> cstring ---
		checksum_copy :: proc(checksum: ^Checksum) -> ^Checksum ---
		checksum_free :: proc(checksum: ^Checksum) ---
		checksum_get_digest :: proc(checksum: ^Checksum, buffer: ^uint8, digest_len: ^size) ---
		checksum_get_string :: proc(checksum: ^Checksum) -> cstring ---
		checksum_new :: proc(checksum_type: ChecksumType) -> ^Checksum ---
		checksum_reset :: proc(checksum: ^Checksum) ---
		checksum_type_get_length :: proc(checksum_type: ChecksumType) -> ssize ---
		checksum_update :: proc(checksum: ^Checksum, data: ^uchar, length: ssize) ---
		child_watch_add :: proc(pid: Pid, function: ChildWatchFunc, data: pointer) -> uint_ ---
		child_watch_add_full :: proc(priority: int_, pid: Pid, function: ChildWatchFunc, data: pointer, notify: DestroyNotify) -> uint_ ---
		child_watch_source_new :: proc(pid: Pid) -> ^Source ---
		clear_error :: proc(err: ^^Error) ---
		clear_handle_id :: proc(tag_ptr: ^uint_, clear_func: ClearHandleFunc) ---
		clear_list :: proc(list_ptr: ^^List, destroy: DestroyNotify) ---
		clear_pointer :: proc(pp: ^pointer, destroy: DestroyNotify) ---
		clear_slist :: proc(slist_ptr: ^^SList, destroy: DestroyNotify) ---
		completion_add_items :: proc(cmp: ^Completion, items: ^List) ---
		completion_clear_items :: proc(cmp: ^Completion) ---
		completion_complete :: proc(cmp: ^Completion, prefix: cstring, new_prefix: ^cstring) -> ^List ---
		completion_complete_utf8 :: proc(cmp: ^Completion, prefix: cstring, new_prefix: ^cstring) -> ^List ---
		completion_free :: proc(cmp: ^Completion) ---
		completion_new :: proc(func: CompletionFunc) -> ^Completion ---
		completion_remove_items :: proc(cmp: ^Completion, items: ^List) ---
		completion_set_compare :: proc(cmp: ^Completion, strncmp_func: CompletionStrncmpFunc) ---
		compute_checksum_for_bytes :: proc(checksum_type: ChecksumType, data: ^Bytes) -> cstring ---
		compute_checksum_for_data :: proc(checksum_type: ChecksumType, data: ^uchar, length: size) -> cstring ---
		compute_checksum_for_string :: proc(checksum_type: ChecksumType, str: cstring, length: ssize) -> cstring ---
		compute_hmac_for_bytes :: proc(digest_type: ChecksumType, key: ^Bytes, data: ^Bytes) -> cstring ---
		compute_hmac_for_data :: proc(digest_type: ChecksumType, key: ^uchar, key_len: size, data: ^uchar, length: size) -> cstring ---
		compute_hmac_for_string :: proc(digest_type: ChecksumType, key: ^uchar, key_len: size, str: cstring, length: ssize) -> cstring ---
		cond_broadcast :: proc(cond: ^Cond) ---
		cond_clear :: proc(cond: ^Cond) ---
		cond_free :: proc(cond: ^Cond) ---
		cond_init :: proc(cond: ^Cond) ---
		cond_new :: proc() -> ^Cond ---
		cond_signal :: proc(cond: ^Cond) ---
		cond_timed_wait :: proc(cond: ^Cond, mutex: ^Mutex, abs_time: ^TimeVal) -> boolean ---
		cond_wait :: proc(cond: ^Cond, mutex: ^Mutex) ---
		cond_wait_until :: proc(cond: ^Cond, mutex: ^Mutex, end_time: int64) -> boolean ---
		convert :: proc(str: cstring, len: ssize, to_codeset: cstring, from_codeset: cstring, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---
		convert_error_quark :: proc() -> Quark ---
		convert_error_quark :: proc() -> Quark ---
		convert_with_fallback :: proc(str: cstring, len: ssize, to_codeset: cstring, from_codeset: cstring, fallback: cstring, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---
		convert_with_iconv :: proc(str: cstring, len: ssize, converter: IConv, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---
		datalist_clear :: proc(datalist: ^^Data) ---
		datalist_foreach :: proc(datalist: ^^Data, func: DataForeachFunc, user_data: pointer) ---
		datalist_get_data :: proc(datalist: ^^Data, key: cstring) -> pointer ---
		datalist_get_flags :: proc(datalist: ^^Data) -> uint_ ---
		datalist_id_dup_data :: proc(datalist: ^^Data, key_id: Quark, dup_func: DuplicateFunc, user_data: pointer) -> pointer ---
		datalist_id_get_data :: proc(datalist: ^^Data, key_id: Quark) -> pointer ---
		datalist_id_remove_multiple :: proc(datalist: ^^Data, keys: [^]Quark, n_keys: size) ---
		datalist_id_remove_no_notify :: proc(datalist: ^^Data, key_id: Quark) -> pointer ---
		datalist_id_replace_data :: proc(datalist: ^^Data, key_id: Quark, oldval: pointer, newval: pointer, destroy: DestroyNotify, old_destroy: ^DestroyNotify) -> boolean ---
		datalist_id_set_data_full :: proc(datalist: ^^Data, key_id: Quark, data: pointer, destroy_func: DestroyNotify) ---
		datalist_init :: proc(datalist: ^^Data) ---
		datalist_set_flags :: proc(datalist: ^^Data, flags: uint_) ---
		datalist_unset_flags :: proc(datalist: ^^Data, flags: uint_) ---
		dataset_destroy :: proc(dataset_location: constpointer) ---
		dataset_foreach :: proc(dataset_location: constpointer, func: DataForeachFunc, user_data: pointer) ---
		dataset_id_get_data :: proc(dataset_location: constpointer, key_id: Quark) -> pointer ---
		dataset_id_remove_no_notify :: proc(dataset_location: constpointer, key_id: Quark) -> pointer ---
		dataset_id_set_data_full :: proc(dataset_location: constpointer, key_id: Quark, data: pointer, destroy_func: DestroyNotify) ---
		date_add_days :: proc(date: ^Date, n_days: uint_) ---
		date_add_months :: proc(date: ^Date, n_months: uint_) ---
		date_add_years :: proc(date: ^Date, n_years: uint_) ---
		date_clamp :: proc(date: ^Date, min_date: ^Date, max_date: ^Date) ---
		date_clear :: proc(date: ^Date, n_dates: uint_) ---
		date_compare :: proc(lhs: ^Date, rhs: ^Date) -> int_ ---
		date_copy :: proc(date: ^Date) -> ^Date ---
		date_days_between :: proc(date1: ^Date, date2: ^Date) -> int_ ---
		date_free :: proc(date: ^Date) ---
		date_get_day :: proc(date: ^Date) -> DateDay ---
		date_get_day :: proc(date: ^Date) -> DateDay ---
		date_get_day_of_year :: proc(date: ^Date) -> uint_ ---
		date_get_day_of_year :: proc(date: ^Date) -> uint_ ---
		date_get_days_in_month :: proc(month: DateMonth, year: DateYear) -> uint8 ---
		date_get_days_in_month :: proc(month: DateMonth, year: DateYear) -> uint8 ---
		date_get_iso8601_week_of_year :: proc(date: ^Date) -> uint_ ---
		date_get_julian :: proc(date: ^Date) -> uint32 ---
		date_get_julian :: proc(date: ^Date) -> uint32 ---
		date_get_monday_week_of_year :: proc(date: ^Date) -> uint_ ---
		date_get_monday_week_of_year :: proc(date: ^Date) -> uint_ ---
		date_get_monday_weeks_in_year :: proc(year: DateYear) -> uint8 ---
		date_get_monday_weeks_in_year :: proc(year: DateYear) -> uint8 ---
		date_get_month :: proc(date: ^Date) -> DateMonth ---
		date_get_month :: proc(date: ^Date) -> DateMonth ---
		date_get_sunday_week_of_year :: proc(date: ^Date) -> uint_ ---
		date_get_sunday_week_of_year :: proc(date: ^Date) -> uint_ ---
		date_get_sunday_weeks_in_year :: proc(year: DateYear) -> uint8 ---
		date_get_sunday_weeks_in_year :: proc(year: DateYear) -> uint8 ---
		date_get_weekday :: proc(date: ^Date) -> DateWeekday ---
		date_get_weekday :: proc(date: ^Date) -> DateWeekday ---
		date_get_year :: proc(date: ^Date) -> DateYear ---
		date_get_year :: proc(date: ^Date) -> DateYear ---
		date_is_first_of_month :: proc(date: ^Date) -> boolean ---
		date_is_last_of_month :: proc(date: ^Date) -> boolean ---
		date_is_leap_year :: proc(year: DateYear) -> boolean ---
		date_new :: proc() -> ^Date ---
		date_new_dmy :: proc(day: DateDay, month: DateMonth, year: DateYear) -> ^Date ---
		date_new_julian :: proc(julian_day: uint32) -> ^Date ---
		date_order :: proc(date1: ^Date, date2: ^Date) ---
		date_set_day :: proc(date: ^Date, day: DateDay) ---
		date_set_dmy :: proc(date: ^Date, day: DateDay, month: DateMonth, y: DateYear) ---
		date_set_julian :: proc(date: ^Date, julian_date: uint32) ---
		date_set_month :: proc(date: ^Date, month: DateMonth) ---
		date_set_parse :: proc(date: ^Date, str: cstring) ---
		date_set_time :: proc(date: ^Date, time_: Time) ---
		date_set_time_t :: proc(date: ^Date, timet: libc.time_t) ---
		date_set_time_val :: proc(date: ^Date, timeval: ^TimeVal) ---
		date_set_year :: proc(date: ^Date, year: DateYear) ---
		date_strftime :: proc(s: cstring, slen: size, format: cstring, date: ^Date) -> size ---
		date_subtract_days :: proc(date: ^Date, n_days: uint_) ---
		date_subtract_months :: proc(date: ^Date, n_months: uint_) ---
		date_subtract_years :: proc(date: ^Date, n_years: uint_) ---
		date_time_add :: proc(datetime: ^DateTime, timespan: TimeSpan) -> ^DateTime ---
		date_time_add_days :: proc(datetime: ^DateTime, days: int_) -> ^DateTime ---
		date_time_add_full :: proc(datetime: ^DateTime, years: int_, months: int_, days: int_, hours: int_, minutes: int_, seconds: double) -> ^DateTime ---
		date_time_add_hours :: proc(datetime: ^DateTime, hours: int_) -> ^DateTime ---
		date_time_add_minutes :: proc(datetime: ^DateTime, minutes: int_) -> ^DateTime ---
		date_time_add_months :: proc(datetime: ^DateTime, months: int_) -> ^DateTime ---
		date_time_add_seconds :: proc(datetime: ^DateTime, seconds: double) -> ^DateTime ---
		date_time_add_weeks :: proc(datetime: ^DateTime, weeks: int_) -> ^DateTime ---
		date_time_add_years :: proc(datetime: ^DateTime, years: int_) -> ^DateTime ---
		date_time_compare :: proc(dt1: constpointer, dt2: constpointer) -> int_ ---
		date_time_difference :: proc(end: ^DateTime, begin: ^DateTime) -> TimeSpan ---
		date_time_equal :: proc(dt1: constpointer, dt2: constpointer) -> boolean ---
		date_time_format :: proc(datetime: ^DateTime, format: cstring) -> cstring ---
		date_time_format_iso8601 :: proc(datetime: ^DateTime) -> cstring ---
		date_time_get_day_of_month :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_day_of_week :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_day_of_year :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_hour :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_microsecond :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_minute :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_month :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_second :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_seconds :: proc(datetime: ^DateTime) -> double ---
		date_time_get_timezone :: proc(datetime: ^DateTime) -> ^TimeZone ---
		date_time_get_timezone_abbreviation :: proc(datetime: ^DateTime) -> cstring ---
		date_time_get_utc_offset :: proc(datetime: ^DateTime) -> TimeSpan ---
		date_time_get_week_numbering_year :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_week_of_year :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_year :: proc(datetime: ^DateTime) -> int_ ---
		date_time_get_ymd :: proc(datetime: ^DateTime, year: ^int_, month: ^int_, day: ^int_) ---
		date_time_hash :: proc(datetime: constpointer) -> uint_ ---
		date_time_is_daylight_savings :: proc(datetime: ^DateTime) -> boolean ---
		date_time_new :: proc(tz: ^TimeZone, year: int_, month: int_, day: int_, hour: int_, minute: int_, seconds: double) -> ^DateTime ---
		date_time_new_from_iso8601 :: proc(text: cstring, default_tz: ^TimeZone) -> ^DateTime ---
		date_time_new_from_timeval_local :: proc(tv: ^TimeVal) -> ^DateTime ---
		date_time_new_from_timeval_utc :: proc(tv: ^TimeVal) -> ^DateTime ---
		date_time_new_from_unix_local :: proc(t: int64) -> ^DateTime ---
		date_time_new_from_unix_local_usec :: proc(usecs: int64) -> ^DateTime ---
		date_time_new_from_unix_utc :: proc(t: int64) -> ^DateTime ---
		date_time_new_from_unix_utc_usec :: proc(usecs: int64) -> ^DateTime ---
		date_time_new_local :: proc(year: int_, month: int_, day: int_, hour: int_, minute: int_, seconds: double) -> ^DateTime ---
		date_time_new_now :: proc(tz: ^TimeZone) -> ^DateTime ---
		date_time_new_now_local :: proc() -> ^DateTime ---
		date_time_new_now_utc :: proc() -> ^DateTime ---
		date_time_new_utc :: proc(year: int_, month: int_, day: int_, hour: int_, minute: int_, seconds: double) -> ^DateTime ---
		date_time_ref :: proc(datetime: ^DateTime) -> ^DateTime ---
		date_time_to_local :: proc(datetime: ^DateTime) -> ^DateTime ---
		date_time_to_timeval :: proc(datetime: ^DateTime, tv: ^TimeVal) -> boolean ---
		date_time_to_timezone :: proc(datetime: ^DateTime, tz: ^TimeZone) -> ^DateTime ---
		date_time_to_unix :: proc(datetime: ^DateTime) -> int64 ---
		date_time_to_unix_usec :: proc(datetime: ^DateTime) -> int64 ---
		date_time_to_utc :: proc(datetime: ^DateTime) -> ^DateTime ---
		date_time_unref :: proc(datetime: ^DateTime) ---
		date_to_struct_tm :: proc(date: ^Date, tm: ^libc.tm) ---
		date_valid :: proc(date: ^Date) -> boolean ---
		date_valid_day :: proc(day: DateDay) -> boolean ---
		date_valid_dmy :: proc(day: DateDay, month: DateMonth, year: DateYear) -> boolean ---
		date_valid_julian :: proc(julian_date: uint32) -> boolean ---
		date_valid_month :: proc(month: DateMonth) -> boolean ---
		date_valid_weekday :: proc(weekday: DateWeekday) -> boolean ---
		date_valid_year :: proc(year: DateYear) -> boolean ---
		dcgettext :: proc(domain: cstring, msgid: cstring, category: int_) -> cstring ---
		dgettext :: proc(domain: cstring, msgid: cstring) -> cstring ---
		dir_close :: proc(dir: ^Dir) ---
		dir_make_tmp :: proc(tmpl: cstring, error: ^^Error) -> cstring ---
		dir_open :: proc(path: cstring, flags: uint_, error: ^^Error) -> ^Dir ---
		dir_read_name :: proc(dir: ^Dir) -> cstring ---
		dir_ref :: proc(dir: ^Dir) -> ^Dir ---
		dir_rewind :: proc(dir: ^Dir) ---
		dir_unref :: proc(dir: ^Dir) ---
		direct_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---
		direct_hash :: proc(v: constpointer) -> uint_ ---
		dngettext :: proc(domain: cstring, msgid: cstring, msgid_plural: cstring, n: ulong) -> cstring ---
		double_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---
		double_hash :: proc(v: constpointer) -> uint_ ---
		dpgettext :: proc(domain: cstring, msgctxtid: cstring, msgidoffset: size) -> cstring ---
		dpgettext2 :: proc(domain: cstring, context_p: cstring, msgid: cstring) -> cstring ---
		environ_getenv :: proc(envp: ^cstring, variable: cstring) -> cstring ---
		environ_setenv :: proc(envp: ^cstring, variable: cstring, value: cstring, overwrite: boolean) -> ^cstring ---
		environ_unsetenv :: proc(envp: ^cstring, variable: cstring) -> ^cstring ---
		error_copy :: proc(error: ^Error) -> ^Error ---
		error_domain_register :: proc(error_type_name: cstring, error_type_private_size: size, error_type_init: ErrorInitFunc, error_type_copy: ErrorCopyFunc, error_type_clear: ErrorClearFunc) -> Quark ---
		error_domain_register_static :: proc(error_type_name: cstring, error_type_private_size: size, error_type_init: ErrorInitFunc, error_type_copy: ErrorCopyFunc, error_type_clear: ErrorClearFunc) -> Quark ---
		error_free :: proc(error: ^Error) ---
		error_matches :: proc(error: ^Error, domain: Quark, code: int_) -> boolean ---
		error_new :: proc(domain: Quark, code: int_, format: cstring, #c_vararg var_args: ..any) -> ^Error ---
		error_new_literal :: proc(domain: Quark, code: int_, message: cstring) -> ^Error ---
		file_error_from_errno :: proc(err_no: int_) -> FileError ---
		file_error_quark :: proc() -> Quark ---
		file_error_quark :: proc() -> Quark ---
		file_get_contents :: proc(filename: cstring, contents: ^cstring, length: ^size, error: ^^Error) -> boolean ---
		file_open_tmp :: proc(tmpl: cstring, name_used: ^cstring, error: ^^Error) -> int_ ---
		file_read_link :: proc(filename: cstring, error: ^^Error) -> cstring ---
		file_set_contents :: proc(filename: cstring, contents: ^byte, length: ssize, error: ^^Error) -> boolean ---
		file_set_contents_full :: proc(filename: cstring, contents: ^byte, length: ssize, flags: FileSetContentsFlags, mode: i32, error: ^^Error) -> boolean ---
		file_test :: proc(filename: cstring, test: FileTest) -> boolean ---
		filename_display_basename :: proc(filename: cstring) -> cstring ---
		filename_display_name :: proc(filename: cstring) -> cstring ---
		filename_from_uri :: proc(uri: cstring, hostname: ^cstring, error: ^^Error) -> cstring ---
		filename_from_utf8 :: proc(utf8string: cstring, len: ssize, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---
		filename_to_uri :: proc(filename: cstring, hostname: cstring, error: ^^Error) -> cstring ---
		filename_to_utf8 :: proc(opsysstring: cstring, len: ssize, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---
		find_program_in_path :: proc(program: cstring) -> cstring ---
		format_size :: proc(size_p: uint64) -> cstring ---
		format_size_for_display :: proc(size_p: offset) -> cstring ---
		format_size_full :: proc(size_p: uint64, flags: FormatSizeFlags) -> cstring ---
		free :: proc(mem: pointer) ---
		free_sized :: proc(mem: pointer, size_p: uint) ---
		get_application_name :: proc() -> cstring ---
		get_charset :: proc(charset: ^cstring) -> boolean ---
		get_codeset :: proc() -> cstring ---
		get_console_charset :: proc(charset: ^cstring) -> boolean ---
		get_current_dir :: proc() -> cstring ---
		get_current_time :: proc(result: ^TimeVal) ---
		get_environ :: proc() -> ^cstring ---
		get_filename_charsets :: proc(filename_charsets: ^[^]cstring) -> boolean ---
		get_home_dir :: proc() -> cstring ---
		get_host_name :: proc() -> cstring ---
		get_language_names :: proc() -> ^cstring ---
		get_language_names_with_category :: proc(category_name: cstring) -> ^cstring ---
		get_locale_variants :: proc(locale: cstring) -> ^cstring ---
		get_monotonic_time :: proc() -> int64 ---
		get_num_processors :: proc() -> uint_ ---
		get_os_info :: proc(key_name: cstring) -> cstring ---
		get_prgname :: proc() -> cstring ---
		get_real_name :: proc() -> cstring ---
		get_real_time :: proc() -> int64 ---
		get_system_config_dirs :: proc() -> ^cstring ---
		get_system_data_dirs :: proc() -> ^cstring ---
		get_tmp_dir :: proc() -> cstring ---
		get_user_cache_dir :: proc() -> cstring ---
		get_user_config_dir :: proc() -> cstring ---
		get_user_data_dir :: proc() -> cstring ---
		get_user_name :: proc() -> cstring ---
		get_user_runtime_dir :: proc() -> cstring ---
		get_user_special_dir :: proc(directory: UserDirectory) -> cstring ---
		get_user_state_dir :: proc() -> cstring ---
		getenv :: proc(variable: cstring) -> cstring ---
		hash_table_add :: proc(hash_table: ^HashTable, key: pointer) -> boolean ---
		hash_table_contains :: proc(hash_table: ^HashTable, key: constpointer) -> boolean ---
		hash_table_destroy :: proc(hash_table: ^HashTable) ---
		hash_table_find :: proc(hash_table: ^HashTable, predicate: HRFunc, user_data: pointer) -> pointer ---
		hash_table_foreach :: proc(hash_table: ^HashTable, func: HFunc, user_data: pointer) ---
		hash_table_foreach_remove :: proc(hash_table: ^HashTable, func: HRFunc, user_data: pointer) -> uint_ ---
		hash_table_foreach_steal :: proc(hash_table: ^HashTable, func: HRFunc, user_data: pointer) -> uint_ ---
		hash_table_get_keys :: proc(hash_table: ^HashTable) -> ^List ---
		hash_table_get_keys_as_array :: proc(hash_table: ^HashTable, length: ^uint_) -> ^pointer ---
		hash_table_get_keys_as_ptr_array :: proc(hash_table: ^HashTable) -> ^PtrArray ---
		hash_table_get_values :: proc(hash_table: ^HashTable) -> ^List ---
		hash_table_get_values_as_ptr_array :: proc(hash_table: ^HashTable) -> ^PtrArray ---
		hash_table_insert :: proc(hash_table: ^HashTable, key: pointer, value: pointer) -> boolean ---
		hash_table_iter_get_hash_table :: proc(iter: ^HashTableIter) -> ^HashTable ---
		hash_table_iter_init :: proc(iter: ^HashTableIter, hash_table: ^HashTable) ---
		hash_table_iter_next :: proc(iter: ^HashTableIter, key: ^pointer, value: ^pointer) -> boolean ---
		hash_table_iter_remove :: proc(iter: ^HashTableIter) ---
		hash_table_iter_replace :: proc(iter: ^HashTableIter, value: pointer) ---
		hash_table_iter_steal :: proc(iter: ^HashTableIter) ---
		hash_table_lookup :: proc(hash_table: ^HashTable, key: constpointer) -> pointer ---
		hash_table_lookup_extended :: proc(hash_table: ^HashTable, lookup_key: constpointer, orig_key: ^pointer, value: ^pointer) -> boolean ---
		hash_table_new :: proc(hash_func: HashFunc, key_equal_func: EqualFunc) -> ^HashTable ---
		hash_table_new_full :: proc(hash_func: HashFunc, key_equal_func: EqualFunc, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) -> ^HashTable ---
		hash_table_new_similar :: proc(other_hash_table: ^HashTable) -> ^HashTable ---
		hash_table_ref :: proc(hash_table: ^HashTable) -> ^HashTable ---
		hash_table_remove :: proc(hash_table: ^HashTable, key: constpointer) -> boolean ---
		hash_table_remove_all :: proc(hash_table: ^HashTable) ---
		hash_table_replace :: proc(hash_table: ^HashTable, key: pointer, value: pointer) -> boolean ---
		hash_table_size :: proc(hash_table: ^HashTable) -> uint_ ---
		hash_table_steal :: proc(hash_table: ^HashTable, key: constpointer) -> boolean ---
		hash_table_steal_all :: proc(hash_table: ^HashTable) ---
		hash_table_steal_all_keys :: proc(hash_table: ^HashTable) -> ^PtrArray ---
		hash_table_steal_all_values :: proc(hash_table: ^HashTable) -> ^PtrArray ---
		hash_table_steal_extended :: proc(hash_table: ^HashTable, lookup_key: constpointer, stolen_key: ^pointer, stolen_value: ^pointer) -> boolean ---
		hash_table_unref :: proc(hash_table: ^HashTable) ---
		hmac_copy :: proc(hmac: ^Hmac) -> ^Hmac ---
		hmac_get_digest :: proc(hmac: ^Hmac, buffer: ^uint8, digest_len: ^size) ---
		hmac_get_string :: proc(hmac: ^Hmac) -> cstring ---
		hmac_new :: proc(digest_type: ChecksumType, key: ^uchar, key_len: size) -> ^Hmac ---
		hmac_ref :: proc(hmac: ^Hmac) -> ^Hmac ---
		hmac_unref :: proc(hmac: ^Hmac) ---
		hmac_update :: proc(hmac: ^Hmac, data: ^uchar, length: ssize) ---
		hook_alloc :: proc(hook_list: ^HookList) -> ^Hook ---
		hook_compare_ids :: proc(new_hook: ^Hook, sibling: ^Hook) -> int_ ---
		hook_destroy :: proc(hook_list: ^HookList, hook_id: ulong) -> boolean ---
		hook_destroy_link :: proc(hook_list: ^HookList, hook: ^Hook) ---
		hook_find :: proc(hook_list: ^HookList, need_valids: boolean, func: HookFindFunc, data: pointer) -> ^Hook ---
		hook_find_data :: proc(hook_list: ^HookList, need_valids: boolean, data: pointer) -> ^Hook ---
		hook_find_func :: proc(hook_list: ^HookList, need_valids: boolean, func: pointer) -> ^Hook ---
		hook_find_func_data :: proc(hook_list: ^HookList, need_valids: boolean, func: pointer, data: pointer) -> ^Hook ---
		hook_first_valid :: proc(hook_list: ^HookList, may_be_in_call: boolean) -> ^Hook ---
		hook_free :: proc(hook_list: ^HookList, hook: ^Hook) ---
		hook_get :: proc(hook_list: ^HookList, hook_id: ulong) -> ^Hook ---
		hook_insert_before :: proc(hook_list: ^HookList, sibling: ^Hook, hook: ^Hook) ---
		hook_insert_sorted :: proc(hook_list: ^HookList, hook: ^Hook, func: HookCompareFunc) ---
		hook_list_clear :: proc(hook_list: ^HookList) ---
		hook_list_init :: proc(hook_list: ^HookList, hook_size: uint_) ---
		hook_list_invoke :: proc(hook_list: ^HookList, may_recurse: boolean) ---
		hook_list_invoke_check :: proc(hook_list: ^HookList, may_recurse: boolean) ---
		hook_list_marshal :: proc(hook_list: ^HookList, may_recurse: boolean, marshaller: HookMarshaller, marshal_data: pointer) ---
		hook_list_marshal_check :: proc(hook_list: ^HookList, may_recurse: boolean, marshaller: HookCheckMarshaller, marshal_data: pointer) ---
		hook_next_valid :: proc(hook_list: ^HookList, hook: ^Hook, may_be_in_call: boolean) -> ^Hook ---
		hook_prepend :: proc(hook_list: ^HookList, hook: ^Hook) ---
		hook_ref :: proc(hook_list: ^HookList, hook: ^Hook) -> ^Hook ---
		hook_unref :: proc(hook_list: ^HookList, hook: ^Hook) ---
		hostname_is_ascii_encoded :: proc(hostname: cstring) -> boolean ---
		hostname_is_ip_address :: proc(hostname: cstring) -> boolean ---
		hostname_is_non_ascii :: proc(hostname: cstring) -> boolean ---
		hostname_to_ascii :: proc(hostname: cstring) -> cstring ---
		hostname_to_unicode :: proc(hostname: cstring) -> cstring ---
		iconv :: proc(converter: IConv, inbuf: ^^byte, inbytes_left: ^size, outbuf: ^^byte, outbytes_left: ^size) -> size ---
		iconv_close :: proc(converter: IConv) -> int_ ---
		iconv_open :: proc(to_codeset: cstring, from_codeset: cstring) -> IConv ---
		idle_add :: proc(function: SourceFunc, data: pointer) -> uint_ ---
		idle_add_full :: proc(priority: int_, function: SourceFunc, data: pointer, notify: DestroyNotify) -> uint_ ---
		idle_add_once :: proc(function: SourceOnceFunc, data: pointer) -> uint_ ---
		idle_remove_by_data :: proc(data: pointer) -> boolean ---
		idle_source_new :: proc() -> ^Source ---
		int64_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---
		int64_hash :: proc(v: constpointer) -> uint_ ---
		int_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---
		int_hash :: proc(v: constpointer) -> uint_ ---
		intern_static_string :: proc(string_p: cstring) -> cstring ---
		intern_string :: proc(string_p: cstring) -> cstring ---
		io_add_watch :: proc(channel: ^IOChannel, condition: IOCondition, func: IOFunc, user_data: pointer) -> uint_ ---
		io_add_watch_full :: proc(channel: ^IOChannel, priority: int_, condition: IOCondition, func: IOFunc, user_data: pointer, notify: DestroyNotify) -> uint_ ---
		io_channel_close :: proc(channel: ^IOChannel) ---
		io_channel_error_from_errno :: proc(en: int_) -> IOChannelError ---
		io_channel_error_quark :: proc() -> Quark ---
		io_channel_error_quark :: proc() -> Quark ---
		io_channel_flush :: proc(channel: ^IOChannel, error: ^^Error) -> IOStatus ---
		io_channel_get_buffer_condition :: proc(channel: ^IOChannel) -> IOCondition ---
		io_channel_get_buffer_size :: proc(channel: ^IOChannel) -> size ---
		io_channel_get_buffered :: proc(channel: ^IOChannel) -> boolean ---
		io_channel_get_close_on_unref :: proc(channel: ^IOChannel) -> boolean ---
		io_channel_get_encoding :: proc(channel: ^IOChannel) -> cstring ---
		io_channel_get_flags :: proc(channel: ^IOChannel) -> IOFlags ---
		io_channel_get_line_term :: proc(channel: ^IOChannel, length: ^int_) -> cstring ---
		io_channel_init :: proc(channel: ^IOChannel) ---
		io_channel_new_file :: proc(filename: cstring, mode: cstring, error: ^^Error) -> ^IOChannel ---
		io_channel_read :: proc(channel: ^IOChannel, buf: ^byte, count: size, bytes_read: ^size) -> IOError ---
		io_channel_read_chars :: proc(channel: ^IOChannel, buf: ^byte, count: size, bytes_read: ^size, error: ^^Error) -> IOStatus ---
		io_channel_read_line :: proc(channel: ^IOChannel, str_return: ^cstring, length: ^size, terminator_pos: ^size, error: ^^Error) -> IOStatus ---
		io_channel_read_line_string :: proc(channel: ^IOChannel, buffer: ^String, terminator_pos: ^size, error: ^^Error) -> IOStatus ---
		io_channel_read_to_end :: proc(channel: ^IOChannel, str_return: ^cstring, length: ^size, error: ^^Error) -> IOStatus ---
		io_channel_read_unichar :: proc(channel: ^IOChannel, thechar: ^unichar, error: ^^Error) -> IOStatus ---
		io_channel_ref :: proc(channel: ^IOChannel) -> ^IOChannel ---
		io_channel_seek :: proc(channel: ^IOChannel, offset_p: int64, type: SeekType) -> IOError ---
		io_channel_seek_position :: proc(channel: ^IOChannel, offset_p: int64, type: SeekType, error: ^^Error) -> IOStatus ---
		io_channel_set_buffer_size :: proc(channel: ^IOChannel, size_p: size) ---
		io_channel_set_buffered :: proc(channel: ^IOChannel, buffered: boolean) ---
		io_channel_set_close_on_unref :: proc(channel: ^IOChannel, do_close: boolean) ---
		io_channel_set_encoding :: proc(channel: ^IOChannel, encoding: cstring, error: ^^Error) -> IOStatus ---
		io_channel_set_flags :: proc(channel: ^IOChannel, flags: IOFlags, error: ^^Error) -> IOStatus ---
		io_channel_set_line_term :: proc(channel: ^IOChannel, line_term: cstring, length: int_) ---
		io_channel_shutdown :: proc(channel: ^IOChannel, flush: boolean, err: ^^Error) -> IOStatus ---
		io_channel_unix_get_fd :: proc(channel: ^IOChannel) -> int_ ---
		io_channel_unix_new :: proc(fd: i32) -> ^IOChannel ---
		io_channel_unref :: proc(channel: ^IOChannel) ---
		io_channel_write :: proc(channel: ^IOChannel, buf: ^byte, count: size, bytes_written: ^size) -> IOError ---
		io_channel_write_chars :: proc(channel: ^IOChannel, buf: ^byte, count: ssize, bytes_written: ^size, error: ^^Error) -> IOStatus ---
		io_channel_write_unichar :: proc(channel: ^IOChannel, thechar: unichar, error: ^^Error) -> IOStatus ---
		io_create_watch :: proc(channel: ^IOChannel, condition: IOCondition) -> ^Source ---
		key_file_error_quark :: proc() -> Quark ---
		key_file_error_quark :: proc() -> Quark ---
		key_file_free :: proc(key_file: ^KeyFile) ---
		key_file_get_boolean :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> boolean ---
		key_file_get_boolean_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, length: ^size, error: ^^Error) -> ^boolean ---
		key_file_get_comment :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> cstring ---
		key_file_get_double :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> double ---
		key_file_get_double_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, length: ^size, error: ^^Error) -> ^double ---
		key_file_get_groups :: proc(key_file: ^KeyFile, length: ^size) -> ^cstring ---
		key_file_get_int64 :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> int64 ---
		key_file_get_integer :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> int_ ---
		key_file_get_integer_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, length: ^size, error: ^^Error) -> ^int_ ---
		key_file_get_keys :: proc(key_file: ^KeyFile, group_name: cstring, length: ^size, error: ^^Error) -> ^cstring ---
		key_file_get_locale_for_key :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring) -> cstring ---
		key_file_get_locale_string :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring, error: ^^Error) -> cstring ---
		key_file_get_locale_string_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring, length: ^size, error: ^^Error) -> ^cstring ---
		key_file_get_start_group :: proc(key_file: ^KeyFile) -> cstring ---
		key_file_get_string :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> cstring ---
		key_file_get_string_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, length: ^size, error: ^^Error) -> ^cstring ---
		key_file_get_uint64 :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> uint64 ---
		key_file_get_value :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> cstring ---
		key_file_has_group :: proc(key_file: ^KeyFile, group_name: cstring) -> boolean ---
		key_file_has_key :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> boolean ---
		key_file_load_from_bytes :: proc(key_file: ^KeyFile, bytes: ^Bytes, flags: KeyFileFlags, error: ^^Error) -> boolean ---
		key_file_load_from_data :: proc(key_file: ^KeyFile, data: ^byte, length: size, flags: KeyFileFlags, error: ^^Error) -> boolean ---
		key_file_load_from_data_dirs :: proc(key_file: ^KeyFile, file: cstring, full_path: ^cstring, flags: KeyFileFlags, error: ^^Error) -> boolean ---
		key_file_load_from_dirs :: proc(key_file: ^KeyFile, file: cstring, search_dirs: [^]cstring, full_path: ^cstring, flags: KeyFileFlags, error: ^^Error) -> boolean ---
		key_file_load_from_file :: proc(key_file: ^KeyFile, file: cstring, flags: KeyFileFlags, error: ^^Error) -> boolean ---
		key_file_new :: proc() -> ^KeyFile ---
		key_file_ref :: proc(key_file: ^KeyFile) -> ^KeyFile ---
		key_file_remove_comment :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> boolean ---
		key_file_remove_group :: proc(key_file: ^KeyFile, group_name: cstring, error: ^^Error) -> boolean ---
		key_file_remove_key :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, error: ^^Error) -> boolean ---
		key_file_save_to_file :: proc(key_file: ^KeyFile, filename: cstring, error: ^^Error) -> boolean ---
		key_file_set_boolean :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: boolean) ---
		key_file_set_boolean_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, list: [^]boolean, length: size) ---
		key_file_set_comment :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, comment: cstring, error: ^^Error) -> boolean ---
		key_file_set_double :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: double) ---
		key_file_set_double_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, list: [^]double, length: size) ---
		key_file_set_int64 :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: int64) ---
		key_file_set_integer :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: int_) ---
		key_file_set_integer_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, list: [^]int_, length: size) ---
		key_file_set_list_separator :: proc(key_file: ^KeyFile, separator: char) ---
		key_file_set_locale_string :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring, string_p: cstring) ---
		key_file_set_locale_string_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, locale: cstring, list: [^]cstring, length: size) ---
		key_file_set_string :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, string_p: cstring) ---
		key_file_set_string_list :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, list: [^]cstring, length: size) ---
		key_file_set_uint64 :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: uint64) ---
		key_file_set_value :: proc(key_file: ^KeyFile, group_name: cstring, key: cstring, value: cstring) ---
		key_file_to_data :: proc(key_file: ^KeyFile, length: ^size, error: ^^Error) -> cstring ---
		key_file_unref :: proc(key_file: ^KeyFile) ---
		list_alloc :: proc() -> ^List ---
		list_append :: proc(list: ^List, data: pointer) -> ^List ---
		list_concat :: proc(list1: ^List, list2: ^List) -> ^List ---
		list_copy :: proc(list: ^List) -> ^List ---
		list_copy_deep :: proc(list: ^List, func: CopyFunc, user_data: pointer) -> ^List ---
		list_delete_link :: proc(list: ^List, link_: ^List) -> ^List ---
		list_find :: proc(list: ^List, data: constpointer) -> ^List ---
		list_find_custom :: proc(list: ^List, data: constpointer, func: CompareFunc) -> ^List ---
		list_first :: proc(list: ^List) -> ^List ---
		list_foreach :: proc(list: ^List, func: Func, user_data: pointer) ---
		list_free :: proc(list: ^List) ---
		list_free_1 :: proc(list: ^List) ---
		list_free_1 :: proc(list: ^List) ---
		list_free_full :: proc(list: ^List, free_func: DestroyNotify) ---
		list_index :: proc(list: ^List, data: constpointer) -> int_ ---
		list_insert :: proc(list: ^List, data: pointer, position: int_) -> ^List ---
		list_insert_before :: proc(list: ^List, sibling: ^List, data: pointer) -> ^List ---
		list_insert_before_link :: proc(list: ^List, sibling: ^List, link_: ^List) -> ^List ---
		list_insert_sorted :: proc(list: ^List, data: pointer, func: CompareFunc) -> ^List ---
		list_insert_sorted_with_data :: proc(list: ^List, data: pointer, func: CompareDataFunc, user_data: pointer) -> ^List ---
		list_last :: proc(list: ^List) -> ^List ---
		list_length :: proc(list: ^List) -> uint_ ---
		list_nth :: proc(list: ^List, n: uint_) -> ^List ---
		list_nth_data :: proc(list: ^List, n: uint_) -> pointer ---
		list_nth_prev :: proc(list: ^List, n: uint_) -> ^List ---
		list_pop_allocator :: proc() ---
		list_position :: proc(list: ^List, llink: ^List) -> int_ ---
		list_prepend :: proc(list: ^List, data: pointer) -> ^List ---
		list_push_allocator :: proc(allocator: ^Allocator) ---
		list_remove :: proc(list: ^List, data: constpointer) -> ^List ---
		list_remove_all :: proc(list: ^List, data: constpointer) -> ^List ---
		list_remove_link :: proc(list: ^List, llink: ^List) -> ^List ---
		list_reverse :: proc(list: ^List) -> ^List ---
		list_sort :: proc(list: ^List, compare_func: CompareFunc) -> ^List ---
		list_sort_with_data :: proc(list: ^List, compare_func: CompareDataFunc, user_data: pointer) -> ^List ---
		listenv :: proc() -> ^cstring ---
		locale_from_utf8 :: proc(utf8string: cstring, len: ssize, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---
		locale_to_utf8 :: proc(opsysstring: cstring, len: ssize, bytes_read: ^size, bytes_written: ^size, error: ^^Error) -> cstring ---
		log :: proc(log_domain: cstring, log_level: LogLevelFlags, format: cstring, #c_vararg var_args: ..any) ---
		log_default_handler :: proc(log_domain: cstring, log_level: LogLevelFlags, message: cstring, unused_data: pointer) ---
		log_get_debug_enabled :: proc() -> boolean ---
		log_remove_handler :: proc(log_domain: cstring, handler_id: uint_) ---
		log_set_always_fatal :: proc(fatal_mask: LogLevelFlags) -> LogLevelFlags ---
		log_set_debug_enabled :: proc(enabled: boolean) ---
		log_set_default_handler :: proc(log_func: LogFunc, user_data: pointer) -> LogFunc ---
		log_set_fatal_mask :: proc(log_domain: cstring, fatal_mask: LogLevelFlags) -> LogLevelFlags ---
		log_set_handler :: proc(log_domain: cstring, log_levels: LogLevelFlags, log_func: LogFunc, user_data: pointer) -> uint_ ---
		log_set_handler_full :: proc(log_domain: cstring, log_levels: LogLevelFlags, log_func: LogFunc, user_data: pointer, destroy: DestroyNotify) -> uint_ ---
		log_set_writer_func :: proc(func: LogWriterFunc, user_data: pointer, user_data_free: DestroyNotify) ---
		log_structured :: proc(log_domain: cstring, log_level: LogLevelFlags, #c_vararg var_args: ..any) ---
		log_structured_array :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size) ---
		log_structured_standard :: proc(log_domain: cstring, log_level: LogLevelFlags, file: cstring, line: cstring, func: cstring, message_format: cstring, #c_vararg var_args: ..any) ---
		log_variant :: proc(log_domain: cstring, log_level: LogLevelFlags, fields: ^Variant) ---
		log_writer_default :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput ---
		log_writer_default_set_debug_domains :: proc(domains: [^]cstring) ---
		log_writer_default_set_use_stderr :: proc(use_stderr: boolean) ---
		log_writer_default_would_drop :: proc(log_level: LogLevelFlags, log_domain: cstring) -> boolean ---
		log_writer_format_fields :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, use_color: boolean) -> cstring ---
		log_writer_is_journald :: proc(output_fd: int_) -> boolean ---
		log_writer_journald :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput ---
		log_writer_standard_streams :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput ---
		log_writer_supports_color :: proc(output_fd: int_) -> boolean ---
		log_writer_syslog :: proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput ---
		main_context_acquire :: proc(context_p: ^MainContext) -> boolean ---
		main_context_add_poll :: proc(context_p: ^MainContext, fd: ^PollFD, priority: int_) ---
		main_context_check :: proc(context_p: ^MainContext, max_priority: int_, fds: [^]PollFD, n_fds: int_) -> boolean ---
		main_context_default :: proc() -> ^MainContext ---
		main_context_dispatch :: proc(context_p: ^MainContext) ---
		main_context_find_source_by_funcs_user_data :: proc(context_p: ^MainContext, funcs: ^SourceFuncs, user_data: pointer) -> ^Source ---
		main_context_find_source_by_id :: proc(context_p: ^MainContext, source_id: uint_) -> ^Source ---
		main_context_find_source_by_user_data :: proc(context_p: ^MainContext, user_data: pointer) -> ^Source ---
		main_context_get_poll_func :: proc(context_p: ^MainContext) -> PollFunc ---
		main_context_get_thread_default :: proc() -> ^MainContext ---
		main_context_invoke :: proc(context_p: ^MainContext, function: SourceFunc, data: pointer) ---
		main_context_invoke_full :: proc(context_p: ^MainContext, priority: int_, function: SourceFunc, data: pointer, notify: DestroyNotify) ---
		main_context_is_owner :: proc(context_p: ^MainContext) -> boolean ---
		main_context_iteration :: proc(context_p: ^MainContext, may_block: boolean) -> boolean ---
		main_context_new :: proc() -> ^MainContext ---
		main_context_new_with_flags :: proc(flags: MainContextFlags) -> ^MainContext ---
		main_context_pending :: proc(context_p: ^MainContext) -> boolean ---
		main_context_pop_thread_default :: proc(context_p: ^MainContext) ---
		main_context_prepare :: proc(context_p: ^MainContext, priority: ^int_) -> boolean ---
		main_context_push_thread_default :: proc(context_p: ^MainContext) ---
		main_context_query :: proc(context_p: ^MainContext, max_priority: int_, timeout_: ^int_, fds: [^]PollFD, n_fds: int_) -> int_ ---
		main_context_ref :: proc(context_p: ^MainContext) -> ^MainContext ---
		main_context_ref_thread_default :: proc() -> ^MainContext ---
		main_context_release :: proc(context_p: ^MainContext) ---
		main_context_remove_poll :: proc(context_p: ^MainContext, fd: ^PollFD) ---
		main_context_set_poll_func :: proc(context_p: ^MainContext, func: PollFunc) ---
		main_context_unref :: proc(context_p: ^MainContext) ---
		main_context_wait :: proc(context_p: ^MainContext, cond: ^Cond, mutex: ^Mutex) -> boolean ---
		main_context_wakeup :: proc(context_p: ^MainContext) ---
		main_current_source :: proc() -> ^Source ---
		main_depth :: proc() -> int_ ---
		main_loop_get_context :: proc(loop: ^MainLoop) -> ^MainContext ---
		main_loop_is_running :: proc(loop: ^MainLoop) -> boolean ---
		main_loop_new :: proc(context_p: ^MainContext, is_running: boolean) -> ^MainLoop ---
		main_loop_quit :: proc(loop: ^MainLoop) ---
		main_loop_ref :: proc(loop: ^MainLoop) -> ^MainLoop ---
		main_loop_run :: proc(loop: ^MainLoop) ---
		main_loop_unref :: proc(loop: ^MainLoop) ---
		malloc :: proc(n_bytes: size) -> pointer ---
		malloc0 :: proc(n_bytes: size) -> pointer ---
		malloc0_n :: proc(n_blocks: size, n_block_bytes: size) -> pointer ---
		malloc_n :: proc(n_blocks: size, n_block_bytes: size) -> pointer ---
		mapped_file_free :: proc(file: ^MappedFile) ---
		mapped_file_get_bytes :: proc(file: ^MappedFile) -> ^Bytes ---
		mapped_file_get_contents :: proc(file: ^MappedFile) -> cstring ---
		mapped_file_get_length :: proc(file: ^MappedFile) -> size ---
		mapped_file_new :: proc(filename: cstring, writable: boolean, error: ^^Error) -> ^MappedFile ---
		mapped_file_new_from_fd :: proc(fd: int_, writable: boolean, error: ^^Error) -> ^MappedFile ---
		mapped_file_ref :: proc(file: ^MappedFile) -> ^MappedFile ---
		mapped_file_unref :: proc(file: ^MappedFile) ---
		markup_collect_attributes :: proc(element_name: cstring, attribute_names: [^]cstring, attribute_values: [^]cstring, error: ^^Error, first_type: MarkupCollectType, first_attr: cstring, #c_vararg var_args: ..any) -> boolean ---
		markup_error_quark :: proc() -> Quark ---
		markup_error_quark :: proc() -> Quark ---
		markup_escape_text :: proc(text: cstring, length: ssize) -> cstring ---
		markup_parse_context_end_parse :: proc(context_p: ^MarkupParseContext, error: ^^Error) -> boolean ---
		markup_parse_context_free :: proc(context_p: ^MarkupParseContext) ---
		markup_parse_context_get_element :: proc(context_p: ^MarkupParseContext) -> cstring ---
		markup_parse_context_get_element_stack :: proc(context_p: ^MarkupParseContext) -> ^SList ---
		markup_parse_context_get_position :: proc(context_p: ^MarkupParseContext, line_number: ^int_, char_number: ^int_) ---
		markup_parse_context_get_user_data :: proc(context_p: ^MarkupParseContext) -> pointer ---
		markup_parse_context_new :: proc(parser: ^MarkupParser, flags: MarkupParseFlags, user_data: pointer, user_data_dnotify: DestroyNotify) -> ^MarkupParseContext ---
		markup_parse_context_parse :: proc(context_p: ^MarkupParseContext, text: cstring, text_len: ssize, error: ^^Error) -> boolean ---
		markup_parse_context_pop :: proc(context_p: ^MarkupParseContext) -> pointer ---
		markup_parse_context_push :: proc(context_p: ^MarkupParseContext, parser: ^MarkupParser, user_data: pointer) ---
		markup_parse_context_ref :: proc(context_p: ^MarkupParseContext) -> ^MarkupParseContext ---
		markup_parse_context_unref :: proc(context_p: ^MarkupParseContext) ---
		markup_printf_escaped :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---
		match_info_expand_references :: proc(match_info: ^MatchInfo, string_to_expand: cstring, error: ^^Error) -> cstring ---
		match_info_fetch :: proc(match_info: ^MatchInfo, match_num: int_) -> cstring ---
		match_info_fetch_all :: proc(match_info: ^MatchInfo) -> ^cstring ---
		match_info_fetch_named :: proc(match_info: ^MatchInfo, name: cstring) -> cstring ---
		match_info_fetch_named_pos :: proc(match_info: ^MatchInfo, name: cstring, start_pos: ^int_, end_pos: ^int_) -> boolean ---
		match_info_fetch_pos :: proc(match_info: ^MatchInfo, match_num: int_, start_pos: ^int_, end_pos: ^int_) -> boolean ---
		match_info_free :: proc(match_info: ^MatchInfo) ---
		match_info_get_match_count :: proc(match_info: ^MatchInfo) -> int_ ---
		match_info_get_regex :: proc(match_info: ^MatchInfo) -> ^Regex ---
		match_info_get_string :: proc(match_info: ^MatchInfo) -> cstring ---
		match_info_is_partial_match :: proc(match_info: ^MatchInfo) -> boolean ---
		match_info_matches :: proc(match_info: ^MatchInfo) -> boolean ---
		match_info_next :: proc(match_info: ^MatchInfo, error: ^^Error) -> boolean ---
		match_info_ref :: proc(match_info: ^MatchInfo) -> ^MatchInfo ---
		match_info_unref :: proc(match_info: ^MatchInfo) ---
		mem_chunk_alloc :: proc(mem_chunk: ^MemChunk) -> pointer ---
		mem_chunk_alloc0 :: proc(mem_chunk: ^MemChunk) -> pointer ---
		mem_chunk_clean :: proc(mem_chunk: ^MemChunk) ---
		mem_chunk_destroy :: proc(mem_chunk: ^MemChunk) ---
		mem_chunk_free :: proc(mem_chunk: ^MemChunk, mem: pointer) ---
		mem_chunk_info :: proc() ---
		mem_chunk_new :: proc(name: cstring, atom_size: int_, area_size: size, type: int_) -> ^MemChunk ---
		mem_chunk_print :: proc(mem_chunk: ^MemChunk) ---
		mem_chunk_reset :: proc(mem_chunk: ^MemChunk) ---
		mem_is_system_malloc :: proc() -> boolean ---
		mem_profile :: proc() ---
		mem_set_vtable :: proc(vtable: ^MemVTable) ---
		memdup :: proc(mem: constpointer, byte_size: uint_) -> pointer ---
		memdup2 :: proc(mem: constpointer, byte_size: size) -> pointer ---
		mkdir_with_parents :: proc(pathname: cstring, mode: int_) -> int_ ---
		mkdtemp :: proc(tmpl: cstring) -> cstring ---
		mkdtemp_full :: proc(tmpl: cstring, mode: int_) -> cstring ---
		mkstemp :: proc(tmpl: cstring) -> int_ ---
		mkstemp_full :: proc(tmpl: cstring, flags: int_, mode: int_) -> int_ ---
		mutex_clear :: proc(mutex: ^Mutex) ---
		mutex_free :: proc(mutex: ^Mutex) ---
		mutex_init :: proc(mutex: ^Mutex) ---
		mutex_lock :: proc(mutex: ^Mutex) ---
		mutex_new :: proc() -> ^Mutex ---
		mutex_trylock :: proc(mutex: ^Mutex) -> boolean ---
		mutex_unlock :: proc(mutex: ^Mutex) ---
		node_child_index :: proc(node: ^Node, data: pointer) -> int_ ---
		node_child_position :: proc(node: ^Node, child: ^Node) -> int_ ---
		node_children_foreach :: proc(node: ^Node, flags: TraverseFlags, func: NodeForeachFunc, data: pointer) ---
		node_copy :: proc(node: ^Node) -> ^Node ---
		node_copy_deep :: proc(node: ^Node, copy_func: CopyFunc, data: pointer) -> ^Node ---
		node_depth :: proc(node: ^Node) -> uint_ ---
		node_destroy :: proc(root: ^Node) ---
		node_find :: proc(root: ^Node, order: TraverseType, flags: TraverseFlags, data: pointer) -> ^Node ---
		node_find_child :: proc(node: ^Node, flags: TraverseFlags, data: pointer) -> ^Node ---
		node_first_sibling :: proc(node: ^Node) -> ^Node ---
		node_get_root :: proc(node: ^Node) -> ^Node ---
		node_insert :: proc(parent: ^Node, position: int_, node: ^Node) -> ^Node ---
		node_insert_after :: proc(parent: ^Node, sibling: ^Node, node: ^Node) -> ^Node ---
		node_insert_before :: proc(parent: ^Node, sibling: ^Node, node: ^Node) -> ^Node ---
		node_is_ancestor :: proc(node: ^Node, descendant: ^Node) -> boolean ---
		node_last_child :: proc(node: ^Node) -> ^Node ---
		node_last_sibling :: proc(node: ^Node) -> ^Node ---
		node_max_height :: proc(root: ^Node) -> uint_ ---
		node_n_children :: proc(node: ^Node) -> uint_ ---
		node_n_nodes :: proc(root: ^Node, flags: TraverseFlags) -> uint_ ---
		node_new :: proc(data: pointer) -> ^Node ---
		node_nth_child :: proc(node: ^Node, n: uint_) -> ^Node ---
		node_pop_allocator :: proc() ---
		node_prepend :: proc(parent: ^Node, node: ^Node) -> ^Node ---
		node_push_allocator :: proc(allocator: ^Allocator) ---
		node_reverse_children :: proc(node: ^Node) ---
		node_traverse :: proc(root: ^Node, order: TraverseType, flags: TraverseFlags, max_depth: int_, func: NodeTraverseFunc, data: pointer) ---
		node_unlink :: proc(node: ^Node) ---
		nullify_pointer :: proc(nullify_location: ^pointer) ---
		number_parser_error_quark :: proc() -> Quark ---
		number_parser_error_quark :: proc() -> Quark ---
		on_error_query :: proc(prg_name: cstring) ---
		on_error_stack_trace :: proc(prg_name: cstring) ---
		once_impl :: proc(once: ^Once, func: ThreadFunc, arg: pointer) -> pointer ---
		once_init_enter :: proc(location: rawptr) -> boolean ---
		once_init_enter_impl :: proc(location: ^size) -> boolean ---
		once_init_enter_pointer :: proc(location: rawptr) -> boolean ---
		once_init_leave :: proc(location: rawptr, result: size) ---
		once_init_leave_pointer :: proc(location: rawptr, result: pointer) ---
		option_context_add_group :: proc(context_p: ^OptionContext, group: ^OptionGroup) ---
		option_context_add_main_entries :: proc(context_p: ^OptionContext, entries: [^]OptionEntry, translation_domain: cstring) ---
		option_context_free :: proc(context_p: ^OptionContext) ---
		option_context_get_description :: proc(context_p: ^OptionContext) -> cstring ---
		option_context_get_help :: proc(context_p: ^OptionContext, main_help: boolean, group: ^OptionGroup) -> cstring ---
		option_context_get_help_enabled :: proc(context_p: ^OptionContext) -> boolean ---
		option_context_get_ignore_unknown_options :: proc(context_p: ^OptionContext) -> boolean ---
		option_context_get_main_group :: proc(context_p: ^OptionContext) -> ^OptionGroup ---
		option_context_get_strict_posix :: proc(context_p: ^OptionContext) -> boolean ---
		option_context_get_summary :: proc(context_p: ^OptionContext) -> cstring ---
		option_context_new :: proc(parameter_string: cstring) -> ^OptionContext ---
		option_context_parse :: proc(context_p: ^OptionContext, argc: ^int_, argv: ^^cstring, error: ^^Error) -> boolean ---
		option_context_parse_strv :: proc(context_p: ^OptionContext, arguments: ^[^]cstring, error: ^^Error) -> boolean ---
		option_context_set_description :: proc(context_p: ^OptionContext, description: cstring) ---
		option_context_set_help_enabled :: proc(context_p: ^OptionContext, help_enabled: boolean) ---
		option_context_set_ignore_unknown_options :: proc(context_p: ^OptionContext, ignore_unknown: boolean) ---
		option_context_set_main_group :: proc(context_p: ^OptionContext, group: ^OptionGroup) ---
		option_context_set_strict_posix :: proc(context_p: ^OptionContext, strict_posix: boolean) ---
		option_context_set_summary :: proc(context_p: ^OptionContext, summary: cstring) ---
		option_context_set_translate_func :: proc(context_p: ^OptionContext, func: TranslateFunc, data: pointer, destroy_notify: DestroyNotify) ---
		option_context_set_translation_domain :: proc(context_p: ^OptionContext, domain: cstring) ---
		option_error_quark :: proc() -> Quark ---
		option_error_quark :: proc() -> Quark ---
		option_group_add_entries :: proc(group: ^OptionGroup, entries: [^]OptionEntry) ---
		option_group_free :: proc(group: ^OptionGroup) ---
		option_group_new :: proc(name: cstring, description: cstring, help_description: cstring, user_data: pointer, destroy: DestroyNotify) -> ^OptionGroup ---
		option_group_ref :: proc(group: ^OptionGroup) -> ^OptionGroup ---
		option_group_set_error_hook :: proc(group: ^OptionGroup, error_func: OptionErrorFunc) ---
		option_group_set_parse_hooks :: proc(group: ^OptionGroup, pre_parse_func: OptionParseFunc, post_parse_func: OptionParseFunc) ---
		option_group_set_translate_func :: proc(group: ^OptionGroup, func: TranslateFunc, data: pointer, destroy_notify: DestroyNotify) ---
		option_group_set_translation_domain :: proc(group: ^OptionGroup, domain: cstring) ---
		option_group_unref :: proc(group: ^OptionGroup) ---
		parse_debug_string :: proc(string_p: cstring, keys: [^]DebugKey, nkeys: uint_) -> uint_ ---
		path_buf_clear :: proc(buf: ^PathBuf) ---
		path_buf_clear_to_path :: proc(buf: ^PathBuf) -> cstring ---
		path_buf_copy :: proc(buf: ^PathBuf) -> ^PathBuf ---
		path_buf_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---
		path_buf_free :: proc(buf: ^PathBuf) ---
		path_buf_free_to_path :: proc(buf: ^PathBuf) -> cstring ---
		path_buf_init :: proc(buf: ^PathBuf) -> ^PathBuf ---
		path_buf_init_from_path :: proc(buf: ^PathBuf, path: cstring) -> ^PathBuf ---
		path_buf_new :: proc() -> ^PathBuf ---
		path_buf_new_from_path :: proc(path: cstring) -> ^PathBuf ---
		path_buf_pop :: proc(buf: ^PathBuf) -> boolean ---
		path_buf_push :: proc(buf: ^PathBuf, path: cstring) -> ^PathBuf ---
		path_buf_set_extension :: proc(buf: ^PathBuf, extension: cstring) -> boolean ---
		path_buf_set_filename :: proc(buf: ^PathBuf, file_name: cstring) -> boolean ---
		path_buf_to_path :: proc(buf: ^PathBuf) -> cstring ---
		path_get_basename :: proc(file_name: cstring) -> cstring ---
		path_get_dirname :: proc(file_name: cstring) -> cstring ---
		path_get_dirname :: proc(file_name: cstring) -> cstring ---
		path_is_absolute :: proc(file_name: cstring) -> boolean ---
		path_skip_root :: proc(file_name: cstring) -> cstring ---
		pattern_match :: proc(pspec: ^PatternSpec, string_length: uint_, string_p: cstring, string_reversed: cstring) -> boolean ---
		pattern_match_simple :: proc(pattern: cstring, string_p: cstring) -> boolean ---
		pattern_match_string :: proc(pspec: ^PatternSpec, string_p: cstring) -> boolean ---
		pattern_spec_copy :: proc(pspec: ^PatternSpec) -> ^PatternSpec ---
		pattern_spec_equal :: proc(pspec1: ^PatternSpec, pspec2: ^PatternSpec) -> boolean ---
		pattern_spec_free :: proc(pspec: ^PatternSpec) ---
		pattern_spec_match :: proc(pspec: ^PatternSpec, string_length: size, string_p: cstring, string_reversed: cstring) -> boolean ---
		pattern_spec_match_string :: proc(pspec: ^PatternSpec, string_p: cstring) -> boolean ---
		pattern_spec_new :: proc(pattern: cstring) -> ^PatternSpec ---
		pointer_bit_lock :: proc(address: rawptr, lock_bit: int_) ---
		pointer_bit_lock_and_get :: proc(address: pointer, lock_bit: uint_, out_ptr: ^uintptr_) ---
		pointer_bit_lock_mask_ptr :: proc(ptr: pointer, lock_bit: uint_, set: boolean, preserve_mask: uintptr_, preserve_ptr: pointer) -> pointer ---
		pointer_bit_trylock :: proc(address: rawptr, lock_bit: int_) -> boolean ---
		pointer_bit_unlock :: proc(address: rawptr, lock_bit: int_) ---
		pointer_bit_unlock_and_set :: proc(address: rawptr, lock_bit: uint_, ptr: pointer, preserve_mask: uintptr_) ---
		poll :: proc(fds: [^]PollFD, nfds: uint_, timeout: int_) -> int_ ---
		prefix_error :: proc(err: ^^Error, format: cstring, #c_vararg var_args: ..any) ---
		prefix_error_literal :: proc(err: ^^Error, prefix: cstring) ---
		print :: proc(format: cstring, #c_vararg var_args: ..any) ---
		printerr :: proc(format: cstring, #c_vararg var_args: ..any) ---
		private_get :: proc(key: ^Private) -> pointer ---
		private_new :: proc(notify: DestroyNotify) -> ^Private ---
		private_replace :: proc(key: ^Private, value: pointer) ---
		private_set :: proc(key: ^Private, value: pointer) ---
		propagate_error :: proc(dest: ^^Error, src: ^Error) ---
		propagate_prefixed_error :: proc(dest: ^^Error, src: ^Error, format: cstring, #c_vararg var_args: ..any) ---
		ptr_array_add :: proc(array: ^PtrArray, data: pointer) ---
		ptr_array_copy :: proc(array: ^PtrArray, func: CopyFunc, user_data: pointer) -> ^PtrArray ---
		ptr_array_extend :: proc(array_to_extend: ^PtrArray, array: ^PtrArray, func: CopyFunc, user_data: pointer) ---
		ptr_array_extend_and_steal :: proc(array_to_extend: ^PtrArray, array: ^PtrArray) ---
		ptr_array_find :: proc(haystack: ^PtrArray, needle: constpointer, index_: ^uint_) -> boolean ---
		ptr_array_find_with_equal_func :: proc(haystack: ^PtrArray, needle: constpointer, equal_func: EqualFunc, index_: ^uint_) -> boolean ---
		ptr_array_foreach :: proc(array: ^PtrArray, func: Func, user_data: pointer) ---
		ptr_array_free :: proc(array: ^PtrArray, free_seg: boolean) -> ^pointer ---
		ptr_array_insert :: proc(array: ^PtrArray, index_: int_, data: pointer) ---
		ptr_array_is_null_terminated :: proc(array: ^PtrArray) -> boolean ---
		ptr_array_new :: proc() -> ^PtrArray ---
		ptr_array_new_from_array :: proc(data: ^pointer, len: size, copy_func: CopyFunc, copy_func_user_data: pointer, element_free_func: DestroyNotify) -> ^PtrArray ---
		ptr_array_new_from_null_terminated_array :: proc(data: ^pointer, copy_func: CopyFunc, copy_func_user_data: pointer, element_free_func: DestroyNotify) -> ^PtrArray ---
		ptr_array_new_full :: proc(reserved_size: uint_, element_free_func: DestroyNotify) -> ^PtrArray ---
		ptr_array_new_null_terminated :: proc(reserved_size: uint_, element_free_func: DestroyNotify, null_terminated: boolean) -> ^PtrArray ---
		ptr_array_new_take :: proc(data: ^pointer, len: size, element_free_func: DestroyNotify) -> ^PtrArray ---
		ptr_array_new_take_null_terminated :: proc(data: ^pointer, element_free_func: DestroyNotify) -> ^PtrArray ---
		ptr_array_new_with_free_func :: proc(element_free_func: DestroyNotify) -> ^PtrArray ---
		ptr_array_ref :: proc(array: ^PtrArray) -> ^PtrArray ---
		ptr_array_remove :: proc(array: ^PtrArray, data: pointer) -> boolean ---
		ptr_array_remove_fast :: proc(array: ^PtrArray, data: pointer) -> boolean ---
		ptr_array_remove_index :: proc(array: ^PtrArray, index_: uint_) -> pointer ---
		ptr_array_remove_index_fast :: proc(array: ^PtrArray, index_: uint_) -> pointer ---
		ptr_array_remove_range :: proc(array: ^PtrArray, index_: uint_, length: uint_) -> ^PtrArray ---
		ptr_array_set_free_func :: proc(array: ^PtrArray, element_free_func: DestroyNotify) ---
		ptr_array_set_size :: proc(array: ^PtrArray, length: int_) ---
		ptr_array_sized_new :: proc(reserved_size: uint_) -> ^PtrArray ---
		ptr_array_sort :: proc(array: ^PtrArray, compare_func: CompareFunc) ---
		ptr_array_sort_values :: proc(array: ^PtrArray, compare_func: CompareFunc) ---
		ptr_array_sort_values_with_data :: proc(array: ^PtrArray, compare_func: CompareDataFunc, user_data: pointer) ---
		ptr_array_sort_with_data :: proc(array: ^PtrArray, compare_func: CompareDataFunc, user_data: pointer) ---
		ptr_array_steal :: proc(array: ^PtrArray, len: ^size) -> ^pointer ---
		ptr_array_steal_index :: proc(array: ^PtrArray, index_: uint_) -> pointer ---
		ptr_array_steal_index_fast :: proc(array: ^PtrArray, index_: uint_) -> pointer ---
		ptr_array_unref :: proc(array: ^PtrArray) ---
		qsort_with_data :: proc(pbase: constpointer, total_elems: int_, size_p: size, compare_func: CompareDataFunc, user_data: pointer) ---
		quark_from_static_string :: proc(string_p: cstring) -> Quark ---
		quark_from_string :: proc(string_p: cstring) -> Quark ---
		quark_to_string :: proc(quark: Quark) -> cstring ---
		quark_try_string :: proc(string_p: cstring) -> Quark ---
		queue_clear :: proc(queue: ^Queue) ---
		queue_clear_full :: proc(queue: ^Queue, free_func: DestroyNotify) ---
		queue_copy :: proc(queue: ^Queue) -> ^Queue ---
		queue_delete_link :: proc(queue: ^Queue, link_: ^List) ---
		queue_find :: proc(queue: ^Queue, data: constpointer) -> ^List ---
		queue_find_custom :: proc(queue: ^Queue, data: constpointer, func: CompareFunc) -> ^List ---
		queue_foreach :: proc(queue: ^Queue, func: Func, user_data: pointer) ---
		queue_free :: proc(queue: ^Queue) ---
		queue_free_full :: proc(queue: ^Queue, free_func: DestroyNotify) ---
		queue_get_length :: proc(queue: ^Queue) -> uint_ ---
		queue_index :: proc(queue: ^Queue, data: constpointer) -> int_ ---
		queue_init :: proc(queue: ^Queue) ---
		queue_insert_after :: proc(queue: ^Queue, sibling: ^List, data: pointer) ---
		queue_insert_after_link :: proc(queue: ^Queue, sibling: ^List, link_: ^List) ---
		queue_insert_before :: proc(queue: ^Queue, sibling: ^List, data: pointer) ---
		queue_insert_before_link :: proc(queue: ^Queue, sibling: ^List, link_: ^List) ---
		queue_insert_sorted :: proc(queue: ^Queue, data: pointer, func: CompareDataFunc, user_data: pointer) ---
		queue_is_empty :: proc(queue: ^Queue) -> boolean ---
		queue_link_index :: proc(queue: ^Queue, link_: ^List) -> int_ ---
		queue_new :: proc() -> ^Queue ---
		queue_peek_head :: proc(queue: ^Queue) -> pointer ---
		queue_peek_head_link :: proc(queue: ^Queue) -> ^List ---
		queue_peek_nth :: proc(queue: ^Queue, n: uint_) -> pointer ---
		queue_peek_nth_link :: proc(queue: ^Queue, n: uint_) -> ^List ---
		queue_peek_tail :: proc(queue: ^Queue) -> pointer ---
		queue_peek_tail_link :: proc(queue: ^Queue) -> ^List ---
		queue_pop_head :: proc(queue: ^Queue) -> pointer ---
		queue_pop_head_link :: proc(queue: ^Queue) -> ^List ---
		queue_pop_nth :: proc(queue: ^Queue, n: uint_) -> pointer ---
		queue_pop_nth_link :: proc(queue: ^Queue, n: uint_) -> ^List ---
		queue_pop_tail :: proc(queue: ^Queue) -> pointer ---
		queue_pop_tail_link :: proc(queue: ^Queue) -> ^List ---
		queue_push_head :: proc(queue: ^Queue, data: pointer) ---
		queue_push_head_link :: proc(queue: ^Queue, link_: ^List) ---
		queue_push_nth :: proc(queue: ^Queue, data: pointer, n: int_) ---
		queue_push_nth_link :: proc(queue: ^Queue, n: int_, link_: ^List) ---
		queue_push_tail :: proc(queue: ^Queue, data: pointer) ---
		queue_push_tail_link :: proc(queue: ^Queue, link_: ^List) ---
		queue_remove :: proc(queue: ^Queue, data: constpointer) -> boolean ---
		queue_remove_all :: proc(queue: ^Queue, data: constpointer) -> uint_ ---
		queue_reverse :: proc(queue: ^Queue) ---
		queue_sort :: proc(queue: ^Queue, compare_func: CompareDataFunc, user_data: pointer) ---
		queue_unlink :: proc(queue: ^Queue, link_: ^List) ---
		rand_copy :: proc(rand_: ^Rand) -> ^Rand ---
		rand_double :: proc(rand_: ^Rand) -> double ---
		rand_double_range :: proc(rand_: ^Rand, begin: double, end: double) -> double ---
		rand_free :: proc(rand_: ^Rand) ---
		rand_int :: proc(rand_: ^Rand) -> uint32 ---
		rand_int_range :: proc(rand_: ^Rand, begin: int32, end: int32) -> int32 ---
		rand_new :: proc() -> ^Rand ---
		rand_new_with_seed :: proc(seed: uint32) -> ^Rand ---
		rand_new_with_seed_array :: proc(seed: ^uint32, seed_length: uint_) -> ^Rand ---
		rand_set_seed :: proc(rand_: ^Rand, seed: uint32) ---
		rand_set_seed_array :: proc(rand_: ^Rand, seed: ^uint32, seed_length: uint_) ---
		random_double :: proc() -> double ---
		random_double_range :: proc(begin: double, end: double) -> double ---
		random_int :: proc() -> uint32 ---
		random_int_range :: proc(begin: int32, end: int32) -> int32 ---
		random_set_seed :: proc(seed: uint32) ---
		rc_box_acquire :: proc(mem_block: pointer) -> pointer ---
		rc_box_alloc :: proc(block_size: size) -> pointer ---
		rc_box_alloc0 :: proc(block_size: size) -> pointer ---
		rc_box_dup :: proc(block_size: size, mem_block: constpointer) -> pointer ---
		rc_box_get_size :: proc(mem_block: pointer) -> size ---
		rc_box_release :: proc(mem_block: pointer) ---
		rc_box_release_full :: proc(mem_block: pointer, clear_func: DestroyNotify) ---
		realloc :: proc(mem: pointer, n_bytes: size) -> pointer ---
		realloc_n :: proc(mem: pointer, n_blocks: size, n_block_bytes: size) -> pointer ---
		rec_mutex_clear :: proc(rec_mutex: ^RecMutex) ---
		rec_mutex_init :: proc(rec_mutex: ^RecMutex) ---
		rec_mutex_lock :: proc(rec_mutex: ^RecMutex) ---
		rec_mutex_trylock :: proc(rec_mutex: ^RecMutex) -> boolean ---
		rec_mutex_unlock :: proc(rec_mutex: ^RecMutex) ---
		ref_count_compare :: proc(rc: ^refcount, val: int_) -> boolean ---
		ref_count_dec :: proc(rc: ^refcount) -> boolean ---
		ref_count_inc :: proc(rc: ^refcount) ---
		ref_count_init :: proc(rc: ^refcount) ---
		ref_string_acquire :: proc(str: cstring) -> cstring ---
		ref_string_length :: proc(str: cstring) -> size ---
		ref_string_new :: proc(str: cstring) -> cstring ---
		ref_string_new_intern :: proc(str: cstring) -> cstring ---
		ref_string_new_len :: proc(str: cstring, len: ssize) -> cstring ---
		ref_string_release :: proc(str: cstring) ---
		regex_check_replacement :: proc(replacement: cstring, has_references: ^boolean, error: ^^Error) -> boolean ---
		regex_error_quark :: proc() -> Quark ---
		regex_error_quark :: proc() -> Quark ---
		regex_escape_nul :: proc(string_p: cstring, length: int_) -> cstring ---
		regex_escape_string :: proc(string_p: cstring, length: int_) -> cstring ---
		regex_get_capture_count :: proc(regex: ^Regex) -> int_ ---
		regex_get_compile_flags :: proc(regex: ^Regex) -> RegexCompileFlags ---
		regex_get_has_cr_or_lf :: proc(regex: ^Regex) -> boolean ---
		regex_get_match_flags :: proc(regex: ^Regex) -> RegexMatchFlags ---
		regex_get_max_backref :: proc(regex: ^Regex) -> int_ ---
		regex_get_max_lookbehind :: proc(regex: ^Regex) -> int_ ---
		regex_get_pattern :: proc(regex: ^Regex) -> cstring ---
		regex_get_string_number :: proc(regex: ^Regex, name: cstring) -> int_ ---
		regex_match :: proc(regex: ^Regex, string_p: cstring, match_options: RegexMatchFlags, match_info: ^^MatchInfo) -> boolean ---
		regex_match_all :: proc(regex: ^Regex, string_p: cstring, match_options: RegexMatchFlags, match_info: ^^MatchInfo) -> boolean ---
		regex_match_all_full :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, match_options: RegexMatchFlags, match_info: ^^MatchInfo, error: ^^Error) -> boolean ---
		regex_match_full :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, match_options: RegexMatchFlags, match_info: ^^MatchInfo, error: ^^Error) -> boolean ---
		regex_match_simple :: proc(pattern: cstring, string_p: cstring, compile_options: RegexCompileFlags, match_options: RegexMatchFlags) -> boolean ---
		regex_new :: proc(pattern: cstring, compile_options: RegexCompileFlags, match_options: RegexMatchFlags, error: ^^Error) -> ^Regex ---
		regex_ref :: proc(regex: ^Regex) -> ^Regex ---
		regex_replace :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, replacement: cstring, match_options: RegexMatchFlags, error: ^^Error) -> cstring ---
		regex_replace_eval :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, match_options: RegexMatchFlags, eval: RegexEvalCallback, user_data: pointer, error: ^^Error) -> cstring ---
		regex_replace_literal :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, replacement: cstring, match_options: RegexMatchFlags, error: ^^Error) -> cstring ---
		regex_split :: proc(regex: ^Regex, string_p: cstring, match_options: RegexMatchFlags) -> ^cstring ---
		regex_split_full :: proc(regex: ^Regex, string_p: cstring, string_len: ssize, start_position: int_, match_options: RegexMatchFlags, max_tokens: int_, error: ^^Error) -> ^cstring ---
		regex_split_simple :: proc(pattern: cstring, string_p: cstring, compile_options: RegexCompileFlags, match_options: RegexMatchFlags) -> ^cstring ---
		regex_unref :: proc(regex: ^Regex) ---
		relation_count :: proc(relation: ^Relation, key: constpointer, field: int_) -> int_ ---
		relation_delete :: proc(relation: ^Relation, key: constpointer, field: int_) -> int_ ---
		relation_destroy :: proc(relation: ^Relation) ---
		relation_exists :: proc(relation: ^Relation, #c_vararg var_args: ..any) -> boolean ---
		relation_index :: proc(relation: ^Relation, field: int_, hash_func: HashFunc, key_equal_func: EqualFunc) ---
		relation_insert :: proc(relation: ^Relation, #c_vararg var_args: ..any) ---
		relation_new :: proc(fields: int_) -> ^Relation ---
		relation_print :: proc(relation: ^Relation) ---
		relation_select :: proc(relation: ^Relation, key: constpointer, field: int_) -> ^Tuples ---
		reload_user_special_dirs_cache :: proc() ---
		return_if_fail_warning :: proc(log_domain: cstring, pretty_function: cstring, expression: cstring) ---
		rw_lock_clear :: proc(rw_lock: ^RWLock) ---
		rw_lock_init :: proc(rw_lock: ^RWLock) ---
		rw_lock_reader_lock :: proc(rw_lock: ^RWLock) ---
		rw_lock_reader_trylock :: proc(rw_lock: ^RWLock) -> boolean ---
		rw_lock_reader_unlock :: proc(rw_lock: ^RWLock) ---
		rw_lock_writer_lock :: proc(rw_lock: ^RWLock) ---
		rw_lock_writer_trylock :: proc(rw_lock: ^RWLock) -> boolean ---
		rw_lock_writer_unlock :: proc(rw_lock: ^RWLock) ---
		scanner_cur_line :: proc(scanner: ^Scanner) -> uint_ ---
		scanner_cur_position :: proc(scanner: ^Scanner) -> uint_ ---
		scanner_cur_token :: proc(scanner: ^Scanner) -> TokenType ---
		scanner_cur_value :: proc(scanner: ^Scanner) -> TokenValue ---
		scanner_destroy :: proc(scanner: ^Scanner) ---
		scanner_eof :: proc(scanner: ^Scanner) -> boolean ---
		scanner_error :: proc(scanner: ^Scanner, format: cstring, #c_vararg var_args: ..any) ---
		scanner_get_next_token :: proc(scanner: ^Scanner) -> TokenType ---
		scanner_input_file :: proc(scanner: ^Scanner, input_fd: int_) ---
		scanner_input_text :: proc(scanner: ^Scanner, text: cstring, text_len: uint_) ---
		scanner_lookup_symbol :: proc(scanner: ^Scanner, symbol: cstring) -> pointer ---
		scanner_new :: proc(config_templ: ^ScannerConfig) -> ^Scanner ---
		scanner_peek_next_token :: proc(scanner: ^Scanner) -> TokenType ---
		scanner_scope_add_symbol :: proc(scanner: ^Scanner, scope_id: uint_, symbol: cstring, value: pointer) ---
		scanner_scope_foreach_symbol :: proc(scanner: ^Scanner, scope_id: uint_, func: HFunc, user_data: pointer) ---
		scanner_scope_lookup_symbol :: proc(scanner: ^Scanner, scope_id: uint_, symbol: cstring) -> pointer ---
		scanner_scope_remove_symbol :: proc(scanner: ^Scanner, scope_id: uint_, symbol: cstring) ---
		scanner_set_scope :: proc(scanner: ^Scanner, scope_id: uint_) -> uint_ ---
		scanner_sync_file_offset :: proc(scanner: ^Scanner) ---
		scanner_unexp_token :: proc(scanner: ^Scanner, expected_token: TokenType, identifier_spec: cstring, symbol_spec: cstring, symbol_name: cstring, message: cstring, is_error: int_) ---
		scanner_warn :: proc(scanner: ^Scanner, format: cstring, #c_vararg var_args: ..any) ---
		sequence_append :: proc(seq: ^Sequence, data: pointer) -> ^SequenceIter ---
		sequence_foreach :: proc(seq: ^Sequence, func: Func, user_data: pointer) ---
		sequence_foreach_range :: proc(begin: ^SequenceIter, end: ^SequenceIter, func: Func, user_data: pointer) ---
		sequence_free :: proc(seq: ^Sequence) ---
		sequence_get :: proc(iter: ^SequenceIter) -> pointer ---
		sequence_get_begin_iter :: proc(seq: ^Sequence) -> ^SequenceIter ---
		sequence_get_end_iter :: proc(seq: ^Sequence) -> ^SequenceIter ---
		sequence_get_iter_at_pos :: proc(seq: ^Sequence, pos: int_) -> ^SequenceIter ---
		sequence_get_length :: proc(seq: ^Sequence) -> int_ ---
		sequence_insert_before :: proc(iter: ^SequenceIter, data: pointer) -> ^SequenceIter ---
		sequence_insert_sorted :: proc(seq: ^Sequence, data: pointer, cmp_func: CompareDataFunc, cmp_data: pointer) -> ^SequenceIter ---
		sequence_insert_sorted_iter :: proc(seq: ^Sequence, data: pointer, iter_cmp: SequenceIterCompareFunc, cmp_data: pointer) -> ^SequenceIter ---
		sequence_is_empty :: proc(seq: ^Sequence) -> boolean ---
		sequence_iter_compare :: proc(a: ^SequenceIter, b: ^SequenceIter) -> int_ ---
		sequence_iter_get_position :: proc(iter: ^SequenceIter) -> int_ ---
		sequence_iter_get_sequence :: proc(iter: ^SequenceIter) -> ^Sequence ---
		sequence_iter_is_begin :: proc(iter: ^SequenceIter) -> boolean ---
		sequence_iter_is_end :: proc(iter: ^SequenceIter) -> boolean ---
		sequence_iter_move :: proc(iter: ^SequenceIter, delta: int_) -> ^SequenceIter ---
		sequence_iter_next :: proc(iter: ^SequenceIter) -> ^SequenceIter ---
		sequence_iter_prev :: proc(iter: ^SequenceIter) -> ^SequenceIter ---
		sequence_lookup :: proc(seq: ^Sequence, data: pointer, cmp_func: CompareDataFunc, cmp_data: pointer) -> ^SequenceIter ---
		sequence_lookup_iter :: proc(seq: ^Sequence, data: pointer, iter_cmp: SequenceIterCompareFunc, cmp_data: pointer) -> ^SequenceIter ---
		sequence_move :: proc(src: ^SequenceIter, dest: ^SequenceIter) ---
		sequence_move_range :: proc(dest: ^SequenceIter, begin: ^SequenceIter, end: ^SequenceIter) ---
		sequence_new :: proc(data_destroy: DestroyNotify) -> ^Sequence ---
		sequence_prepend :: proc(seq: ^Sequence, data: pointer) -> ^SequenceIter ---
		sequence_range_get_midpoint :: proc(begin: ^SequenceIter, end: ^SequenceIter) -> ^SequenceIter ---
		sequence_remove :: proc(iter: ^SequenceIter) ---
		sequence_remove_range :: proc(begin: ^SequenceIter, end: ^SequenceIter) ---
		sequence_search :: proc(seq: ^Sequence, data: pointer, cmp_func: CompareDataFunc, cmp_data: pointer) -> ^SequenceIter ---
		sequence_search_iter :: proc(seq: ^Sequence, data: pointer, iter_cmp: SequenceIterCompareFunc, cmp_data: pointer) -> ^SequenceIter ---
		sequence_set :: proc(iter: ^SequenceIter, data: pointer) ---
		sequence_sort :: proc(seq: ^Sequence, cmp_func: CompareDataFunc, cmp_data: pointer) ---
		sequence_sort_changed :: proc(iter: ^SequenceIter, cmp_func: CompareDataFunc, cmp_data: pointer) ---
		sequence_sort_changed_iter :: proc(iter: ^SequenceIter, iter_cmp: SequenceIterCompareFunc, cmp_data: pointer) ---
		sequence_sort_iter :: proc(seq: ^Sequence, cmp_func: SequenceIterCompareFunc, cmp_data: pointer) ---
		sequence_swap :: proc(a: ^SequenceIter, b: ^SequenceIter) ---
		set_application_name :: proc(application_name: cstring) ---
		set_error :: proc(err: ^^Error, domain: Quark, code: int_, format: cstring, #c_vararg var_args: ..any) ---
		set_error_literal :: proc(err: ^^Error, domain: Quark, code: int_, message: cstring) ---
		set_prgname :: proc(prgname: cstring) ---
		set_print_handler :: proc(func: PrintFunc) -> PrintFunc ---
		set_printerr_handler :: proc(func: PrintFunc) -> PrintFunc ---
		setenv :: proc(variable: cstring, value: cstring, overwrite: boolean) -> boolean ---
		shell_error_quark :: proc() -> Quark ---
		shell_error_quark :: proc() -> Quark ---
		shell_parse_argv :: proc(command_line: cstring, argcp: ^int_, argvp: ^^cstring, error: ^^Error) -> boolean ---
		shell_quote :: proc(unquoted_string: cstring) -> cstring ---
		shell_unquote :: proc(quoted_string: cstring, error: ^^Error) -> cstring ---
		slice_alloc :: proc(block_size: size) -> pointer ---
		slice_alloc0 :: proc(block_size: size) -> pointer ---
		slice_copy :: proc(block_size: size, mem_block: constpointer) -> pointer ---
		slice_free1 :: proc(block_size: size, mem_block: pointer) ---
		slice_free_chain_with_offset :: proc(block_size: size, mem_chain: pointer, next_offset: size) ---
		slice_get_config :: proc(ckey: SliceConfig) -> int64 ---
		slice_get_config_state :: proc(ckey: SliceConfig, address: int64, n_values: ^uint_) -> ^int64 ---
		slice_set_config :: proc(ckey: SliceConfig, value: int64) ---
		slist_alloc :: proc() -> ^SList ---
		slist_append :: proc(list: ^SList, data: pointer) -> ^SList ---
		slist_concat :: proc(list1: ^SList, list2: ^SList) -> ^SList ---
		slist_copy :: proc(list: ^SList) -> ^SList ---
		slist_copy_deep :: proc(list: ^SList, func: CopyFunc, user_data: pointer) -> ^SList ---
		slist_delete_link :: proc(list: ^SList, link_: ^SList) -> ^SList ---
		slist_find :: proc(list: ^SList, data: constpointer) -> ^SList ---
		slist_find_custom :: proc(list: ^SList, data: constpointer, func: CompareFunc) -> ^SList ---
		slist_foreach :: proc(list: ^SList, func: Func, user_data: pointer) ---
		slist_free :: proc(list: ^SList) ---
		slist_free_1 :: proc(list: ^SList) ---
		slist_free_1 :: proc(list: ^SList) ---
		slist_free_full :: proc(list: ^SList, free_func: DestroyNotify) ---
		slist_index :: proc(list: ^SList, data: constpointer) -> int_ ---
		slist_insert :: proc(list: ^SList, data: pointer, position: int_) -> ^SList ---
		slist_insert_before :: proc(slist: ^SList, sibling: ^SList, data: pointer) -> ^SList ---
		slist_insert_sorted :: proc(list: ^SList, data: pointer, func: CompareFunc) -> ^SList ---
		slist_insert_sorted_with_data :: proc(list: ^SList, data: pointer, func: CompareDataFunc, user_data: pointer) -> ^SList ---
		slist_last :: proc(list: ^SList) -> ^SList ---
		slist_length :: proc(list: ^SList) -> uint_ ---
		slist_nth :: proc(list: ^SList, n: uint_) -> ^SList ---
		slist_nth_data :: proc(list: ^SList, n: uint_) -> pointer ---
		slist_pop_allocator :: proc() ---
		slist_position :: proc(list: ^SList, llink: ^SList) -> int_ ---
		slist_prepend :: proc(list: ^SList, data: pointer) -> ^SList ---
		slist_push_allocator :: proc(allocator: ^Allocator) ---
		slist_remove :: proc(list: ^SList, data: constpointer) -> ^SList ---
		slist_remove_all :: proc(list: ^SList, data: constpointer) -> ^SList ---
		slist_remove_link :: proc(list: ^SList, link_: ^SList) -> ^SList ---
		slist_reverse :: proc(list: ^SList) -> ^SList ---
		slist_sort :: proc(list: ^SList, compare_func: CompareFunc) -> ^SList ---
		slist_sort_with_data :: proc(list: ^SList, compare_func: CompareDataFunc, user_data: pointer) -> ^SList ---
		snprintf :: proc(string_p: cstring, n: ulong, format: cstring, #c_vararg var_args: ..any) -> int_ ---
		source_add_child_source :: proc(source: ^Source, child_source: ^Source) ---
		source_add_poll :: proc(source: ^Source, fd: ^PollFD) ---
		source_add_unix_fd :: proc(source: ^Source, fd: int_, events: IOCondition) -> pointer ---
		source_attach :: proc(source: ^Source, context_p: ^MainContext) -> uint_ ---
		source_destroy :: proc(source: ^Source) ---
		source_get_can_recurse :: proc(source: ^Source) -> boolean ---
		source_get_context :: proc(source: ^Source) -> ^MainContext ---
		source_get_current_time :: proc(source: ^Source, timeval: ^TimeVal) ---
		source_get_id :: proc(source: ^Source) -> uint_ ---
		source_get_name :: proc(source: ^Source) -> cstring ---
		source_get_priority :: proc(source: ^Source) -> int_ ---
		source_get_ready_time :: proc(source: ^Source) -> int64 ---
		source_get_time :: proc(source: ^Source) -> int64 ---
		source_is_destroyed :: proc(source: ^Source) -> boolean ---
		source_modify_unix_fd :: proc(source: ^Source, tag: pointer, new_events: IOCondition) ---
		source_new :: proc(source_funcs: ^SourceFuncs, struct_size: uint_) -> ^Source ---
		source_query_unix_fd :: proc(source: ^Source, tag: pointer) -> IOCondition ---
		source_ref :: proc(source: ^Source) -> ^Source ---
		source_remove :: proc(tag: uint_) -> boolean ---
		source_remove_by_funcs_user_data :: proc(funcs: ^SourceFuncs, user_data: pointer) -> boolean ---
		source_remove_by_user_data :: proc(user_data: pointer) -> boolean ---
		source_remove_child_source :: proc(source: ^Source, child_source: ^Source) ---
		source_remove_poll :: proc(source: ^Source, fd: ^PollFD) ---
		source_remove_unix_fd :: proc(source: ^Source, tag: pointer) ---
		source_set_callback :: proc(source: ^Source, func: SourceFunc, data: pointer, notify: DestroyNotify) ---
		source_set_callback_indirect :: proc(source: ^Source, callback_data: pointer, callback_funcs: ^SourceCallbackFuncs) ---
		source_set_can_recurse :: proc(source: ^Source, can_recurse: boolean) ---
		source_set_dispose_function :: proc(source: ^Source, dispose: SourceDisposeFunc) ---
		source_set_funcs :: proc(source: ^Source, funcs: ^SourceFuncs) ---
		source_set_name :: proc(source: ^Source, name: cstring) ---
		source_set_name_by_id :: proc(tag: uint_, name: cstring) ---
		source_set_priority :: proc(source: ^Source, priority: int_) ---
		source_set_ready_time :: proc(source: ^Source, ready_time: int64) ---
		source_set_static_name :: proc(source: ^Source, name: cstring) ---
		source_unref :: proc(source: ^Source) ---
		spaced_primes_closest :: proc(num: uint_) -> uint_ ---
		spawn_async :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, child_pid: ^Pid, error: ^^Error) -> boolean ---
		spawn_async_with_fds :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, child_pid: ^Pid, stdin_fd: int_, stdout_fd: int_, stderr_fd: int_, error: ^^Error) -> boolean ---
		spawn_async_with_pipes :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, child_pid: ^Pid, standard_input: ^int_, standard_output: ^int_, standard_error: ^int_, error: ^^Error) -> boolean ---
		spawn_async_with_pipes_and_fds :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, stdin_fd: int_, stdout_fd: int_, stderr_fd: int_, source_fds: [^]int_, target_fds: [^]int_, n_fds: size, child_pid_out: ^Pid, stdin_pipe_out: ^int_, stdout_pipe_out: ^int_, stderr_pipe_out: ^int_, error: ^^Error) -> boolean ---
		spawn_check_exit_status :: proc(wait_status: int_, error: ^^Error) -> boolean ---
		spawn_check_wait_status :: proc(wait_status: int_, error: ^^Error) -> boolean ---
		spawn_close_pid :: proc(pid: Pid) ---
		spawn_command_line_async :: proc(command_line: cstring, error: ^^Error) -> boolean ---
		spawn_command_line_sync :: proc(command_line: cstring, standard_output: ^cstring, standard_error: ^cstring, wait_status: ^int_, error: ^^Error) -> boolean ---
		spawn_error_quark :: proc() -> Quark ---
		spawn_error_quark :: proc() -> Quark ---
		spawn_exit_error_quark :: proc() -> Quark ---
		spawn_exit_error_quark :: proc() -> Quark ---
		spawn_sync :: proc(working_directory: cstring, argv: ^cstring, envp: ^cstring, flags: SpawnFlags, child_setup: SpawnChildSetupFunc, user_data: pointer, standard_output: ^cstring, standard_error: ^cstring, wait_status: ^int_, error: ^^Error) -> boolean ---
		static_mutex_free :: proc(mutex: ^StaticMutex) ---
		static_mutex_get_mutex_impl :: proc(mutex: ^StaticMutex) -> ^Mutex ---
		static_mutex_get_mutex_impl :: proc(mutex: ^StaticMutex) -> ^Mutex ---
		static_mutex_init :: proc(mutex: ^StaticMutex) ---
		static_private_free :: proc(private_key: ^StaticPrivate) ---
		static_private_get :: proc(private_key: ^StaticPrivate) -> pointer ---
		static_private_init :: proc(private_key: ^StaticPrivate) ---
		static_private_set :: proc(private_key: ^StaticPrivate, data: pointer, notify: DestroyNotify) ---
		static_rec_mutex_free :: proc(mutex: ^StaticRecMutex) ---
		static_rec_mutex_init :: proc(mutex: ^StaticRecMutex) ---
		static_rec_mutex_lock :: proc(mutex: ^StaticRecMutex) ---
		static_rec_mutex_lock_full :: proc(mutex: ^StaticRecMutex, depth: uint_) ---
		static_rec_mutex_trylock :: proc(mutex: ^StaticRecMutex) -> boolean ---
		static_rec_mutex_unlock :: proc(mutex: ^StaticRecMutex) ---
		static_rec_mutex_unlock_full :: proc(mutex: ^StaticRecMutex) -> uint_ ---
		static_rw_lock_free :: proc(lock: ^StaticRWLock) ---
		static_rw_lock_init :: proc(lock: ^StaticRWLock) ---
		static_rw_lock_reader_lock :: proc(lock: ^StaticRWLock) ---
		static_rw_lock_reader_trylock :: proc(lock: ^StaticRWLock) -> boolean ---
		static_rw_lock_reader_unlock :: proc(lock: ^StaticRWLock) ---
		static_rw_lock_writer_lock :: proc(lock: ^StaticRWLock) ---
		static_rw_lock_writer_trylock :: proc(lock: ^StaticRWLock) -> boolean ---
		static_rw_lock_writer_unlock :: proc(lock: ^StaticRWLock) ---
		stpcpy :: proc(dest: cstring, src: cstring) -> cstring ---
		str_equal :: proc(v1: constpointer, v2: constpointer) -> boolean ---
		str_has_prefix :: proc(str: cstring, prefix: cstring) -> boolean ---
		str_has_suffix :: proc(str: cstring, suffix: cstring) -> boolean ---
		str_hash :: proc(v: constpointer) -> uint_ ---
		str_is_ascii :: proc(str: cstring) -> boolean ---
		str_match_string :: proc(search_term: cstring, potential_hit: cstring, accept_alternates: boolean) -> boolean ---
		str_to_ascii :: proc(str: cstring, from_locale: cstring) -> cstring ---
		str_tokenize_and_fold :: proc(string_p: cstring, translit_locale: cstring, ascii_alternates: ^[^]cstring) -> ^cstring ---
		strcanon :: proc(string_p: cstring, valid_chars: cstring, substitutor: char) -> cstring ---
		strcasecmp :: proc(s1: cstring, s2: cstring) -> int_ ---
		strchomp :: proc(string_p: cstring) -> cstring ---
		strchug :: proc(string_p: cstring) -> cstring ---
		strcmp0 :: proc(str1: cstring, str2: cstring) -> i32 ---
		strcompress :: proc(source: cstring) -> cstring ---
		strconcat :: proc(string1: cstring, #c_vararg var_args: ..any) -> cstring ---
		strdelimit :: proc(string_p: cstring, delimiters: cstring, new_delimiter: char) -> cstring ---
		strdown :: proc(string_p: cstring) -> cstring ---
		strdup :: proc(str: cstring) -> cstring ---
		strdup_printf :: proc(format: cstring, #c_vararg var_args: ..any) -> cstring ---
		strdupv :: proc(str_array: ^cstring) -> ^cstring ---
		strerror :: proc(errnum: int_) -> cstring ---
		strescape :: proc(source: cstring, exceptions: cstring) -> cstring ---
		strfreev :: proc(str_array: ^cstring) ---
		string_append :: proc(string_p: ^String, val: cstring) -> ^String ---
		string_append_c :: proc(string_p: ^String, c: char) -> ^String ---
		string_append_len :: proc(string_p: ^String, val: cstring, len: ssize) -> ^String ---
		string_append_printf :: proc(string_p: ^String, format: cstring, #c_vararg var_args: ..any) ---
		string_append_printf :: proc(string_p: ^String, format: cstring, #c_vararg var_args: ..any) ---
		string_append_unichar :: proc(string_p: ^String, wc: unichar) -> ^String ---
		string_append_uri_escaped :: proc(string_p: ^String, unescaped: cstring, reserved_chars_allowed: cstring, allow_utf8: boolean) -> ^String ---
		string_ascii_down :: proc(string_p: ^String) -> ^String ---
		string_ascii_up :: proc(string_p: ^String) -> ^String ---
		string_assign :: proc(string_p: ^String, rval: cstring) -> ^String ---
		string_chunk_clear :: proc(chunk: ^StringChunk) ---
		string_chunk_free :: proc(chunk: ^StringChunk) ---
		string_chunk_insert :: proc(chunk: ^StringChunk, string_p: cstring) -> cstring ---
		string_chunk_insert_const :: proc(chunk: ^StringChunk, string_p: cstring) -> cstring ---
		string_chunk_insert_len :: proc(chunk: ^StringChunk, string_p: cstring, len: ssize) -> cstring ---
		string_chunk_new :: proc(size_p: size) -> ^StringChunk ---
		string_down :: proc(string_p: ^String) -> ^String ---
		string_equal :: proc(v: ^String, v2: ^String) -> boolean ---
		string_erase :: proc(string_p: ^String, pos: ssize, len: ssize) -> ^String ---
		string_free :: proc(string_p: ^String, free_segment: boolean) -> cstring ---
		string_free_and_steal :: proc(string_p: ^String) -> cstring ---
		string_free_to_bytes :: proc(string_p: ^String) -> ^Bytes ---
		string_hash :: proc(str: ^String) -> uint_ ---
		string_insert :: proc(string_p: ^String, pos: ssize, val: cstring) -> ^String ---
		string_insert_c :: proc(string_p: ^String, pos: ssize, c: char) -> ^String ---
		string_insert_len :: proc(string_p: ^String, pos: ssize, val: cstring, len: ssize) -> ^String ---
		string_insert_unichar :: proc(string_p: ^String, pos: ssize, wc: unichar) -> ^String ---
		string_new :: proc(init: cstring) -> ^String ---
		string_new_len :: proc(init: cstring, len: ssize) -> ^String ---
		string_new_take :: proc(init: cstring) -> ^String ---
		string_overwrite :: proc(string_p: ^String, pos: size, val: cstring) -> ^String ---
		string_overwrite_len :: proc(string_p: ^String, pos: size, val: cstring, len: ssize) -> ^String ---
		string_prepend :: proc(string_p: ^String, val: cstring) -> ^String ---
		string_prepend_c :: proc(string_p: ^String, c: char) -> ^String ---
		string_prepend_len :: proc(string_p: ^String, val: cstring, len: ssize) -> ^String ---
		string_prepend_unichar :: proc(string_p: ^String, wc: unichar) -> ^String ---
		string_printf :: proc(string_p: ^String, format: cstring, #c_vararg var_args: ..any) ---
		string_printf :: proc(string_p: ^String, format: cstring, #c_vararg var_args: ..any) ---
		string_replace :: proc(string_p: ^String, find: cstring, replace: cstring, limit: uint_) -> uint_ ---
		string_set_size :: proc(string_p: ^String, len: size) -> ^String ---
		string_sized_new :: proc(dfl_size: size) -> ^String ---
		string_truncate :: proc(string_p: ^String, len: size) -> ^String ---
		string_up :: proc(string_p: ^String) -> ^String ---
		strip_context :: proc(msgid: cstring, msgval: cstring) -> cstring ---
		strjoin :: proc(separator: cstring, #c_vararg var_args: ..any) -> cstring ---
		strjoinv :: proc(separator: cstring, str_array: ^cstring) -> cstring ---
		strlcat :: proc(dest: cstring, src: cstring, dest_size: size) -> size ---
		strlcpy :: proc(dest: cstring, src: cstring, dest_size: size) -> size ---
		strncasecmp :: proc(s1: cstring, s2: cstring, n: uint_) -> int_ ---
		strndup :: proc(str: cstring, n: size) -> cstring ---
		strnfill :: proc(length: size, fill_char: char) -> cstring ---
		strreverse :: proc(string_p: cstring) -> cstring ---
		strrstr :: proc(haystack: cstring, needle: cstring) -> cstring ---
		strrstr_len :: proc(haystack: cstring, haystack_len: ssize, needle: cstring) -> cstring ---
		strsignal :: proc(signum: int_) -> cstring ---
		strsplit :: proc(string_p: cstring, delimiter: cstring, max_tokens: int_) -> ^cstring ---
		strsplit_set :: proc(string_p: cstring, delimiters: cstring, max_tokens: int_) -> ^cstring ---
		strstr_len :: proc(haystack: cstring, haystack_len: ssize, needle: cstring) -> cstring ---
		strtod :: proc(nptr: cstring, endptr: ^cstring) -> double ---
		strup :: proc(string_p: cstring) -> cstring ---
		strv_builder_add :: proc(builder: ^StrvBuilder, value: cstring) ---
		strv_builder_add_many :: proc(builder: ^StrvBuilder, #c_vararg var_args: ..any) ---
		strv_builder_addv :: proc(builder: ^StrvBuilder, value: ^cstring) ---
		strv_builder_end :: proc(builder: ^StrvBuilder) -> Strv ---
		strv_builder_new :: proc() -> ^StrvBuilder ---
		strv_builder_ref :: proc(builder: ^StrvBuilder) -> ^StrvBuilder ---
		strv_builder_take :: proc(builder: ^StrvBuilder, value: cstring) ---
		strv_builder_unref :: proc(builder: ^StrvBuilder) ---
		strv_contains :: proc(strv: ^cstring, str: cstring) -> boolean ---
		strv_equal :: proc(strv1: ^cstring, strv2: ^cstring) -> boolean ---
		strv_length :: proc(str_array: ^cstring) -> uint_ ---
		test_add_data_func :: proc(testpath: cstring, test_data: constpointer, test_func: TestDataFunc) ---
		test_add_data_func_full :: proc(testpath: cstring, test_data: pointer, test_func: TestDataFunc, data_free_func: DestroyNotify) ---
		test_add_func :: proc(testpath: cstring, test_func: TestFunc) ---
		test_add_vtable :: proc(testpath: cstring, data_size: size, test_data: constpointer, data_setup: TestFixtureFunc, data_test: TestFixtureFunc, data_teardown: TestFixtureFunc) ---
		test_assert_expected_messages_internal :: proc(domain: cstring, file: cstring, line: i32, func: cstring) ---
		test_bug :: proc(bug_uri_snippet: cstring) ---
		test_bug_base :: proc(uri_pattern: cstring) ---
		test_build_filename :: proc(file_type: TestFileType, first_path: cstring, #c_vararg var_args: ..any) -> cstring ---
		test_case_free :: proc(test_case: ^TestCase) ---
		test_create_case :: proc(test_name: cstring, data_size: size, test_data: constpointer, data_setup: TestFixtureFunc, data_test: TestFixtureFunc, data_teardown: TestFixtureFunc) -> ^TestCase ---
		test_create_suite :: proc(suite_name: cstring) -> ^TestSuite ---
		test_disable_crash_reporting :: proc() ---
		test_expect_message :: proc(log_domain: cstring, log_level: LogLevelFlags, pattern: cstring) ---
		test_fail :: proc() ---
		test_fail_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---
		test_failed :: proc() -> boolean ---
		test_get_dir :: proc(file_type: TestFileType) -> cstring ---
		test_get_filename :: proc(file_type: TestFileType, first_path: cstring, #c_vararg var_args: ..any) -> cstring ---
		test_get_path :: proc() -> cstring ---
		test_get_root :: proc() -> ^TestSuite ---
		test_incomplete :: proc(msg: cstring) ---
		test_incomplete_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---
		test_init :: proc(argc: ^i32, argv: ^^cstring, #c_vararg var_args: ..any) ---
		test_log_buffer_free :: proc(tbuffer: ^TestLogBuffer) ---
		test_log_buffer_new :: proc() -> ^TestLogBuffer ---
		test_log_buffer_pop :: proc(tbuffer: ^TestLogBuffer) -> ^TestLogMsg ---
		test_log_buffer_push :: proc(tbuffer: ^TestLogBuffer, n_bytes: uint_, bytes: [^]uint8) ---
		test_log_msg_free :: proc(tmsg: ^TestLogMsg) ---
		test_log_set_fatal_handler :: proc(log_func: TestLogFatalFunc, user_data: pointer) ---
		test_log_type_name :: proc(log_type: TestLogType) -> cstring ---
		test_maximized_result :: proc(maximized_quantity: f64, format: cstring, #c_vararg var_args: ..any) ---
		test_message :: proc(format: cstring, #c_vararg var_args: ..any) ---
		test_minimized_result :: proc(minimized_quantity: f64, format: cstring, #c_vararg var_args: ..any) ---
		test_queue_destroy :: proc(destroy_func: DestroyNotify, destroy_data: pointer) ---
		test_queue_free :: proc(gfree_pointer: pointer) ---
		test_rand_double :: proc() -> f64 ---
		test_rand_double_range :: proc(range_start: f64, range_end: f64) -> f64 ---
		test_rand_int :: proc() -> int32 ---
		test_rand_int_range :: proc(begin: int32, end: int32) -> int32 ---
		test_run :: proc() -> i32 ---
		test_run_suite :: proc(suite: ^TestSuite) -> i32 ---
		test_set_nonfatal_assertions :: proc() ---
		test_skip :: proc(msg: cstring) ---
		test_skip_printf :: proc(format: cstring, #c_vararg var_args: ..any) ---
		test_subprocess :: proc() -> boolean ---
		test_suite_add :: proc(suite: ^TestSuite, test_case: ^TestCase) ---
		test_suite_add_suite :: proc(suite: ^TestSuite, nestedsuite: ^TestSuite) ---
		test_suite_free :: proc(suite: ^TestSuite) ---
		test_summary :: proc(summary: cstring) ---
		test_timer_elapsed :: proc() -> f64 ---
		test_timer_last :: proc() -> f64 ---
		test_timer_start :: proc() ---
		test_trap_assertions :: proc(domain: cstring, file: cstring, line: i32, func: cstring, assertion_flags: uint64, pattern: cstring) ---
		test_trap_fork :: proc(usec_timeout: uint64, test_trap_flags: TestTrapFlags) -> boolean ---
		test_trap_has_passed :: proc() -> boolean ---
		test_trap_reached_timeout :: proc() -> boolean ---
		test_trap_subprocess :: proc(test_path: cstring, usec_timeout: uint64, test_flags: TestSubprocessFlags) ---
		test_trap_subprocess_with_envp :: proc(test_path: cstring, envp: ^cstring, usec_timeout: uint64, test_flags: TestSubprocessFlags) ---
		thread_create :: proc(func: ThreadFunc, data: pointer, joinable: boolean, error: ^^Error) -> ^Thread ---
		thread_create_full :: proc(func: ThreadFunc, data: pointer, stack_size: ulong, joinable: boolean, bound: boolean, priority: ThreadPriority, error: ^^Error) -> ^Thread ---
		thread_error_quark :: proc() -> Quark ---
		thread_error_quark :: proc() -> Quark ---
		thread_exit :: proc(retval: pointer) ---
		thread_foreach :: proc(thread_func: Func, user_data: pointer) ---
		thread_get_initialized :: proc() -> boolean ---
		thread_init :: proc(vtable: pointer) ---
		thread_init_with_errorcheck_mutexes :: proc(vtable: pointer) ---
		thread_join :: proc(thread: ^Thread) -> pointer ---
		thread_new :: proc(name: cstring, func: ThreadFunc, data: pointer) -> ^Thread ---
		thread_pool_free :: proc(pool: ^ThreadPool, immediate: boolean, wait_: boolean) ---
		thread_pool_get_max_idle_time :: proc() -> uint_ ---
		thread_pool_get_max_threads :: proc(pool: ^ThreadPool) -> int_ ---
		thread_pool_get_max_unused_threads :: proc() -> int_ ---
		thread_pool_get_num_threads :: proc(pool: ^ThreadPool) -> uint_ ---
		thread_pool_get_num_unused_threads :: proc() -> uint_ ---
		thread_pool_move_to_front :: proc(pool: ^ThreadPool, data: pointer) -> boolean ---
		thread_pool_new :: proc(func: Func, user_data: pointer, max_threads: int_, exclusive: boolean, error: ^^Error) -> ^ThreadPool ---
		thread_pool_new_full :: proc(func: Func, user_data: pointer, item_free_func: DestroyNotify, max_threads: int_, exclusive: boolean, error: ^^Error) -> ^ThreadPool ---
		thread_pool_push :: proc(pool: ^ThreadPool, data: pointer, error: ^^Error) -> boolean ---
		thread_pool_set_max_idle_time :: proc(interval: uint_) ---
		thread_pool_set_max_threads :: proc(pool: ^ThreadPool, max_threads: int_, error: ^^Error) -> boolean ---
		thread_pool_set_max_unused_threads :: proc(max_threads: int_) ---
		thread_pool_set_sort_function :: proc(pool: ^ThreadPool, func: CompareDataFunc, user_data: pointer) ---
		thread_pool_stop_unused_threads :: proc() ---
		thread_pool_unprocessed :: proc(pool: ^ThreadPool) -> uint_ ---
		thread_ref :: proc(thread: ^Thread) -> ^Thread ---
		thread_self :: proc() -> ^Thread ---
		thread_set_priority :: proc(thread: ^Thread, priority: ThreadPriority) ---
		thread_try_new :: proc(name: cstring, func: ThreadFunc, data: pointer, error: ^^Error) -> ^Thread ---
		thread_unref :: proc(thread: ^Thread) ---
		thread_yield :: proc() ---
		time_val_add :: proc(time_: ^TimeVal, microseconds: long) ---
		time_val_from_iso8601 :: proc(iso_date: cstring, time_: ^TimeVal) -> boolean ---
		time_val_to_iso8601 :: proc(time_: ^TimeVal) -> cstring ---
		time_zone_adjust_time :: proc(tz: ^TimeZone, type: TimeType, time_: ^int64) -> int_ ---
		time_zone_find_interval :: proc(tz: ^TimeZone, type: TimeType, time_: int64) -> int_ ---
		time_zone_get_abbreviation :: proc(tz: ^TimeZone, interval: int_) -> cstring ---
		time_zone_get_identifier :: proc(tz: ^TimeZone) -> cstring ---
		time_zone_get_offset :: proc(tz: ^TimeZone, interval: int_) -> int32 ---
		time_zone_is_dst :: proc(tz: ^TimeZone, interval: int_) -> boolean ---
		time_zone_new :: proc(identifier: cstring) -> ^TimeZone ---
		time_zone_new_identifier :: proc(identifier: cstring) -> ^TimeZone ---
		time_zone_new_local :: proc() -> ^TimeZone ---
		time_zone_new_offset :: proc(seconds: int32) -> ^TimeZone ---
		time_zone_new_utc :: proc() -> ^TimeZone ---
		time_zone_ref :: proc(tz: ^TimeZone) -> ^TimeZone ---
		time_zone_unref :: proc(tz: ^TimeZone) ---
		timeout_add :: proc(interval: uint_, function: SourceFunc, data: pointer) -> uint_ ---
		timeout_add_full :: proc(priority: int_, interval: uint_, function: SourceFunc, data: pointer, notify: DestroyNotify) -> uint_ ---
		timeout_add_once :: proc(interval: uint_, function: SourceOnceFunc, data: pointer) -> uint_ ---
		timeout_add_seconds :: proc(interval: uint_, function: SourceFunc, data: pointer) -> uint_ ---
		timeout_add_seconds_full :: proc(priority: int_, interval: uint_, function: SourceFunc, data: pointer, notify: DestroyNotify) -> uint_ ---
		timeout_add_seconds_once :: proc(interval: uint_, function: SourceOnceFunc, data: pointer) -> uint_ ---
		timeout_source_new :: proc(interval: uint_) -> ^Source ---
		timeout_source_new_seconds :: proc(interval: uint_) -> ^Source ---
		timer_continue :: proc(timer: ^Timer) ---
		timer_destroy :: proc(timer: ^Timer) ---
		timer_elapsed :: proc(timer: ^Timer, microseconds: ^ulong) -> double ---
		timer_is_active :: proc(timer: ^Timer) -> boolean ---
		timer_new :: proc() -> ^Timer ---
		timer_reset :: proc(timer: ^Timer) ---
		timer_start :: proc(timer: ^Timer) ---
		timer_stop :: proc(timer: ^Timer) ---
		trash_stack_height :: proc(stack_p: ^^TrashStack) -> uint_ ---
		trash_stack_peek :: proc(stack_p: ^^TrashStack) -> pointer ---
		trash_stack_pop :: proc(stack_p: ^^TrashStack) -> pointer ---
		trash_stack_push :: proc(stack_p: ^^TrashStack, data_p: pointer) ---
		tree_destroy :: proc(tree: ^Tree) ---
		tree_foreach :: proc(tree: ^Tree, func: TraverseFunc, user_data: pointer) ---
		tree_foreach_node :: proc(tree: ^Tree, func: TraverseNodeFunc, user_data: pointer) ---
		tree_height :: proc(tree: ^Tree) -> int_ ---
		tree_insert :: proc(tree: ^Tree, key: pointer, value: pointer) ---
		tree_insert_node :: proc(tree: ^Tree, key: pointer, value: pointer) -> ^TreeNode ---
		tree_lookup :: proc(tree: ^Tree, key: constpointer) -> pointer ---
		tree_lookup_extended :: proc(tree: ^Tree, lookup_key: constpointer, orig_key: ^pointer, value: ^pointer) -> boolean ---
		tree_lookup_node :: proc(tree: ^Tree, key: constpointer) -> ^TreeNode ---
		tree_lower_bound :: proc(tree: ^Tree, key: constpointer) -> ^TreeNode ---
		tree_new :: proc(key_compare_func: CompareFunc) -> ^Tree ---
		tree_new_full :: proc(key_compare_func: CompareDataFunc, key_compare_data: pointer, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) -> ^Tree ---
		tree_new_with_data :: proc(key_compare_func: CompareDataFunc, key_compare_data: pointer) -> ^Tree ---
		tree_nnodes :: proc(tree: ^Tree) -> int_ ---
		tree_node_first :: proc(tree: ^Tree) -> ^TreeNode ---
		tree_node_key :: proc(node: ^TreeNode) -> pointer ---
		tree_node_last :: proc(tree: ^Tree) -> ^TreeNode ---
		tree_node_next :: proc(node: ^TreeNode) -> ^TreeNode ---
		tree_node_previous :: proc(node: ^TreeNode) -> ^TreeNode ---
		tree_node_value :: proc(node: ^TreeNode) -> pointer ---
		tree_ref :: proc(tree: ^Tree) -> ^Tree ---
		tree_remove :: proc(tree: ^Tree, key: constpointer) -> boolean ---
		tree_remove_all :: proc(tree: ^Tree) ---
		tree_replace :: proc(tree: ^Tree, key: pointer, value: pointer) ---
		tree_replace_node :: proc(tree: ^Tree, key: pointer, value: pointer) -> ^TreeNode ---
		tree_search :: proc(tree: ^Tree, search_func: CompareFunc, user_data: constpointer) -> pointer ---
		tree_search_node :: proc(tree: ^Tree, search_func: CompareFunc, user_data: constpointer) -> ^TreeNode ---
		tree_steal :: proc(tree: ^Tree, key: constpointer) -> boolean ---
		tree_traverse :: proc(tree: ^Tree, traverse_func: TraverseFunc, traverse_type: TraverseType, user_data: pointer) ---
		tree_unref :: proc(tree: ^Tree) ---
		tree_upper_bound :: proc(tree: ^Tree, key: constpointer) -> ^TreeNode ---
		try_malloc :: proc(n_bytes: size) -> pointer ---
		try_malloc0 :: proc(n_bytes: size) -> pointer ---
		try_malloc0_n :: proc(n_blocks: size, n_block_bytes: size) -> pointer ---
		try_malloc_n :: proc(n_blocks: size, n_block_bytes: size) -> pointer ---
		try_realloc :: proc(mem: pointer, n_bytes: size) -> pointer ---
		try_realloc_n :: proc(mem: pointer, n_blocks: size, n_block_bytes: size) -> pointer ---
		tuples_destroy :: proc(tuples: ^Tuples) ---
		tuples_index :: proc(tuples: ^Tuples, index_: int_, field: int_) -> pointer ---
		ucs4_to_utf16 :: proc(str: ^unichar, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> ^unichar2 ---
		ucs4_to_utf8 :: proc(str: ^unichar, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> cstring ---
		unichar_break_type :: proc(c: unichar) -> UnicodeBreakType ---
		unichar_combining_class :: proc(uc: unichar) -> int_ ---
		unichar_compose :: proc(a: unichar, b: unichar, ch: ^unichar) -> boolean ---
		unichar_decompose :: proc(ch: unichar, a: ^unichar, b: ^unichar) -> boolean ---
		unichar_digit_value :: proc(c: unichar) -> int_ ---
		unichar_fully_decompose :: proc(ch: unichar, compat: boolean, result: ^unichar, result_len: size) -> size ---
		unichar_get_mirror_char :: proc(ch: unichar, mirrored_ch: ^unichar) -> boolean ---
		unichar_get_script :: proc(ch: unichar) -> UnicodeScript ---
		unichar_isalnum :: proc(c: unichar) -> boolean ---
		unichar_isalpha :: proc(c: unichar) -> boolean ---
		unichar_iscntrl :: proc(c: unichar) -> boolean ---
		unichar_isdefined :: proc(c: unichar) -> boolean ---
		unichar_isdigit :: proc(c: unichar) -> boolean ---
		unichar_isgraph :: proc(c: unichar) -> boolean ---
		unichar_islower :: proc(c: unichar) -> boolean ---
		unichar_ismark :: proc(c: unichar) -> boolean ---
		unichar_isprint :: proc(c: unichar) -> boolean ---
		unichar_ispunct :: proc(c: unichar) -> boolean ---
		unichar_isspace :: proc(c: unichar) -> boolean ---
		unichar_istitle :: proc(c: unichar) -> boolean ---
		unichar_isupper :: proc(c: unichar) -> boolean ---
		unichar_iswide :: proc(c: unichar) -> boolean ---
		unichar_iswide_cjk :: proc(c: unichar) -> boolean ---
		unichar_isxdigit :: proc(c: unichar) -> boolean ---
		unichar_iszerowidth :: proc(c: unichar) -> boolean ---
		unichar_to_utf8 :: proc(c: unichar, outbuf: ^byte) -> int_ ---
		unichar_tolower :: proc(c: unichar) -> unichar ---
		unichar_totitle :: proc(c: unichar) -> unichar ---
		unichar_toupper :: proc(c: unichar) -> unichar ---
		unichar_type :: proc(c: unichar) -> UnicodeType ---
		unichar_validate :: proc(ch: unichar) -> boolean ---
		unichar_xdigit_value :: proc(c: unichar) -> int_ ---
		unicode_canonical_decomposition :: proc(ch: unichar, result_len: ^size) -> ^unichar ---
		unicode_canonical_ordering :: proc(string_p: ^unichar, len: size) ---
		unicode_script_from_iso15924 :: proc(iso15924: uint32) -> UnicodeScript ---
		unicode_script_to_iso15924 :: proc(script: UnicodeScript) -> uint32 ---
		unsetenv :: proc(variable: cstring) ---
		uri_build :: proc(flags: UriFlags, scheme: cstring, userinfo: cstring, host: cstring, port: int_, path: cstring, query: cstring, fragment: cstring) -> ^Uri ---
		uri_build_with_user :: proc(flags: UriFlags, scheme: cstring, user: cstring, password: cstring, auth_params: cstring, host: cstring, port: int_, path: cstring, query: cstring, fragment: cstring) -> ^Uri ---
		uri_error_quark :: proc() -> Quark ---
		uri_escape_bytes :: proc(unescaped: ^uint8, length: size, reserved_chars_allowed: cstring) -> cstring ---
		uri_escape_string :: proc(unescaped: cstring, reserved_chars_allowed: cstring, allow_utf8: boolean) -> cstring ---
		uri_get_auth_params :: proc(uri: ^Uri) -> cstring ---
		uri_get_flags :: proc(uri: ^Uri) -> UriFlags ---
		uri_get_fragment :: proc(uri: ^Uri) -> cstring ---
		uri_get_host :: proc(uri: ^Uri) -> cstring ---
		uri_get_password :: proc(uri: ^Uri) -> cstring ---
		uri_get_path :: proc(uri: ^Uri) -> cstring ---
		uri_get_port :: proc(uri: ^Uri) -> int_ ---
		uri_get_query :: proc(uri: ^Uri) -> cstring ---
		uri_get_scheme :: proc(uri: ^Uri) -> cstring ---
		uri_get_user :: proc(uri: ^Uri) -> cstring ---
		uri_get_userinfo :: proc(uri: ^Uri) -> cstring ---
		uri_is_valid :: proc(uri_string: cstring, flags: UriFlags, error: ^^Error) -> boolean ---
		uri_join :: proc(flags: UriFlags, scheme: cstring, userinfo: cstring, host: cstring, port: int_, path: cstring, query: cstring, fragment: cstring) -> cstring ---
		uri_join_with_user :: proc(flags: UriFlags, scheme: cstring, user: cstring, password: cstring, auth_params: cstring, host: cstring, port: int_, path: cstring, query: cstring, fragment: cstring) -> cstring ---
		uri_list_extract_uris :: proc(uri_list: cstring) -> ^cstring ---
		uri_params_iter_init :: proc(iter: ^UriParamsIter, params: cstring, length: ssize, separators: cstring, flags: UriParamsFlags) ---
		uri_params_iter_next :: proc(iter: ^UriParamsIter, attribute: ^cstring, value: ^cstring, error: ^^Error) -> boolean ---
		uri_parse :: proc(uri_string: cstring, flags: UriFlags, error: ^^Error) -> ^Uri ---
		uri_parse_params :: proc(params: cstring, length: ssize, separators: cstring, flags: UriParamsFlags, error: ^^Error) -> ^HashTable ---
		uri_parse_relative :: proc(base_uri: ^Uri, uri_ref: cstring, flags: UriFlags, error: ^^Error) -> ^Uri ---
		uri_parse_scheme :: proc(uri: cstring) -> cstring ---
		uri_peek_scheme :: proc(uri: cstring) -> cstring ---
		uri_ref :: proc(uri: ^Uri) -> ^Uri ---
		uri_resolve_relative :: proc(base_uri_string: cstring, uri_ref: cstring, flags: UriFlags, error: ^^Error) -> cstring ---
		uri_split :: proc(uri_ref: cstring, flags: UriFlags, scheme: ^cstring, userinfo: ^cstring, host: ^cstring, port: ^int_, path: ^cstring, query: ^cstring, fragment: ^cstring, error: ^^Error) -> boolean ---
		uri_split_network :: proc(uri_string: cstring, flags: UriFlags, scheme: ^cstring, host: ^cstring, port: ^int_, error: ^^Error) -> boolean ---
		uri_split_with_user :: proc(uri_ref: cstring, flags: UriFlags, scheme: ^cstring, user: ^cstring, password: ^cstring, auth_params: ^cstring, host: ^cstring, port: ^int_, path: ^cstring, query: ^cstring, fragment: ^cstring, error: ^^Error) -> boolean ---
		uri_to_string :: proc(uri: ^Uri) -> cstring ---
		uri_to_string_partial :: proc(uri: ^Uri, flags: UriHideFlags) -> cstring ---
		uri_unescape_bytes :: proc(escaped_string: cstring, length: ssize, illegal_characters: cstring, error: ^^Error) -> ^Bytes ---
		uri_unescape_segment :: proc(escaped_string: cstring, escaped_string_end: cstring, illegal_characters: cstring) -> cstring ---
		uri_unescape_string :: proc(escaped_string: cstring, illegal_characters: cstring) -> cstring ---
		uri_unref :: proc(uri: ^Uri) ---
		usleep :: proc(microseconds: ulong) ---
		utf16_to_ucs4 :: proc(str: ^unichar2, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> ^unichar ---
		utf16_to_utf8 :: proc(str: ^unichar2, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> cstring ---
		utf8_casefold :: proc(str: cstring, len: ssize) -> cstring ---
		utf8_collate :: proc(str1: cstring, str2: cstring) -> int_ ---
		utf8_collate_key :: proc(str: cstring, len: ssize) -> cstring ---
		utf8_collate_key_for_filename :: proc(str: cstring, len: ssize) -> cstring ---
		utf8_find_next_char :: proc(p: cstring, end: cstring) -> cstring ---
		utf8_find_prev_char :: proc(str: cstring, p: cstring) -> cstring ---
		utf8_get_char :: proc(p: cstring) -> unichar ---
		utf8_get_char_validated :: proc(p: cstring, max_len: ssize) -> unichar ---
		utf8_make_valid :: proc(str: cstring, len: ssize) -> cstring ---
		utf8_normalize :: proc(str: cstring, len: ssize, mode: NormalizeMode) -> cstring ---
		utf8_offset_to_pointer :: proc(str: cstring, offset_p: long) -> cstring ---
		utf8_pointer_to_offset :: proc(str: cstring, pos: cstring) -> long ---
		utf8_prev_char :: proc(p: cstring) -> cstring ---
		utf8_strchr :: proc(p: cstring, len: ssize, c: unichar) -> cstring ---
		utf8_strdown :: proc(str: cstring, len: ssize) -> cstring ---
		utf8_strlen :: proc(p: cstring, max: ssize) -> long ---
		utf8_strncpy :: proc(dest: cstring, src: cstring, n: size) -> cstring ---
		utf8_strrchr :: proc(p: cstring, len: ssize, c: unichar) -> cstring ---
		utf8_strreverse :: proc(str: cstring, len: ssize) -> cstring ---
		utf8_strup :: proc(str: cstring, len: ssize) -> cstring ---
		utf8_substring :: proc(str: cstring, start_pos: long, end_pos: long) -> cstring ---
		utf8_to_ucs4 :: proc(str: cstring, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> ^unichar ---
		utf8_to_ucs4_fast :: proc(str: cstring, len: long, items_written: ^long) -> ^unichar ---
		utf8_to_utf16 :: proc(str: cstring, len: long, items_read: ^long, items_written: ^long, error: ^^Error) -> ^unichar2 ---
		utf8_truncate_middle :: proc(string_p: cstring, truncate_length: size) -> cstring ---
		utf8_validate :: proc(str: cstring, max_len: ssize, end: ^cstring) -> boolean ---
		utf8_validate_len :: proc(str: cstring, max_len: size, end: ^cstring) -> boolean ---
		uuid_string_is_valid :: proc(str: cstring) -> boolean ---
		uuid_string_random :: proc() -> cstring ---
		variant_builder_add :: proc(builder: ^VariantBuilder, format_string: cstring, #c_vararg var_args: ..any) ---
		variant_builder_add_parsed :: proc(builder: ^VariantBuilder, format: cstring, #c_vararg var_args: ..any) ---
		variant_builder_add_value :: proc(builder: ^VariantBuilder, value: ^Variant) ---
		variant_builder_clear :: proc(builder: ^VariantBuilder) ---
		variant_builder_close :: proc(builder: ^VariantBuilder) ---
		variant_builder_end :: proc(builder: ^VariantBuilder) -> ^Variant ---
		variant_builder_init :: proc(builder: ^VariantBuilder, type: ^VariantType) ---
		variant_builder_new :: proc(type: ^VariantType) -> ^VariantBuilder ---
		variant_builder_open :: proc(builder: ^VariantBuilder, type: ^VariantType) ---
		variant_builder_ref :: proc(builder: ^VariantBuilder) -> ^VariantBuilder ---
		variant_builder_unref :: proc(builder: ^VariantBuilder) ---
		variant_byteswap :: proc(value: ^Variant) -> ^Variant ---
		variant_check_format_string :: proc(value: ^Variant, format_string: cstring, copy_only: boolean) -> boolean ---
		variant_classify :: proc(value: ^Variant) -> VariantClass ---
		variant_compare :: proc(one: constpointer, two: constpointer) -> int_ ---
		variant_dict_clear :: proc(dict: ^VariantDict) ---
		variant_dict_contains :: proc(dict: ^VariantDict, key: cstring) -> boolean ---
		variant_dict_end :: proc(dict: ^VariantDict) -> ^Variant ---
		variant_dict_init :: proc(dict: ^VariantDict, from_asv: ^Variant) ---
		variant_dict_insert :: proc(dict: ^VariantDict, key: cstring, format_string: cstring, #c_vararg var_args: ..any) ---
		variant_dict_insert_value :: proc(dict: ^VariantDict, key: cstring, value: ^Variant) ---
		variant_dict_lookup :: proc(dict: ^VariantDict, key: cstring, format_string: cstring, #c_vararg var_args: ..any) -> boolean ---
		variant_dict_lookup_value :: proc(dict: ^VariantDict, key: cstring, expected_type: ^VariantType) -> ^Variant ---
		variant_dict_new :: proc(from_asv: ^Variant) -> ^VariantDict ---
		variant_dict_ref :: proc(dict: ^VariantDict) -> ^VariantDict ---
		variant_dict_remove :: proc(dict: ^VariantDict, key: cstring) -> boolean ---
		variant_dict_unref :: proc(dict: ^VariantDict) ---
		variant_dup_bytestring :: proc(value: ^Variant, length: ^size) -> cstring ---
		variant_dup_bytestring_array :: proc(value: ^Variant, length: ^size) -> ^cstring ---
		variant_dup_objv :: proc(value: ^Variant, length: ^size) -> ^cstring ---
		variant_dup_string :: proc(value: ^Variant, length: ^size) -> cstring ---
		variant_dup_strv :: proc(value: ^Variant, length: ^size) -> ^cstring ---
		variant_equal :: proc(one: constpointer, two: constpointer) -> boolean ---
		variant_get :: proc(value: ^Variant, format_string: cstring, #c_vararg var_args: ..any) ---
		variant_get_boolean :: proc(value: ^Variant) -> boolean ---
		variant_get_byte :: proc(value: ^Variant) -> uint8 ---
		variant_get_bytestring :: proc(value: ^Variant) -> cstring ---
		variant_get_bytestring_array :: proc(value: ^Variant, length: ^size) -> ^cstring ---
		variant_get_child :: proc(value: ^Variant, index_: size, format_string: cstring, #c_vararg var_args: ..any) ---
		variant_get_child_value :: proc(value: ^Variant, index_: size) -> ^Variant ---
		variant_get_data :: proc(value: ^Variant) -> constpointer ---
		variant_get_data_as_bytes :: proc(value: ^Variant) -> ^Bytes ---
		variant_get_double :: proc(value: ^Variant) -> double ---
		variant_get_fixed_array :: proc(value: ^Variant, n_elements: ^size, element_size: size) -> constpointer ---
		variant_get_handle :: proc(value: ^Variant) -> int32 ---
		variant_get_int16 :: proc(value: ^Variant) -> int16 ---
		variant_get_int32 :: proc(value: ^Variant) -> int32 ---
		variant_get_int64 :: proc(value: ^Variant) -> int64 ---
		variant_get_maybe :: proc(value: ^Variant) -> ^Variant ---
		variant_get_normal_form :: proc(value: ^Variant) -> ^Variant ---
		variant_get_objv :: proc(value: ^Variant, length: ^size) -> ^cstring ---
		variant_get_size :: proc(value: ^Variant) -> size ---
		variant_get_string :: proc(value: ^Variant, length: ^size) -> cstring ---
		variant_get_strv :: proc(value: ^Variant, length: ^size) -> ^cstring ---
		variant_get_type :: proc(value: ^Variant) -> ^VariantType ---
		variant_get_type_string :: proc(value: ^Variant) -> cstring ---
		variant_get_uint16 :: proc(value: ^Variant) -> uint16 ---
		variant_get_uint32 :: proc(value: ^Variant) -> uint32 ---
		variant_get_uint64 :: proc(value: ^Variant) -> uint64 ---
		variant_get_variant :: proc(value: ^Variant) -> ^Variant ---
		variant_hash :: proc(value: constpointer) -> uint_ ---
		variant_is_container :: proc(value: ^Variant) -> boolean ---
		variant_is_floating :: proc(value: ^Variant) -> boolean ---
		variant_is_normal_form :: proc(value: ^Variant) -> boolean ---
		variant_is_object_path :: proc(string_p: cstring) -> boolean ---
		variant_is_of_type :: proc(value: ^Variant, type: ^VariantType) -> boolean ---
		variant_is_signature :: proc(string_p: cstring) -> boolean ---
		variant_iter_copy :: proc(iter: ^VariantIter) -> ^VariantIter ---
		variant_iter_free :: proc(iter: ^VariantIter) ---
		variant_iter_init :: proc(iter: ^VariantIter, value: ^Variant) -> size ---
		variant_iter_loop :: proc(iter: ^VariantIter, format_string: cstring, #c_vararg var_args: ..any) -> boolean ---
		variant_iter_n_children :: proc(iter: ^VariantIter) -> size ---
		variant_iter_new :: proc(value: ^Variant) -> ^VariantIter ---
		variant_iter_next :: proc(iter: ^VariantIter, format_string: cstring, #c_vararg var_args: ..any) -> boolean ---
		variant_iter_next_value :: proc(iter: ^VariantIter) -> ^Variant ---
		variant_lookup :: proc(dictionary: ^Variant, key: cstring, format_string: cstring, #c_vararg var_args: ..any) -> boolean ---
		variant_lookup_value :: proc(dictionary: ^Variant, key: cstring, expected_type: ^VariantType) -> ^Variant ---
		variant_n_children :: proc(value: ^Variant) -> size ---
		variant_new :: proc(format_string: cstring, #c_vararg var_args: ..any) -> ^Variant ---
		variant_new_array :: proc(child_type: ^VariantType, children: ^^Variant, n_children: size) -> ^Variant ---
		variant_new_boolean :: proc(value: boolean) -> ^Variant ---
		variant_new_byte :: proc(value: uint8) -> ^Variant ---
		variant_new_bytestring :: proc(string_p: cstring) -> ^Variant ---
		variant_new_bytestring_array :: proc(strv: ^cstring, length: ssize) -> ^Variant ---
		variant_new_dict_entry :: proc(key: ^Variant, value: ^Variant) -> ^Variant ---
		variant_new_double :: proc(value: double) -> ^Variant ---
		variant_new_fixed_array :: proc(element_type: ^VariantType, elements: constpointer, n_elements: size, element_size: size) -> ^Variant ---
		variant_new_from_bytes :: proc(type: ^VariantType, bytes: ^Bytes, trusted: boolean) -> ^Variant ---
		variant_new_from_data :: proc(type: ^VariantType, data: constpointer, size_p: size, trusted: boolean, notify: DestroyNotify, user_data: pointer) -> ^Variant ---
		variant_new_handle :: proc(value: int32) -> ^Variant ---
		variant_new_int16 :: proc(value: int16) -> ^Variant ---
		variant_new_int32 :: proc(value: int32) -> ^Variant ---
		variant_new_int64 :: proc(value: int64) -> ^Variant ---
		variant_new_maybe :: proc(child_type: ^VariantType, child: ^Variant) -> ^Variant ---
		variant_new_object_path :: proc(object_path: cstring) -> ^Variant ---
		variant_new_objv :: proc(strv: ^cstring, length: ssize) -> ^Variant ---
		variant_new_parsed :: proc(format: cstring, #c_vararg var_args: ..any) -> ^Variant ---
		variant_new_printf :: proc(format_string: cstring, #c_vararg var_args: ..any) -> ^Variant ---
		variant_new_signature :: proc(signature: cstring) -> ^Variant ---
		variant_new_string :: proc(string_p: cstring) -> ^Variant ---
		variant_new_strv :: proc(strv: ^cstring, length: ssize) -> ^Variant ---
		variant_new_take_string :: proc(string_p: cstring) -> ^Variant ---
		variant_new_tuple :: proc(children: ^^Variant, n_children: size) -> ^Variant ---
		variant_new_uint16 :: proc(value: uint16) -> ^Variant ---
		variant_new_uint32 :: proc(value: uint32) -> ^Variant ---
		variant_new_uint64 :: proc(value: uint64) -> ^Variant ---
		variant_new_variant :: proc(value: ^Variant) -> ^Variant ---
		variant_parse :: proc(type: ^VariantType, text: cstring, limit: cstring, endptr: ^cstring, error: ^^Error) -> ^Variant ---
		variant_parse_error_print_context :: proc(error: ^Error, source_str: cstring) -> cstring ---
		variant_parse_error_quark :: proc() -> Quark ---
		variant_parse_error_quark :: proc() -> Quark ---
		variant_parser_get_error_quark :: proc() -> Quark ---
		variant_print :: proc(value: ^Variant, type_annotate: boolean) -> cstring ---
		variant_print_string :: proc(value: ^Variant, string_p: ^String, type_annotate: boolean) -> ^String ---
		variant_ref :: proc(value: ^Variant) -> ^Variant ---
		variant_ref_sink :: proc(value: ^Variant) -> ^Variant ---
		variant_store :: proc(value: ^Variant, data: pointer) ---
		variant_take_ref :: proc(value: ^Variant) -> ^Variant ---
		variant_type_checked_ :: proc(type_string: cstring) -> ^VariantType ---
		variant_type_copy :: proc(type: ^VariantType) -> ^VariantType ---
		variant_type_dup_string :: proc(type: ^VariantType) -> cstring ---
		variant_type_element :: proc(type: ^VariantType) -> ^VariantType ---
		variant_type_equal :: proc(type1: constpointer, type2: constpointer) -> boolean ---
		variant_type_first :: proc(type: ^VariantType) -> ^VariantType ---
		variant_type_free :: proc(type: ^VariantType) ---
		variant_type_get_string_length :: proc(type: ^VariantType) -> size ---
		variant_type_hash :: proc(type: constpointer) -> uint_ ---
		variant_type_is_array :: proc(type: ^VariantType) -> boolean ---
		variant_type_is_basic :: proc(type: ^VariantType) -> boolean ---
		variant_type_is_container :: proc(type: ^VariantType) -> boolean ---
		variant_type_is_definite :: proc(type: ^VariantType) -> boolean ---
		variant_type_is_dict_entry :: proc(type: ^VariantType) -> boolean ---
		variant_type_is_maybe :: proc(type: ^VariantType) -> boolean ---
		variant_type_is_subtype_of :: proc(type: ^VariantType, supertype: ^VariantType) -> boolean ---
		variant_type_is_tuple :: proc(type: ^VariantType) -> boolean ---
		variant_type_is_variant :: proc(type: ^VariantType) -> boolean ---
		variant_type_key :: proc(type: ^VariantType) -> ^VariantType ---
		variant_type_n_items :: proc(type: ^VariantType) -> size ---
		variant_type_new :: proc(type_string: cstring) -> ^VariantType ---
		variant_type_new_array :: proc(element: ^VariantType) -> ^VariantType ---
		variant_type_new_dict_entry :: proc(key: ^VariantType, value: ^VariantType) -> ^VariantType ---
		variant_type_new_maybe :: proc(element: ^VariantType) -> ^VariantType ---
		variant_type_new_tuple :: proc(items: [^]^VariantType, length: int_) -> ^VariantType ---
		variant_type_next :: proc(type: ^VariantType) -> ^VariantType ---
		variant_type_peek_string :: proc(type: ^VariantType) -> cstring ---
		variant_type_string_get_depth_ :: proc(type_string: cstring) -> size ---
		variant_type_string_is_valid :: proc(type_string: cstring) -> boolean ---
		variant_type_string_scan :: proc(string_p: cstring, limit: cstring, endptr: ^cstring) -> boolean ---
		variant_type_value :: proc(type: ^VariantType) -> ^VariantType ---
		variant_unref :: proc(value: ^Variant) ---
		warn_message :: proc(domain: cstring, file: cstring, line: i32, func: cstring, warnexpr: cstring) ---

	types
		Allocator :: struct #packed {}
		Array :: struct {data: [^]byte, len: uint_}
		AsciiType :: bit_set[AsciiTypeBit]
		AsciiTypeBit :: enum u32 {ASCII_ALNUM = 0, ASCII_ALPHA = 1, ASCII_CNTRL = 2, ASCII_DIGIT = 3, ASCII_GRAPH = 4, ASCII_LOWER = 5, ASCII_PRINT = 6, ASCII_PUNCT = 7, ASCII_SPACE = 8, ASCII_UPPER = 9, ASCII_XDIGIT = 10}
		AsyncQueue :: struct #packed {}
		BookmarkFile :: struct #packed {}
		BookmarkFileError :: enum u32 {INVALID_URI = 0, INVALID_VALUE = 1, APP_NOT_REGISTERED = 2, URI_NOT_FOUND = 3, READ = 4, UNKNOWN_ENCODING = 5, WRITE = 6, FILE_NOT_FOUND = 7}
		ByteArray :: struct {data: [^]uint8, len: uint_}
		Bytes :: struct #packed {}
		Cache :: struct #packed {}
		CacheDestroyFunc :: #type proc(value: pointer)
		CacheDupFunc :: #type proc(value: pointer) -> pointer
		CacheNewFunc :: #type proc(key: pointer) -> pointer
		Checksum :: struct #packed {}
		ChecksumType :: enum u32 {CHECKSUM_MD5 = 0, CHECKSUM_SHA1 = 1, CHECKSUM_SHA256 = 2, CHECKSUM_SHA512 = 3, CHECKSUM_SHA384 = 4}
		ChildWatchFunc :: #type proc(pid: Pid, wait_status: int_, user_data: pointer)
		ClearHandleFunc :: #type proc(handle_id: uint_)
		CompareDataFunc :: #type proc(a: constpointer, b: constpointer, user_data: pointer) -> int_
		CompareFunc :: #type proc(a: constpointer, b: constpointer) -> int_
		Completion :: struct {items: ^List, func: CompletionFunc, prefix: cstring, cache: ^List, strncmp_func: CompletionStrncmpFunc}
		CompletionFunc :: #type proc(item: pointer) -> cstring
		CompletionStrncmpFunc :: #type proc(s1: cstring, s2: cstring, n: size) -> int_
		Cond :: struct {p: pointer, i: [2]uint_}
		ConvertError :: enum u32 {NO_CONVERSION = 0, ILLEGAL_SEQUENCE = 1, FAILED = 2, PARTIAL_INPUT = 3, BAD_URI = 4, NOT_ABSOLUTE_PATH = 5, NO_MEMORY = 6, EMBEDDED_NUL = 7}
		CopyFunc :: #type proc(src: constpointer, data: pointer) -> pointer
		Data :: struct #packed {}
		DataForeachFunc :: #type proc(key_id: Quark, data: pointer, user_data: pointer)
		Date :: [8]u8
		DateDMY :: enum u32 {DATE_DAY = 0, DATE_MONTH = 1, DATE_YEAR = 2}
		DateDay :: uint8
		DateMonth :: enum u32 {DATE_BAD_MONTH = 0, DATE_JANUARY = 1, DATE_FEBRUARY = 2, DATE_MARCH = 3, DATE_APRIL = 4, DATE_MAY = 5, DATE_JUNE = 6, DATE_JULY = 7, DATE_AUGUST = 8, DATE_SEPTEMBER = 9, DATE_OCTOBER = 10, DATE_NOVEMBER = 11, DATE_DECEMBER = 12}
		DateTime :: struct #packed {}
		DateWeekday :: enum u32 {DATE_BAD_WEEKDAY = 0, DATE_MONDAY = 1, DATE_TUESDAY = 2, DATE_WEDNESDAY = 3, DATE_THURSDAY = 4, DATE_FRIDAY = 5, DATE_SATURDAY = 6, DATE_SUNDAY = 7}
		DateYear :: uint16
		DebugKey :: struct {key: cstring, value: uint_}
		DestroyNotify :: #type proc(data: pointer)
		Dir :: struct #packed {}
		DoubleIEEE754 :: double
		DuplicateFunc :: #type proc(data: pointer, user_data: pointer) -> pointer
		EqualFunc :: #type proc(a: constpointer, b: constpointer) -> boolean
		EqualFuncFull :: #type proc(a: constpointer, b: constpointer, user_data: pointer) -> boolean
		Error :: struct {domain: Quark, code: int_, message: cstring}
		ErrorClearFunc :: #type proc(error: ^Error)
		ErrorCopyFunc :: #type proc(src_error: ^Error, dest_error: ^Error)
		ErrorInitFunc :: #type proc(error: ^Error)
		ErrorType :: enum u32 {ERR_UNKNOWN = 0, ERR_UNEXP_EOF = 1, ERR_UNEXP_EOF_IN_STRING = 2, ERR_UNEXP_EOF_IN_COMMENT = 3, ERR_NON_DIGIT_IN_CONST = 4, ERR_DIGIT_RADIX = 5, ERR_FLOAT_RADIX = 6, ERR_FLOAT_MALFORMED = 7}
		FileError :: enum u32 {EXIST = 0, ISDIR = 1, ACCES = 2, NAMETOOLONG = 3, NOENT = 4, NOTDIR = 5, NXIO = 6, NODEV = 7, ROFS = 8, TXTBSY = 9, FAULT = 10, LOOP = 11, NOSPC = 12, NOMEM = 13, MFILE = 14, NFILE = 15, BADF = 16, INVAL = 17, PIPE = 18, AGAIN = 19, INTR = 20, IO = 21, PERM = 22, NOSYS = 23, FAILED = 24}
		FileSetContentsFlags :: bit_set[FileSetContentsFlagsBit]
		FileSetContentsFlagsBit :: enum u32 {FILE_SET_CONTENTS_CONSISTENT = 0, FILE_SET_CONTENTS_DURABLE = 1, FILE_SET_CONTENTS_ONLY_EXISTING = 2}
		FileTest :: bit_set[FileTestBit]
		FileTestBit :: enum u32 {IS_REGULAR = 0, IS_SYMLINK = 1, IS_DIR = 2, IS_EXECUTABLE = 3, EXISTS = 4}
		FloatIEEE754 :: float
		FormatSizeFlags :: bit_set[FormatSizeFlagsBit]
		FormatSizeFlagsBit :: enum u32 {FORMAT_SIZE_LONG_FORMAT = 0, FORMAT_SIZE_IEC_UNITS = 1, FORMAT_SIZE_BITS = 2, FORMAT_SIZE_ONLY_VALUE = 3, FORMAT_SIZE_ONLY_UNIT = 4}
		FreeFunc :: #type proc(data: pointer)
		Func :: #type proc(data: pointer, user_data: pointer)
		HFunc :: #type proc(key: pointer, value: pointer, user_data: pointer)
		HRFunc :: #type proc(key: pointer, value: pointer, user_data: pointer) -> boolean
		HashFunc :: #type proc(key: constpointer) -> uint_
		HashTable :: struct #packed {}
		HashTableIter :: struct {dummy1: pointer, dummy2: pointer, dummy3: pointer, dummy4: i32, dummy5: boolean, dummy6: pointer}
		Hmac :: struct #packed {}
		Hook :: struct {data: pointer, next: ^Hook, prev: ^Hook, ref_count: uint_, hook_id: ulong, flags: uint_, func: pointer, destroy: DestroyNotify}
		HookCheckFunc :: #type proc(data: pointer) -> boolean
		HookCheckMarshaller :: #type proc(hook: ^Hook, marshal_data: pointer) -> boolean
		HookCompareFunc :: #type proc(new_hook: ^Hook, sibling: ^Hook) -> int_
		HookFinalizeFunc :: #type proc(hook_list: ^HookList, hook: ^Hook)
		HookFindFunc :: #type proc(hook: ^Hook, data: pointer) -> boolean
		HookFlagMask :: bit_set[HookFlagMaskBit]
		HookFlagMaskBit :: enum u32 {HOOK_FLAG_ACTIVE = 0, HOOK_FLAG_IN_CALL = 1}
		HookFunc :: #type proc(data: pointer)
		HookList :: struct #packed {}
		HookMarshaller :: #type proc(hook: ^Hook, marshal_data: pointer)
		IConv :: ^struct #packed {}
		IOChannel :: struct #packed {}
		IOChannelError :: enum u32 {FBIG = 0, INVAL = 1, IO = 2, ISDIR = 3, NOSPC = 4, NXIO = 5, OVERFLOW = 6, PIPE = 7, FAILED = 8}
		IOCondition :: bit_set[IOConditionBit]
		IOConditionBit :: enum u32 {IO_IN = 0, IO_OUT = 2, IO_PRI = 1, IO_ERR = 3, IO_HUP = 4, IO_NVAL = 5}
		IOError :: enum u32 {NONE = 0, AGAIN = 1, INVAL = 2, UNKNOWN = 3}
		IOFlags :: bit_set[IOFlagsBit]
		IOFlagsBit :: enum u32 {IO_FLAG_APPEND = 0, IO_FLAG_NONBLOCK = 1, IO_FLAG_IS_READABLE = 2, IO_FLAG_IS_WRITABLE = 3, IO_FLAG_IS_WRITEABLE = 3, IO_FLAG_IS_SEEKABLE = 4}
		IOFunc :: #type proc(source: ^IOChannel, condition: IOCondition, data: pointer) -> boolean
		IOFuncs :: struct {io_read: io_read_func_ptr_anon_13, io_write: io_write_func_ptr_anon_14, io_seek: io_seek_func_ptr_anon_15, io_close: io_close_func_ptr_anon_16, io_create_watch: io_create_watch_func_ptr_anon_17, io_free: io_free_func_ptr_anon_18, io_set_flags: io_set_flags_func_ptr_anon_19, io_get_flags: io_get_flags_func_ptr_anon_20}
		IOStatus :: enum u32 {ERROR = 0, NORMAL = 1, EOF = 2, AGAIN = 3}
		KeyFile :: struct #packed {}
		KeyFileError :: enum u32 {UNKNOWN_ENCODING = 0, PARSE = 1, NOT_FOUND = 2, KEY_NOT_FOUND = 3, GROUP_NOT_FOUND = 4, INVALID_VALUE = 5}
		KeyFileFlags :: bit_set[KeyFileFlagsBit]
		KeyFileFlagsBit :: enum u32 {KEY_FILE_KEEP_COMMENTS = 0, KEY_FILE_KEEP_TRANSLATIONS = 1}
		List :: struct {data: pointer, next: ^List, prev: ^List}
		LogField :: struct {key: cstring, value: constpointer, length: ssize}
		LogFunc :: #type proc(log_domain: cstring, log_level: LogLevelFlags, message: cstring, user_data: pointer)
		LogLevelFlags :: bit_set[LogLevelFlagsBit]
		LogLevelFlagsBit :: enum u32 {LOG_FLAG_RECURSION = 0, LOG_FLAG_FATAL = 1, LOG_LEVEL_ERROR = 2, LOG_LEVEL_CRITICAL = 3, LOG_LEVEL_WARNING = 4, LOG_LEVEL_MESSAGE = 5, LOG_LEVEL_INFO = 6, LOG_LEVEL_DEBUG = 7}
		LogWriterFunc :: #type proc(log_level: LogLevelFlags, fields: [^]LogField, n_fields: size, user_data: pointer) -> LogWriterOutput
		LogWriterOutput :: enum u32 {LOG_WRITER_HANDLED = 1, LOG_WRITER_UNHANDLED = 0}
		MainContext :: struct #packed {}
		MainContextFlags :: bit_set[MainContextFlagsBit]
		MainContextFlagsBit :: enum u32 {OWNERLESS_POLLING = 0}
		MainContextPusher :: rawptr
		MainLoop :: struct #packed {}
		MappedFile :: struct #packed {}
		MarkupCollectType :: enum u32 {MARKUP_COLLECT_INVALID = 0, MARKUP_COLLECT_STRING = 1, MARKUP_COLLECT_STRDUP = 2, MARKUP_COLLECT_BOOLEAN = 3, MARKUP_COLLECT_TRISTATE = 4, MARKUP_COLLECT_OPTIONAL = 65536}
		MarkupError :: enum u32 {BAD_UTF8 = 0, EMPTY = 1, PARSE = 2, UNKNOWN_ELEMENT = 3, UNKNOWN_ATTRIBUTE = 4, INVALID_CONTENT = 5, MISSING_ATTRIBUTE = 6}
		MarkupParseContext :: struct #packed {}
		MarkupParseFlags :: bit_set[MarkupParseFlagsBit]
		MarkupParseFlagsBit :: enum u32 {MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 0, MARKUP_TREAT_CDATA_AS_TEXT = 1, MARKUP_PREFIX_ERROR_POSITION = 2, MARKUP_IGNORE_QUALIFIED = 3}
		MarkupParser :: struct {start_element: start_element_func_ptr_anon_21, end_element: end_element_func_ptr_anon_22, text: text_func_ptr_anon_23, passthrough: passthrough_func_ptr_anon_24, error: error_func_ptr_anon_25}
		MatchInfo :: struct #packed {}
		MemChunk :: struct #packed {}
		MemVTable :: struct {malloc: malloc_func_ptr_anon_0, realloc: realloc_func_ptr_anon_1, free: free_func_ptr_anon_2, calloc: calloc_func_ptr_anon_3, try_malloc: try_malloc_func_ptr_anon_4, try_realloc: try_realloc_func_ptr_anon_5}
		Mutex :: struct #raw_union {p: pointer, i: [2]uint_}
		MutexLocker :: rawptr
		Node :: struct {data: pointer, next: ^Node, prev: ^Node, parent: ^Node, children: ^Node}
		NodeForeachFunc :: #type proc(node: ^Node, data: pointer)
		NodeTraverseFunc :: #type proc(node: ^Node, data: pointer) -> boolean
		NormalizeMode :: enum u32 {NORMALIZE_DEFAULT = 0, NORMALIZE_NFD = 0, NORMALIZE_DEFAULT_COMPOSE = 1, NORMALIZE_NFC = 1, NORMALIZE_ALL = 2, NORMALIZE_NFKD = 2, NORMALIZE_ALL_COMPOSE = 3, NORMALIZE_NFKC = 3}
		NumberParserError :: enum u32 {INVALID = 0, OUT_OF_BOUNDS = 1}
		Once :: struct {status: OnceStatus, retval: pointer}
		OnceStatus :: enum u32 {NOTCALLED = 0, PROGRESS = 1, READY = 2}
		OptionArg :: enum u32 {NONE = 0, STRING = 1, INT = 2, CALLBACK = 3, FILENAME = 4, STRING_ARRAY = 5, FILENAME_ARRAY = 6, DOUBLE = 7, INT64 = 8}
		OptionArgFunc :: #type proc(option_name: cstring, value: cstring, data: pointer, error: ^^Error) -> boolean
		OptionContext :: struct #packed {}
		OptionEntry :: struct {long_name: cstring, short_name: char, flags: int_, arg: OptionArg, arg_data: pointer, description: cstring, arg_description: cstring}
		OptionError :: enum u32 {UNKNOWN_OPTION = 0, BAD_VALUE = 1, FAILED = 2}
		OptionErrorFunc :: #type proc(context_p: ^OptionContext, group: ^OptionGroup, data: pointer, error: ^^Error)
		OptionFlags :: bit_set[OptionFlagsBit]
		OptionFlagsBit :: enum u32 {OPTION_FLAG_HIDDEN = 0, OPTION_FLAG_IN_MAIN = 1, OPTION_FLAG_REVERSE = 2, OPTION_FLAG_NO_ARG = 3, OPTION_FLAG_FILENAME = 4, OPTION_FLAG_OPTIONAL_ARG = 5, OPTION_FLAG_NOALIAS = 6}
		OptionGroup :: struct #packed {}
		OptionParseFunc :: #type proc(context_p: ^OptionContext, group: ^OptionGroup, data: pointer, error: ^^Error) -> boolean
		PathBuf :: struct {dummy: [8]pointer}
		PatternSpec :: struct #packed {}
		Pid :: i32
		PollFD :: struct {fd: int_, events: ushort, revents: ushort}
		PollFunc :: #type proc(ufds: [^]PollFD, nfsd: uint_, timeout_: int_) -> int_
		PrintFunc :: #type proc(string_p: cstring)
		Private :: struct {p: pointer, notify: DestroyNotify, future: [2]pointer}
		PtrArray :: struct {pdata: [^]pointer, len: uint_}
		Quark :: uint32
		Queue :: struct {head: ^List, tail: ^List, length: uint_}
		RWLock :: struct {p: pointer, i: [2]uint_}
		RWLockReaderLocker :: rawptr
		RWLockWriterLocker :: rawptr
		Rand :: struct #packed {}
		RecMutex :: struct {p: pointer, i: [2]uint_}
		RecMutexLocker :: rawptr
		RefString :: char
		Regex :: struct #packed {}
		RegexCompileFlags :: bit_set[RegexCompileFlagsBit]
		RegexCompileFlagsBit :: enum u32 {REGEX_CASELESS = 0, REGEX_MULTILINE = 1, REGEX_DOTALL = 2, REGEX_EXTENDED = 3, REGEX_ANCHORED = 4, REGEX_DOLLAR_ENDONLY = 5, REGEX_UNGREEDY = 9, REGEX_RAW = 11, REGEX_NO_AUTO_CAPTURE = 12, REGEX_OPTIMIZE = 13, REGEX_FIRSTLINE = 18, REGEX_DUPNAMES = 19, REGEX_NEWLINE_CR = 20, REGEX_NEWLINE_LF = 21, REGEX_BSR_ANYCRLF = 23, REGEX_JAVASCRIPT_COMPAT = 25}
		RegexError :: enum u32 {COMPILE = 0, OPTIMIZE = 1, REPLACE = 2, MATCH = 3, INTERNAL = 4, STRAY_BACKSLASH = 101, MISSING_CONTROL_CHAR = 102, UNRECOGNIZED_ESCAPE = 103, QUANTIFIERS_OUT_OF_ORDER = 104, QUANTIFIER_TOO_BIG = 105, UNTERMINATED_CHARACTER_CLASS = 106, INVALID_ESCAPE_IN_CHARACTER_CLASS = 107, RANGE_OUT_OF_ORDER = 108, NOTHING_TO_REPEAT = 109, UNRECOGNIZED_CHARACTER = 112, POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113, UNMATCHED_PARENTHESIS = 114, INEXISTENT_SUBPATTERN_REFERENCE = 115, UNTERMINATED_COMMENT = 118, EXPRESSION_TOO_LARGE = 120, MEMORY_ERROR = 121, VARIABLE_LENGTH_LOOKBEHIND = 125, MALFORMED_CONDITION = 126, TOO_MANY_CONDITIONAL_BRANCHES = 127, ASSERTION_EXPECTED = 128, UNKNOWN_POSIX_CLASS_NAME = 130, POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131, HEX_CODE_TOO_LARGE = 134, INVALID_CONDITION = 135, SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136, INFINITE_LOOP = 140, MISSING_SUBPATTERN_NAME_TERMINATOR = 142, DUPLICATE_SUBPATTERN_NAME = 143, MALFORMED_PROPERTY = 146, UNKNOWN_PROPERTY = 147, SUBPATTERN_NAME_TOO_LONG = 148, TOO_MANY_SUBPATTERNS = 149, INVALID_OCTAL_VALUE = 151, TOO_MANY_BRANCHES_IN_DEFINE = 154, DEFINE_REPETION = 155, INCONSISTENT_NEWLINE_OPTIONS = 156, MISSING_BACK_REFERENCE = 157, INVALID_RELATIVE_REFERENCE = 158, BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159, UNKNOWN_BACKTRACKING_CONTROL_VERB = 160, NUMBER_TOO_BIG = 161, MISSING_SUBPATTERN_NAME = 162, MISSING_DIGIT = 163, INVALID_DATA_CHARACTER = 164, EXTRA_SUBPATTERN_NAME = 165, BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166, INVALID_CONTROL_CHAR = 168, MISSING_NAME = 169, NOT_SUPPORTED_IN_CLASS = 171, TOO_MANY_FORWARD_REFERENCES = 172, NAME_TOO_LONG = 175, CHARACTER_VALUE_TOO_LARGE = 176}
		RegexEvalCallback :: #type proc(match_info: ^MatchInfo, result: ^String, user_data: pointer) -> boolean
		RegexMatchFlags :: bit_set[RegexMatchFlagsBit]
		RegexMatchFlagsBit :: enum u32 {REGEX_MATCH_ANCHORED = 4, REGEX_MATCH_NOTBOL = 7, REGEX_MATCH_NOTEOL = 8, REGEX_MATCH_NOTEMPTY = 10, REGEX_MATCH_PARTIAL = 15, REGEX_MATCH_NEWLINE_CR = 20, REGEX_MATCH_NEWLINE_LF = 21, REGEX_MATCH_NEWLINE_ANY = 22, REGEX_MATCH_BSR_ANYCRLF = 23, REGEX_MATCH_BSR_ANY = 24, REGEX_MATCH_PARTIAL_SOFT = 15, REGEX_MATCH_PARTIAL_HARD = 27, REGEX_MATCH_NOTEMPTY_ATSTART = 28}
		Relation :: struct #packed {}
		SList :: struct {data: pointer, next: ^SList}
		Scanner :: struct {user_data: pointer, max_parse_errors: uint_, parse_errors: uint_, input_name: cstring, qdata: ^Data, config: ^ScannerConfig, token: TokenType, value: TokenValue, line: uint_, position: uint_, next_token: TokenType, next_value: TokenValue, next_line: uint_, next_position: uint_, symbol_table: ^HashTable, input_fd: int_, text: cstring, text_end: cstring, buffer: ^byte, scope_id: uint_, msg_handler: ScannerMsgFunc}
		ScannerConfig :: struct #packed {}
		ScannerMsgFunc :: #type proc(scanner: ^Scanner, message: cstring, error: boolean)
		SeekType :: enum u32 {SEEK_CUR = 0, SEEK_SET = 1, SEEK_END = 2}
		Sequence :: struct #packed {}
		SequenceIter :: SequenceNode
		SequenceIterCompareFunc :: #type proc(a: ^SequenceIter, b: ^SequenceIter, data: pointer) -> int_
		SequenceNode :: struct #packed {}
		ShellError :: enum u32 {BAD_QUOTING = 0, EMPTY_STRING = 1, FAILED = 2}
		SliceConfig :: enum u32 {ALWAYS_MALLOC = 1, BYPASS_MAGAZINES = 2, WORKING_SET_MSECS = 3, COLOR_INCREMENT = 4, CHUNK_SIZES = 5, CONTENTION_COUNTER = 6}
		Source :: struct {callback_data: pointer, callback_funcs: ^SourceCallbackFuncs, source_funcs: ^SourceFuncs, ref_count: uint_, context_m: ^MainContext, priority: int_, flags: uint_, source_id: uint_, poll_fds: ^SList, prev: ^Source, next: ^Source, name: cstring, priv: ^SourcePrivate}
		SourceCallbackFuncs :: struct {ref: ref_func_ptr_anon_6, unref: unref_func_ptr_anon_7, get: et_func_ptr_anon_8}
		SourceDisposeFunc :: #type proc(source: ^Source)
		SourceDummyMarshal :: #type proc()
		SourceFunc :: #type proc(user_data: pointer) -> boolean
		SourceFuncs :: struct {prepare: prepare_func_ptr_anon_9, check: check_func_ptr_anon_10, dispatch: dispatch_func_ptr_anon_11, finalize: finalize_func_ptr_anon_12, closure_callback: SourceFunc, closure_marshal: SourceDummyMarshal}
		SourceOnceFunc :: #type proc(user_data: pointer)
		SourcePrivate :: struct #packed {}
		SpawnChildSetupFunc :: #type proc(data: pointer)
		SpawnError :: enum u32 {FORK = 0, READ = 1, CHDIR = 2, ACCES = 3, PERM = 4, TOO_BIG = 5, _2BIG = 5, NOEXEC = 6, NAMETOOLONG = 7, NOENT = 8, NOMEM = 9, NOTDIR = 10, LOOP = 11, TXTBUSY = 12, IO = 13, NFILE = 14, MFILE = 15, INVAL = 16, ISDIR = 17, LIBBAD = 18, FAILED = 19}
		SpawnFlags :: bit_set[SpawnFlagsBit]
		SpawnFlagsBit :: enum u32 {SPAWN_LEAVE_DESCRIPTORS_OPEN = 0, SPAWN_DO_NOT_REAP_CHILD = 1, SPAWN_SEARCH_PATH = 2, SPAWN_STDOUT_TO_DEV_NULL = 3, SPAWN_STDERR_TO_DEV_NULL = 4, SPAWN_CHILD_INHERITS_STDIN = 5, SPAWN_FILE_AND_ARGV_ZERO = 6, SPAWN_SEARCH_PATH_FROM_ENVP = 7, SPAWN_CLOEXEC_PIPES = 8, SPAWN_CHILD_INHERITS_STDOUT = 9, SPAWN_CHILD_INHERITS_STDERR = 10, SPAWN_STDIN_FROM_DEV_NULL = 11}
		StaticMutex :: struct {mutex: ^Mutex, unused: posix.pthread_mutex_t}
		StaticPrivate :: struct {index: uint_}
		StaticRWLock :: struct {mutex: StaticMutex, read_cond: ^Cond, write_cond: ^Cond, read_counter: uint_, have_writer: boolean, want_to_read: uint_, want_to_write: uint_}
		StaticRecMutex :: struct {mutex: StaticMutex, depth: uint_, unused: unused_union_anon_51}
		String :: struct {str: cstring, len: size, allocated_len: size}
		StringChunk :: struct #packed {}
		Strv :: ^cstring
		StrvBuilder :: struct #packed {}
		TestCase :: struct #packed {}
		TestConfig :: struct {test_initialized: boolean, test_quick: boolean, test_perf: boolean, test_verbose: boolean, test_quiet: boolean, test_undefined: boolean}
		TestDataFunc :: #type proc(user_data: constpointer)
		TestFileType :: enum u32 {TEST_DIST = 0, TEST_BUILT = 1}
		TestFixtureFunc :: #type proc(fixture: pointer, user_data: constpointer)
		TestFunc :: #type proc()
		TestLogBuffer :: struct {data: [^]String, msgs: ^SList}
		TestLogFatalFunc :: #type proc(log_domain: cstring, log_level: LogLevelFlags, message: cstring, user_data: pointer) -> boolean
		TestLogMsg :: struct {log_type: TestLogType, n_strings: uint_, strings: [^]cstring, n_nums: uint_, nums: [^][16]byte}
		TestLogType :: enum u32 {TEST_LOG_NONE = 0, TEST_LOG_ERROR = 1, TEST_LOG_START_BINARY = 2, TEST_LOG_LIST_CASE = 3, TEST_LOG_SKIP_CASE = 4, TEST_LOG_START_CASE = 5, TEST_LOG_STOP_CASE = 6, TEST_LOG_MIN_RESULT = 7, TEST_LOG_MAX_RESULT = 8, TEST_LOG_MESSAGE = 9, TEST_LOG_START_SUITE = 10, TEST_LOG_STOP_SUITE = 11}
		TestResult :: enum u32 {TEST_RUN_SUCCESS = 0, TEST_RUN_SKIPPED = 1, TEST_RUN_FAILURE = 2, TEST_RUN_INCOMPLETE = 3}
		TestSubprocessFlags :: bit_set[TestSubprocessFlagsBit]
		TestSubprocessFlagsBit :: enum u32 {TEST_SUBPROCESS_INHERIT_STDIN = 0, TEST_SUBPROCESS_INHERIT_STDOUT = 1, TEST_SUBPROCESS_INHERIT_STDERR = 2}
		TestSuite :: struct #packed {}
		TestTrapFlags :: bit_set[TestTrapFlagsBit]
		TestTrapFlagsBit :: enum u32 {TEST_TRAP_SILENCE_STDOUT = 7, TEST_TRAP_SILENCE_STDERR = 8, TEST_TRAP_INHERIT_STDIN = 9}
		Thread :: struct {func: ThreadFunc, data: pointer, joinable: boolean, priority: ThreadPriority}
		ThreadError :: enum u32 {AGAIN = 0}
		ThreadFunc :: #type proc(data: pointer) -> pointer
		ThreadFunctions :: struct {mutex_new: mutex_new_func_ptr_anon_30, mutex_lock: mutex_lock_func_ptr_anon_31, mutex_trylock: mutex_trylock_func_ptr_anon_32, mutex_unlock: mutex_unlock_func_ptr_anon_33, mutex_free: mutex_free_func_ptr_anon_34, cond_new: cond_new_func_ptr_anon_35, cond_signal: cond_signal_func_ptr_anon_36, cond_broadcast: cond_broadcast_func_ptr_anon_37, cond_wait: cond_wait_func_ptr_anon_38, cond_timed_wait: cond_timed_wait_func_ptr_anon_39, cond_free: cond_free_func_ptr_anon_40, private_new: private_new_func_ptr_anon_41, private_get: private_get_func_ptr_anon_42, private_set: private_set_func_ptr_anon_43, thread_create: thread_create_func_ptr_anon_44, thread_yield: thread_yield_func_ptr_anon_45, thread_join: thread_join_func_ptr_anon_46, thread_exit: thread_exit_func_ptr_anon_47, thread_set_priority: thread_set_priority_func_ptr_anon_48, thread_self: thread_self_func_ptr_anon_49, thread_equal: thread_equal_func_ptr_anon_50}
		ThreadPool :: struct {func: Func, user_data: pointer, exclusive: boolean}
		ThreadPriority :: enum u32 {LOW = 0, NORMAL = 1, HIGH = 2, URGENT = 3}
		Time :: int32
		TimeSpan :: int64
		TimeType :: enum u32 {STANDARD = 0, DAYLIGHT = 1, UNIVERSAL = 2}
		TimeVal :: struct {tv_sec: long, tv_usec: long}
		TimeZone :: struct #packed {}
		Timer :: struct #packed {}
		TokenType :: enum u32 {TOKEN_EOF = 0, TOKEN_LEFT_PAREN = 40, TOKEN_RIGHT_PAREN = 41, TOKEN_LEFT_CURLY = 123, TOKEN_RIGHT_CURLY = 125, TOKEN_LEFT_BRACE = 91, TOKEN_RIGHT_BRACE = 93, TOKEN_EQUAL_SIGN = 61, TOKEN_COMMA = 44, TOKEN_NONE = 256, TOKEN_ERROR = 257, TOKEN_CHAR = 258, TOKEN_BINARY = 259, TOKEN_OCTAL = 260, TOKEN_INT = 261, TOKEN_HEX = 262, TOKEN_FLOAT = 263, TOKEN_STRING = 264, TOKEN_SYMBOL = 265, TOKEN_IDENTIFIER = 266, TOKEN_IDENTIFIER_NULL = 267, TOKEN_COMMENT_SINGLE = 268, TOKEN_COMMENT_MULTI = 269, TOKEN_LAST = 270}
		TokenValue :: struct #raw_union {v_symbol: pointer, v_identifier: cstring, v_binary: ulong, v_octal: ulong, v_int: ulong, v_int64: uint64, v_float: double, v_hex: ulong, v_string: cstring, v_comment: cstring, v_char: uchar, v_error: uint_}
		TranslateFunc :: #type proc(str: cstring, data: pointer) -> cstring
		TrashStack :: struct {next: ^TrashStack}
		TraverseFlags :: bit_set[TraverseFlagsBit]
		TraverseFlagsBit :: enum u32 {TRAVERSE_LEAVES = 0, TRAVERSE_NON_LEAVES = 1, TRAVERSE_LEAFS = 0, TRAVERSE_NON_LEAFS = 1}
		TraverseFunc :: #type proc(key: pointer, value: pointer, data: pointer) -> boolean
		TraverseNodeFunc :: #type proc(node: ^TreeNode, data: pointer) -> boolean
		TraverseType :: enum u32 {IN_ORDER = 0, PRE_ORDER = 1, POST_ORDER = 2, LEVEL_ORDER = 3}
		Tree :: struct #packed {}
		TreeNode :: struct #packed {}
		Tuples :: struct {len: uint_}
		UnicodeBreakType :: enum u32 {UNICODE_BREAK_MANDATORY = 0, UNICODE_BREAK_CARRIAGE_RETURN = 1, UNICODE_BREAK_LINE_FEED = 2, UNICODE_BREAK_COMBINING_MARK = 3, UNICODE_BREAK_SURROGATE = 4, UNICODE_BREAK_ZERO_WIDTH_SPACE = 5, UNICODE_BREAK_INSEPARABLE = 6, UNICODE_BREAK_NON_BREAKING_GLUE = 7, UNICODE_BREAK_CONTINGENT = 8, UNICODE_BREAK_SPACE = 9, UNICODE_BREAK_AFTER = 10, UNICODE_BREAK_BEFORE = 11, UNICODE_BREAK_BEFORE_AND_AFTER = 12, UNICODE_BREAK_HYPHEN = 13, UNICODE_BREAK_NON_STARTER = 14, UNICODE_BREAK_OPEN_PUNCTUATION = 15, UNICODE_BREAK_CLOSE_PUNCTUATION = 16, UNICODE_BREAK_QUOTATION = 17, UNICODE_BREAK_EXCLAMATION = 18, UNICODE_BREAK_IDEOGRAPHIC = 19, UNICODE_BREAK_NUMERIC = 20, UNICODE_BREAK_INFIX_SEPARATOR = 21, UNICODE_BREAK_SYMBOL = 22, UNICODE_BREAK_ALPHABETIC = 23, UNICODE_BREAK_PREFIX = 24, UNICODE_BREAK_POSTFIX = 25, UNICODE_BREAK_COMPLEX_CONTEXT = 26, UNICODE_BREAK_AMBIGUOUS = 27, UNICODE_BREAK_UNKNOWN = 28, UNICODE_BREAK_NEXT_LINE = 29, UNICODE_BREAK_WORD_JOINER = 30, UNICODE_BREAK_HANGUL_L_JAMO = 31, UNICODE_BREAK_HANGUL_V_JAMO = 32, UNICODE_BREAK_HANGUL_T_JAMO = 33, UNICODE_BREAK_HANGUL_LV_SYLLABLE = 34, UNICODE_BREAK_HANGUL_LVT_SYLLABLE = 35, UNICODE_BREAK_CLOSE_PARANTHESIS = 36, UNICODE_BREAK_CLOSE_PARENTHESIS = 36, UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER = 37, UNICODE_BREAK_HEBREW_LETTER = 38, UNICODE_BREAK_REGIONAL_INDICATOR = 39, UNICODE_BREAK_EMOJI_BASE = 40, UNICODE_BREAK_EMOJI_MODIFIER = 41, UNICODE_BREAK_ZERO_WIDTH_JOINER = 42, UNICODE_BREAK_AKSARA = 43, UNICODE_BREAK_AKSARA_PRE_BASE = 44, UNICODE_BREAK_AKSARA_START = 45, UNICODE_BREAK_VIRAMA_FINAL = 46, UNICODE_BREAK_VIRAMA = 47}
		UnicodeScript :: enum i32 {INVALID_CODE = -1, COMMON = 0, INHERITED = 1, ARABIC = 2, ARMENIAN = 3, BENGALI = 4, BOPOMOFO = 5, CHEROKEE = 6, COPTIC = 7, CYRILLIC = 8, DESERET = 9, DEVANAGARI = 10, ETHIOPIC = 11, GEORGIAN = 12, GOTHIC = 13, GREEK = 14, GUJARATI = 15, GURMUKHI = 16, HAN = 17, HANGUL = 18, HEBREW = 19, HIRAGANA = 20, KANNADA = 21, KATAKANA = 22, KHMER = 23, LAO = 24, LATIN = 25, MALAYALAM = 26, MONGOLIAN = 27, MYANMAR = 28, OGHAM = 29, OLD_ITALIC = 30, ORIYA = 31, RUNIC = 32, SINHALA = 33, SYRIAC = 34, TAMIL = 35, TELUGU = 36, THAANA = 37, THAI = 38, TIBETAN = 39, CANADIAN_ABORIGINAL = 40, YI = 41, TAGALOG = 42, HANUNOO = 43, BUHID = 44, TAGBANWA = 45, BRAILLE = 46, CYPRIOT = 47, LIMBU = 48, OSMANYA = 49, SHAVIAN = 50, LINEAR_B = 51, TAI_LE = 52, UGARITIC = 53, NEW_TAI_LUE = 54, BUGINESE = 55, GLAGOLITIC = 56, TIFINAGH = 57, SYLOTI_NAGRI = 58, OLD_PERSIAN = 59, KHAROSHTHI = 60, UNKNOWN = 61, BALINESE = 62, CUNEIFORM = 63, PHOENICIAN = 64, PHAGS_PA = 65, NKO = 66, KAYAH_LI = 67, LEPCHA = 68, REJANG = 69, SUNDANESE = 70, SAURASHTRA = 71, CHAM = 72, OL_CHIKI = 73, VAI = 74, CARIAN = 75, LYCIAN = 76, LYDIAN = 77, AVESTAN = 78, BAMUM = 79, EGYPTIAN_HIEROGLYPHS = 80, IMPERIAL_ARAMAIC = 81, INSCRIPTIONAL_PAHLAVI = 82, INSCRIPTIONAL_PARTHIAN = 83, JAVANESE = 84, KAITHI = 85, LISU = 86, MEETEI_MAYEK = 87, OLD_SOUTH_ARABIAN = 88, OLD_TURKIC = 89, SAMARITAN = 90, TAI_THAM = 91, TAI_VIET = 92, BATAK = 93, BRAHMI = 94, MANDAIC = 95, CHAKMA = 96, MEROITIC_CURSIVE = 97, MEROITIC_HIEROGLYPHS = 98, MIAO = 99, SHARADA = 100, SORA_SOMPENG = 101, TAKRI = 102, BASSA_VAH = 103, CAUCASIAN_ALBANIAN = 104, DUPLOYAN = 105, ELBASAN = 106, GRANTHA = 107, KHOJKI = 108, KHUDAWADI = 109, LINEAR_A = 110, MAHAJANI = 111, MANICHAEAN = 112, MENDE_KIKAKUI = 113, MODI = 114, MRO = 115, NABATAEAN = 116, OLD_NORTH_ARABIAN = 117, OLD_PERMIC = 118, PAHAWH_HMONG = 119, PALMYRENE = 120, PAU_CIN_HAU = 121, PSALTER_PAHLAVI = 122, SIDDHAM = 123, TIRHUTA = 124, WARANG_CITI = 125, AHOM = 126, ANATOLIAN_HIEROGLYPHS = 127, HATRAN = 128, MULTANI = 129, OLD_HUNGARIAN = 130, SIGNWRITING = 131, ADLAM = 132, BHAIKSUKI = 133, MARCHEN = 134, NEWA = 135, OSAGE = 136, TANGUT = 137, MASARAM_GONDI = 138, NUSHU = 139, SOYOMBO = 140, ZANABAZAR_SQUARE = 141, DOGRA = 142, GUNJALA_GONDI = 143, HANIFI_ROHINGYA = 144, MAKASAR = 145, MEDEFAIDRIN = 146, OLD_SOGDIAN = 147, SOGDIAN = 148, ELYMAIC = 149, NANDINAGARI = 150, NYIAKENG_PUACHUE_HMONG = 151, WANCHO = 152, CHORASMIAN = 153, DIVES_AKURU = 154, KHITAN_SMALL_SCRIPT = 155, YEZIDI = 156, CYPRO_MINOAN = 157, OLD_UYGHUR = 158, TANGSA = 159, TOTO = 160, VITHKUQI = 161, MATH = 162, KAWI = 163, NAG_MUNDARI = 164}
		UnicodeType :: enum u32 {UNICODE_CONTROL = 0, UNICODE_FORMAT = 1, UNICODE_UNASSIGNED = 2, UNICODE_PRIVATE_USE = 3, UNICODE_SURROGATE = 4, UNICODE_LOWERCASE_LETTER = 5, UNICODE_MODIFIER_LETTER = 6, UNICODE_OTHER_LETTER = 7, UNICODE_TITLECASE_LETTER = 8, UNICODE_UPPERCASE_LETTER = 9, UNICODE_SPACING_MARK = 10, UNICODE_ENCLOSING_MARK = 11, UNICODE_NON_SPACING_MARK = 12, UNICODE_DECIMAL_NUMBER = 13, UNICODE_LETTER_NUMBER = 14, UNICODE_OTHER_NUMBER = 15, UNICODE_CONNECT_PUNCTUATION = 16, UNICODE_DASH_PUNCTUATION = 17, UNICODE_CLOSE_PUNCTUATION = 18, UNICODE_FINAL_PUNCTUATION = 19, UNICODE_INITIAL_PUNCTUATION = 20, UNICODE_OTHER_PUNCTUATION = 21, UNICODE_OPEN_PUNCTUATION = 22, UNICODE_CURRENCY_SYMBOL = 23, UNICODE_MODIFIER_SYMBOL = 24, UNICODE_MATH_SYMBOL = 25, UNICODE_OTHER_SYMBOL = 26, UNICODE_LINE_SEPARATOR = 27, UNICODE_PARAGRAPH_SEPARATOR = 28, UNICODE_SPACE_SEPARATOR = 29}
		Uri :: struct #packed {}
		UriError :: enum u32 {FAILED = 0, BAD_SCHEME = 1, BAD_USER = 2, BAD_PASSWORD = 3, BAD_AUTH_PARAMS = 4, BAD_HOST = 5, BAD_PORT = 6, BAD_PATH = 7, BAD_QUERY = 8, BAD_FRAGMENT = 9}
		UriFlags :: bit_set[UriFlagsBit]
		UriFlagsBit :: enum u32 {PARSE_RELAXED = 0, HAS_PASSWORD = 1, HAS_AUTH_PARAMS = 2, ENCODED = 3, NON_DNS = 4, ENCODED_QUERY = 5, ENCODED_PATH = 6, ENCODED_FRAGMENT = 7, SCHEME_NORMALIZE = 8}
		UriHideFlags :: bit_set[UriHideFlagsBit]
		UriHideFlagsBit :: enum u32 {URI_HIDE_USERINFO = 0, URI_HIDE_PASSWORD = 1, URI_HIDE_AUTH_PARAMS = 2, URI_HIDE_QUERY = 3, URI_HIDE_FRAGMENT = 4}
		UriParamsFlags :: bit_set[UriParamsFlagsBit]
		UriParamsFlagsBit :: enum u32 {URI_PARAMS_CASE_INSENSITIVE = 0, URI_PARAMS_WWW_FORM = 1, URI_PARAMS_PARSE_RELAXED = 2}
		UriParamsIter :: struct {dummy0: int_, dummy1: pointer, dummy2: pointer, dummy3: [256]uint8}
		UserDirectory :: enum u32 {DESKTOP = 0, DOCUMENTS = 1, DOWNLOAD = 2, MUSIC = 3, PICTURES = 4, PUBLIC_SHARE = 5, TEMPLATES = 6, VIDEOS = 7, USER_N_DIRECTORIES = 8}
		Variant :: struct #packed {}
		VariantBuilder :: struct {u: u_union_anon_27}
		VariantClass :: enum u32 {BOOLEAN = 98, BYTE = 121, INT16 = 110, UINT16 = 113, INT32 = 105, UINT32 = 117, INT64 = 120, UINT64 = 116, HANDLE = 104, DOUBLE = 100, STRING = 115, OBJECT_PATH = 111, SIGNATURE = 103, VARIANT = 118, MAYBE = 109, ARRAY = 97, TUPLE = 40, DICT_ENTRY = 123}
		VariantDict :: struct {u: u_union_anon_29}
		VariantIter :: struct {x: [16]uintptr_}
		VariantParseError :: enum u32 {FAILED = 0, BASIC_TYPE_EXPECTED = 1, CANNOT_INFER_TYPE = 2, DEFINITE_TYPE_EXPECTED = 3, INPUT_NOT_AT_END = 4, INVALID_CHARACTER = 5, INVALID_FORMAT_STRING = 6, INVALID_OBJECT_PATH = 7, INVALID_SIGNATURE = 8, INVALID_TYPE_STRING = 9, NO_COMMON_TYPE = 10, NUMBER_OUT_OF_RANGE = 11, NUMBER_TOO_BIG = 12, TYPE_ERROR = 13, UNEXPECTED_TOKEN = 14, UNKNOWN_KEYWORD = 15, UNTERMINATED_STRING_CONSTANT = 16, VALUE_EXPECTED = 17, RECURSION = 18}
		VariantType :: struct #packed {}
		VoidFunc :: #type proc()
		atomicrefcount :: int_
		boolean :: b32
		calloc_func_ptr_anon_3 :: #type proc(n_blocks: size, n_block_bytes: size) -> pointer
		char :: i8
		check_func_ptr_anon_10 :: #type proc(source: ^Source) -> boolean
		cond_broadcast_func_ptr_anon_37 :: #type proc(cond: ^Cond)
		cond_free_func_ptr_anon_40 :: #type proc(cond: ^Cond)
		cond_new_func_ptr_anon_35 :: #type proc() -> ^Cond
		cond_signal_func_ptr_anon_36 :: #type proc(cond: ^Cond)
		cond_timed_wait_func_ptr_anon_39 :: #type proc(cond: ^Cond, mutex: ^Mutex, end_time: ^TimeVal) -> boolean
		cond_wait_func_ptr_anon_38 :: #type proc(cond: ^Cond, mutex: ^Mutex)
		constpointer :: rawptr
		dispatch_func_ptr_anon_11 :: #type proc(source: ^Source, callback: SourceFunc, user_data: pointer) -> boolean
		double :: f64
		end_element_func_ptr_anon_22 :: #type proc(context_p: ^MarkupParseContext, element_name: cstring, user_data: pointer, error: ^^Error)
		error_func_ptr_anon_25 :: #type proc(context_p: ^MarkupParseContext, error: ^Error, user_data: pointer)
		et_func_ptr_anon_8 :: #type proc(cb_data: pointer, source: ^Source, func: ^SourceFunc, data: ^pointer)
		finalize_func_ptr_anon_12 :: #type proc(source: ^Source)
		float :: f32
		free_func_ptr_anon_2 :: #type proc(mem: pointer)
		int16 :: i16
		int32 :: i32
		int64 :: i64
		int8 :: i8
		int_ :: i32
		intptr :: i64
		io_close_func_ptr_anon_16 :: #type proc(channel: ^IOChannel, err: ^^Error) -> IOStatus
		io_create_watch_func_ptr_anon_17 :: #type proc(channel: ^IOChannel, condition: IOCondition) -> ^Source
		io_free_func_ptr_anon_18 :: #type proc(channel: ^IOChannel)
		io_get_flags_func_ptr_anon_20 :: #type proc(channel: ^IOChannel) -> IOFlags
		io_read_func_ptr_anon_13 :: #type proc(channel: ^IOChannel, buf: ^byte, count: size, bytes_read: ^size, err: ^^Error) -> IOStatus
		io_seek_func_ptr_anon_15 :: #type proc(channel: ^IOChannel, offset_p: int64, type: SeekType, err: ^^Error) -> IOStatus
		io_set_flags_func_ptr_anon_19 :: #type proc(channel: ^IOChannel, flags: IOFlags, err: ^^Error) -> IOStatus
		io_write_func_ptr_anon_14 :: #type proc(channel: ^IOChannel, buf: ^byte, count: size, bytes_written: ^size, err: ^^Error) -> IOStatus
		long :: i64
		malloc_func_ptr_anon_0 :: #type proc(n_bytes: size) -> pointer
		mutex_free_func_ptr_anon_34 :: #type proc(mutex: ^Mutex)
		mutex_lock_func_ptr_anon_31 :: #type proc(mutex: ^Mutex)
		mutex_new_func_ptr_anon_30 :: #type proc() -> ^Mutex
		mutex_trylock_func_ptr_anon_32 :: #type proc(mutex: ^Mutex) -> boolean
		mutex_unlock_func_ptr_anon_33 :: #type proc(mutex: ^Mutex)
		offset :: int64
		passthrough_func_ptr_anon_24 :: #type proc(context_p: ^MarkupParseContext, passthrough_text: cstring, text_len: size, user_data: pointer, error: ^^Error)
		pointer :: rawptr
		prepare_func_ptr_anon_9 :: #type proc(source: ^Source, timeout_: ^int_) -> boolean
		private_get_func_ptr_anon_42 :: #type proc(private_key: ^Private) -> pointer
		private_new_func_ptr_anon_41 :: #type proc(destructor: DestroyNotify) -> ^Private
		private_set_func_ptr_anon_43 :: #type proc(private_key: ^Private, data: pointer)
		realloc_func_ptr_anon_1 :: #type proc(mem: pointer, n_bytes: size) -> pointer
		ref_func_ptr_anon_6 :: #type proc(cb_data: pointer)
		refcount :: int_
		s_struct_anon_26 :: struct {partial_magic: size, type: ^VariantType, y: [14]uintptr_}
		s_struct_anon_28 :: struct {asv: ^Variant, partial_magic: size, y: [14]uintptr_}
		short :: i16
		size :: u64
		ssize :: i64
		start_element_func_ptr_anon_21 :: #type proc(context_p: ^MarkupParseContext, element_name: cstring, attribute_names: [^]cstring, attribute_values: [^]cstring, user_data: pointer, error: ^^Error)
		text_func_ptr_anon_23 :: #type proc(context_p: ^MarkupParseContext, text: cstring, text_len: size, user_data: pointer, error: ^^Error)
		thread_create_func_ptr_anon_44 :: #type proc(func: ThreadFunc, data: pointer, stack_size: ulong, joinable: boolean, bound: boolean, priority: ThreadPriority, thread: pointer, error: ^^Error)
		thread_equal_func_ptr_anon_50 :: #type proc(thread1: pointer, thread2: pointer) -> boolean
		thread_exit_func_ptr_anon_47 :: #type proc()
		thread_join_func_ptr_anon_46 :: #type proc(thread: pointer)
		thread_self_func_ptr_anon_49 :: #type proc(thread: pointer)
		thread_set_priority_func_ptr_anon_48 :: #type proc(thread: pointer, priority: ThreadPriority)
		thread_yield_func_ptr_anon_45 :: #type proc()
		try_malloc_func_ptr_anon_4 :: #type proc(n_bytes: size) -> pointer
		try_realloc_func_ptr_anon_5 :: #type proc(mem: pointer, n_bytes: size) -> pointer
		u_union_anon_27 :: struct #raw_union {s: s_struct_anon_26, x: [16]uintptr_}
		u_union_anon_29 :: struct #raw_union {s: s_struct_anon_28, x: [16]uintptr_}
		uchar :: u8
		uint16 :: u16
		uint32 :: u32
		uint64 :: u64
		uint8 :: u8
		uint_ :: u32
		uintptr_ :: u64
		ulong :: u64
		unichar :: uint32
		unichar2 :: uint16
		unref_func_ptr_anon_7 :: #type proc(cb_data: pointer)
		unused_union_anon_51 :: struct #raw_union {owner: posix.pthread_t, dummy: double}
		ushort :: u16

	files:
		glib.odin
		patched.odin

	aliases of procedures: TYPE_FOO class types, error domains

		BOOKMARK_FILE_ERROR :: bookmark_file_error_quark
		CONVERT_ERROR :: convert_error_quark
		FALSE :: false
		FILE_ERROR :: file_error_quark
		IO_CHANNEL_ERROR :: io_channel_error_quark
		KEY_FILE_ERROR :: key_file_error_quark
		MARKUP_ERROR :: markup_error_quark
		NUMBER_PARSER_ERROR :: number_parser_error_quark
		OPTION_ERROR :: option_error_quark
		REGEX_ERROR :: regex_error_quark
		SHELL_ERROR :: shell_error_quark
		SPAWN_ERROR :: spawn_error_quark
		SPAWN_EXIT_ERROR :: spawn_exit_error_quark
		THREAD_ERROR :: thread_error_quark
		TRUE :: true
		VARIANT_PARSE_ERROR :: variant_parse_error_quark
```

## glib:gobject

```text
package gobject
	Generated by scripts/type-casts.sh; do not edit.

	constants
		BINDING_FLAGS_DEFAULT :: BindingFlags{}
		CONNECT_FLAGS_DEFAULT :: ConnectFlags{}
		FLAGS_MASK :: 511
		GTK_SAFE_CAST :: #config(GTK_SAFE_CAST, ODIN_OPTIMIZATION_MODE < .Speed)
			With GTK_SAFE_CAST a cast checks the instance's type; it defaults to on unless the
			build optimises for speed.

		MATCH_MASK :: 63
		PARAM_FLAGS_READWRITE :: ParamFlags{.READABLE, .WRITABLE}
		PARAM_MASK :: 0x000000ff
		PARAM_STATIC_STRINGS :: ParamFlags{.STATIC_NAME, .STATIC_NICK, .STATIC_BLURB}
		PARAM_USER_SHIFT :: 8
		TYPE_BOOLEAN :: (5) << (2)
		TYPE_BOXED :: (18) << (2)
		TYPE_CHAR :: (3) << (2)
		TYPE_DEBUG_FLAGS_MASK :: TypeDebugFlags{.OBJECTS, .SIGNALS, .INSTANCE_COUNT}
		TYPE_DEBUG_FLAGS_NONE :: TypeDebugFlags{}
		TYPE_DOUBLE :: (15) << (2)
		TYPE_ENUM :: (12) << (2)
		TYPE_FLAGS :: (13) << (2)
		TYPE_FLAGS_NONE :: TypeFlags{}
		TYPE_FLOAT :: (14) << (2)
		TYPE_FUNDAMENTAL_MAX :: 255 << (2)
		TYPE_INT :: (6) << (2)
		TYPE_INT64 :: (10) << (2)
		TYPE_INTERFACE :: (2) << (2)
		TYPE_INVALID :: (0) << (2)
		TYPE_LONG :: (8) << (2)
		TYPE_NONE :: (1) << (2)
		TYPE_OBJECT :: (20) << (2)
		TYPE_PARAM :: (19) << (2)
		TYPE_POINTER :: (17) << (2)
		TYPE_STATIC_SCOPE :: 1 << 0
		TYPE_STRING :: (16) << (2)
		TYPE_UCHAR :: (4) << (2)
		TYPE_UINT :: (7) << (2)
		TYPE_UINT64 :: (11) << (2)
		TYPE_ULONG :: (9) << (2)
		TYPE_VARIANT :: (21) << (2)
		VALUE_INTERNED_STRING :: 1 << 28
		VALUE_NOCOPY_CONTENTS :: 1 << 27

	variables
		param_spec_types: [^]Type

	procedures
		BINDING :: proc(ptr: $Ptr) -> ^Binding {...}
		BINDING_GROUP :: proc(ptr: $Ptr) -> ^BindingGroup {...}
		INITIALLY_UNOWNED :: proc(ptr: $Ptr) -> ^InitiallyUnowned {...}
		IS_BINDING :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_BINDING_GROUP :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_INITIALLY_UNOWNED :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_OBJECT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SIGNAL_GROUP :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TYPE_MODULE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TYPE_PLUGIN :: proc(ptr: $Ptr) -> glib.boolean {...}
		OBJECT :: proc(ptr: $Ptr) -> ^Object {...}
		SIGNAL_GROUP :: proc(ptr: $Ptr) -> ^SignalGroup {...}
		TYPE_MODULE :: proc(ptr: $Ptr) -> ^TypeModule {...}
		TYPE_PARAM_BOOLEAN :: proc() -> Type {...}
		TYPE_PARAM_BOXED :: proc() -> Type {...}
		TYPE_PARAM_CHAR :: proc() -> Type {...}
		TYPE_PARAM_DOUBLE :: proc() -> Type {...}
		TYPE_PARAM_ENUM :: proc() -> Type {...}
		TYPE_PARAM_FLAGS :: proc() -> Type {...}
		TYPE_PARAM_FLOAT :: proc() -> Type {...}
		TYPE_PARAM_GTYPE :: proc() -> Type {...}
		TYPE_PARAM_INT :: proc() -> Type {...}
		TYPE_PARAM_INT64 :: proc() -> Type {...}
		TYPE_PARAM_LONG :: proc() -> Type {...}
		TYPE_PARAM_OBJECT :: proc() -> Type {...}
		TYPE_PARAM_OVERRIDE :: proc() -> Type {...}
		TYPE_PARAM_PARAM :: proc() -> Type {...}
		TYPE_PARAM_POINTER :: proc() -> Type {...}
		TYPE_PARAM_STRING :: proc() -> Type {...}
		TYPE_PARAM_UCHAR :: proc() -> Type {...}
		TYPE_PARAM_UINT :: proc() -> Type {...}
		TYPE_PARAM_UINT64 :: proc() -> Type {...}
		TYPE_PARAM_ULONG :: proc() -> Type {...}
		TYPE_PARAM_UNICHAR :: proc() -> Type {...}
		TYPE_PARAM_VALUE_ARRAY :: proc() -> Type {...}
		TYPE_PARAM_VARIANT :: proc() -> Type {...}
		TYPE_PLUGIN :: proc(ptr: $Ptr) -> ^TypePlugin {...}
		_g_param_type_register_static_constant :: proc(name: cstring, pspec_info: ^ParamSpecTypeInfo, opt_type: Type) -> Type ---
		_g_signals_destroy :: proc(itype: Type) ---
		array_get_type :: proc() -> Type ---
		array_get_type :: proc() -> Type ---
		binding_dup_source :: proc(binding: ^Binding) -> ^Object ---
		binding_dup_target :: proc(binding: ^Binding) -> ^Object ---
		binding_flags_get_type :: proc() -> Type ---
		binding_flags_get_type :: proc() -> Type ---
		binding_get_flags :: proc(binding: ^Binding) -> BindingFlags ---
		binding_get_source :: proc(binding: ^Binding) -> ^Object ---
		binding_get_source_property :: proc(binding: ^Binding) -> cstring ---
		binding_get_target :: proc(binding: ^Binding) -> ^Object ---
		binding_get_target_property :: proc(binding: ^Binding) -> cstring ---
		binding_get_type :: proc() -> Type ---
		binding_get_type :: proc() -> Type ---
		binding_group_bind :: proc(self: ^BindingGroup, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags) ---
		binding_group_bind_full :: proc(self: ^BindingGroup, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags, transform_to: BindingTransformFunc, transform_from: BindingTransformFunc, user_data: glib.pointer, user_data_destroy: glib.DestroyNotify) ---
		binding_group_bind_with_closures :: proc(self: ^BindingGroup, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags, transform_to: ^Closure, transform_from: ^Closure) ---
		binding_group_dup_source :: proc(self: ^BindingGroup) -> glib.pointer ---
		binding_group_get_type :: proc() -> Type ---
		binding_group_get_type :: proc() -> Type ---
		binding_group_new :: proc() -> ^BindingGroup ---
		binding_group_set_source :: proc(self: ^BindingGroup, source: glib.pointer) ---
		binding_unbind :: proc(binding: ^Binding) ---
		bookmark_file_get_type :: proc() -> Type ---
		bookmark_file_get_type :: proc() -> Type ---
		boxed_copy :: proc(boxed_type: Type, src_boxed: glib.constpointer) -> glib.pointer ---
		boxed_free :: proc(boxed_type: Type, boxed: glib.pointer) ---
		boxed_type_register_static :: proc(name: cstring, boxed_copy: BoxedCopyFunc, boxed_free: BoxedFreeFunc) -> Type ---
		byte_array_get_type :: proc() -> Type ---
		byte_array_get_type :: proc() -> Type ---
		bytes_get_type :: proc() -> Type ---
		bytes_get_type :: proc() -> Type ---
		cclosure_marshal_BOOLEAN__BOXED_BOXED :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_BOOLEAN__BOXED_BOXED :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_BOOLEAN__BOXED_BOXEDv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_BOOLEAN__FLAGS :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_BOOLEAN__FLAGS :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_BOOLEAN__FLAGSv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_STRING__OBJECT_POINTER :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_STRING__OBJECT_POINTERv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__BOOLEAN :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__BOOLEANv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__BOXED :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__BOXEDv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__CHAR :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__CHARv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__DOUBLE :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__DOUBLEv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__ENUM :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__ENUMv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__FLAGS :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__FLAGSv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__FLOAT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__FLOATv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__INT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__INTv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__LONG :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__LONGv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__OBJECT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__OBJECTv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__PARAM :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__PARAMv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__POINTER :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__POINTERv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__STRING :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__STRINGv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__UCHAR :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__UCHARv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__UINT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__UINT_POINTER :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__UINT_POINTERv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__UINTv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__ULONG :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__ULONGv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__VARIANT :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__VARIANTv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_VOID__VOID :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_VOID__VOIDv :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_marshal_generic :: proc(closure: ^Closure, return_gvalue: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer) ---
		cclosure_marshal_generic_va :: proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args_list: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type) ---
		cclosure_new :: proc(callback_func: Callback, user_data: glib.pointer, destroy_data: ClosureNotify) -> ^Closure ---
		cclosure_new_object :: proc(callback_func: Callback, object: ^Object) -> ^Closure ---
		cclosure_new_object_swap :: proc(callback_func: Callback, object: ^Object) -> ^Closure ---
		cclosure_new_swap :: proc(callback_func: Callback, user_data: glib.pointer, destroy_data: ClosureNotify) -> ^Closure ---
		checksum_get_type :: proc() -> Type ---
		checksum_get_type :: proc() -> Type ---
		clear_object :: proc(object_ptr: ^^Object) ---
		clear_signal_handler :: proc(handler_id_ptr: ^glib.ulong, instance: glib.pointer) ---
		closure_add_finalize_notifier :: proc(closure: ^Closure, notify_data: glib.pointer, notify_func: ClosureNotify) ---
		closure_add_invalidate_notifier :: proc(closure: ^Closure, notify_data: glib.pointer, notify_func: ClosureNotify) ---
		closure_add_marshal_guards :: proc(closure: ^Closure, pre_marshal_data: glib.pointer, pre_marshal_notify: ClosureNotify, post_marshal_data: glib.pointer, post_marshal_notify: ClosureNotify) ---
		closure_get_type :: proc() -> Type ---
		closure_get_type :: proc() -> Type ---
		closure_invalidate :: proc(closure: ^Closure) ---
		closure_invoke :: proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer) ---
		closure_new_object :: proc(sizeof_closure: glib.uint_, object: ^Object) -> ^Closure ---
		closure_new_simple :: proc(sizeof_closure: glib.uint_, data: glib.pointer) -> ^Closure ---
		closure_ref :: proc(closure: ^Closure) -> ^Closure ---
		closure_remove_finalize_notifier :: proc(closure: ^Closure, notify_data: glib.pointer, notify_func: ClosureNotify) ---
		closure_remove_invalidate_notifier :: proc(closure: ^Closure, notify_data: glib.pointer, notify_func: ClosureNotify) ---
		closure_set_marshal :: proc(closure: ^Closure, marshal: ClosureMarshal) ---
		closure_set_meta_marshal :: proc(closure: ^Closure, marshal_data: glib.pointer, meta_marshal: ClosureMarshal) ---
		closure_sink :: proc(closure: ^Closure) ---
		closure_unref :: proc(closure: ^Closure) ---
		date_get_type :: proc() -> Type ---
		date_get_type :: proc() -> Type ---
		date_time_get_type :: proc() -> Type ---
		date_time_get_type :: proc() -> Type ---
		dir_get_type :: proc() -> Type ---
		dir_get_type :: proc() -> Type ---
		enum_complete_type_info :: proc(g_enum_type: Type, info: ^TypeInfo, const_values: [^]EnumValue) ---
		enum_get_value :: proc(enum_class: ^EnumClass, value: glib.int_) -> ^EnumValue ---
		enum_get_value_by_name :: proc(enum_class: ^EnumClass, name: cstring) -> ^EnumValue ---
		enum_get_value_by_nick :: proc(enum_class: ^EnumClass, nick: cstring) -> ^EnumValue ---
		enum_register_static :: proc(name: cstring, const_static_values: [^]EnumValue) -> Type ---
		enum_to_string :: proc(g_enum_type: Type, value: glib.int_) -> cstring ---
		error_get_type :: proc() -> Type ---
		error_get_type :: proc() -> Type ---
		flags_complete_type_info :: proc(g_flags_type: Type, info: ^TypeInfo, const_values: [^]FlagsValue) ---
		flags_get_first_value :: proc(flags_class: ^FlagsClass, value: glib.uint_) -> ^FlagsValue ---
		flags_get_value_by_name :: proc(flags_class: ^FlagsClass, name: cstring) -> ^FlagsValue ---
		flags_get_value_by_nick :: proc(flags_class: ^FlagsClass, nick: cstring) -> ^FlagsValue ---
		flags_register_static :: proc(name: cstring, const_static_values: [^]FlagsValue) -> Type ---
		flags_to_string :: proc(flags_type: Type, value: glib.uint_) -> cstring ---
		gstring_get_type :: proc() -> Type ---
		gstring_get_type :: proc() -> Type ---
		gtype_get_type :: proc() -> Type ---
		gtype_get_type :: proc() -> Type ---
		hash_table_get_type :: proc() -> Type ---
		hash_table_get_type :: proc() -> Type ---
		hmac_get_type :: proc() -> Type ---
		hmac_get_type :: proc() -> Type ---
		initially_unowned_get_type :: proc() -> Type ---
		initially_unowned_get_type :: proc() -> Type ---
		io_channel_get_type :: proc() -> Type ---
		io_channel_get_type :: proc() -> Type ---
		io_condition_get_type :: proc() -> Type ---
		io_condition_get_type :: proc() -> Type ---
		key_file_get_type :: proc() -> Type ---
		key_file_get_type :: proc() -> Type ---
		main_context_get_type :: proc() -> Type ---
		main_context_get_type :: proc() -> Type ---
		main_loop_get_type :: proc() -> Type ---
		main_loop_get_type :: proc() -> Type ---
		mapped_file_get_type :: proc() -> Type ---
		mapped_file_get_type :: proc() -> Type ---
		markup_parse_context_get_type :: proc() -> Type ---
		markup_parse_context_get_type :: proc() -> Type ---
		match_info_get_type :: proc() -> Type ---
		match_info_get_type :: proc() -> Type ---
		normalize_mode_get_type :: proc() -> Type ---
		normalize_mode_get_type :: proc() -> Type ---
		object_add_toggle_ref :: proc(object: ^Object, notify: ToggleNotify, data: glib.pointer) ---
		object_add_weak_pointer :: proc(object: ^Object, weak_pointer_location: ^glib.pointer) ---
		object_bind_property :: proc(source: glib.pointer, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags) -> ^Binding ---
		object_bind_property_full :: proc(source: glib.pointer, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags, transform_to: BindingTransformFunc, transform_from: BindingTransformFunc, user_data: glib.pointer, notify: glib.DestroyNotify) -> ^Binding ---
		object_bind_property_with_closures :: proc(source: glib.pointer, source_property: cstring, target: glib.pointer, target_property: cstring, flags: BindingFlags, transform_to: ^Closure, transform_from: ^Closure) -> ^Binding ---
		object_class_find_property :: proc(oclass: ^ObjectClass, property_name: cstring) -> ^ParamSpec ---
		object_class_install_properties :: proc(oclass: ^ObjectClass, n_pspecs: glib.uint_, pspecs: [^]^ParamSpec) ---
		object_class_install_property :: proc(oclass: ^ObjectClass, property_id: glib.uint_, pspec: ^ParamSpec) ---
		object_class_list_properties :: proc(oclass: ^ObjectClass, n_properties: ^glib.uint_) -> ^^ParamSpec ---
		object_class_override_property :: proc(oclass: ^ObjectClass, property_id: glib.uint_, name: cstring) ---
		object_compat_control :: proc(what: glib.size, data: glib.pointer) -> glib.size ---
		object_connect :: proc(object: glib.pointer, signal_spec: cstring, #c_vararg var_args: ..any) -> glib.pointer ---
		object_disconnect :: proc(object: glib.pointer, signal_spec: cstring, #c_vararg var_args: ..any) ---
		object_dup_data :: proc(object: ^Object, key: cstring, dup_func: glib.DuplicateFunc, user_data: glib.pointer) -> glib.pointer ---
		object_dup_qdata :: proc(object: ^Object, quark: glib.Quark, dup_func: glib.DuplicateFunc, user_data: glib.pointer) -> glib.pointer ---
		object_force_floating :: proc(object: ^Object) ---
		object_freeze_notify :: proc(object: ^Object) ---
		object_get :: proc(object: glib.pointer, first_property_name: cstring, #c_vararg var_args: ..any) ---
		object_get_data :: proc(object: ^Object, key: cstring) -> glib.pointer ---
		object_get_property :: proc(object: ^Object, property_name: cstring, value: ^Value) ---
		object_get_qdata :: proc(object: ^Object, quark: glib.Quark) -> glib.pointer ---
		object_get_type :: proc() -> Type ---
		object_getv :: proc(object: ^Object, n_properties: glib.uint_, names: [^]cstring, values: [^]Value) ---
		object_interface_find_property :: proc(g_iface: glib.pointer, property_name: cstring) -> ^ParamSpec ---
		object_interface_install_property :: proc(g_iface: glib.pointer, pspec: ^ParamSpec) ---
		object_interface_list_properties :: proc(g_iface: glib.pointer, n_properties_p: ^glib.uint_) -> ^^ParamSpec ---
		object_is_floating :: proc(object: glib.pointer) -> glib.boolean ---
		object_new :: proc(object_type: Type, first_property_name: cstring, #c_vararg var_args: ..any) -> glib.pointer ---
		object_new_with_properties :: proc(object_type: Type, n_properties: glib.uint_, names: [^]cstring, values: [^]Value) -> ^Object ---
		object_newv :: proc(object_type: Type, n_parameters: glib.uint_, parameters: [^]Parameter) -> glib.pointer ---
		object_notify :: proc(object: ^Object, property_name: cstring) ---
		object_notify_by_pspec :: proc(object: ^Object, pspec: ^ParamSpec) ---
		object_ref :: proc(object: glib.pointer) -> glib.pointer ---
		object_ref_sink :: proc(object: glib.pointer) -> glib.pointer ---
		object_remove_toggle_ref :: proc(object: ^Object, notify: ToggleNotify, data: glib.pointer) ---
		object_remove_weak_pointer :: proc(object: ^Object, weak_pointer_location: ^glib.pointer) ---
		object_replace_data :: proc(object: ^Object, key: cstring, oldval: glib.pointer, newval: glib.pointer, destroy: glib.DestroyNotify, old_destroy: ^glib.DestroyNotify) -> glib.boolean ---
		object_replace_qdata :: proc(object: ^Object, quark: glib.Quark, oldval: glib.pointer, newval: glib.pointer, destroy: glib.DestroyNotify, old_destroy: ^glib.DestroyNotify) -> glib.boolean ---
		object_run_dispose :: proc(object: ^Object) ---
		object_set_data :: proc(object: ^Object, key: cstring, data: glib.pointer) ---
		object_set_data_full :: proc(object: ^Object, key: cstring, data: glib.pointer, destroy: glib.DestroyNotify) ---
		object_set_property :: proc(object: ^Object, property_name: cstring, value: ^Value) ---
		object_set_qdata :: proc(object: ^Object, quark: glib.Quark, data: glib.pointer) ---
		object_set_qdata_full :: proc(object: ^Object, quark: glib.Quark, data: glib.pointer, destroy: glib.DestroyNotify) ---
		object_setv :: proc(object: ^Object, n_properties: glib.uint_, names: [^]cstring, values: [^]Value) ---
		object_steal_data :: proc(object: ^Object, key: cstring) -> glib.pointer ---
		object_steal_qdata :: proc(object: ^Object, quark: glib.Quark) -> glib.pointer ---
		object_take_ref :: proc(object: glib.pointer) -> glib.pointer ---
		object_thaw_notify :: proc(object: ^Object) ---
		object_unref :: proc(object: glib.pointer) ---
		object_watch_closure :: proc(object: ^Object, closure: ^Closure) ---
		object_weak_ref :: proc(object: ^Object, notify: WeakNotify, data: glib.pointer) ---
		object_weak_unref :: proc(object: ^Object, notify: WeakNotify, data: glib.pointer) ---
		option_group_get_type :: proc() -> Type ---
		option_group_get_type :: proc() -> Type ---
		param_spec_boolean :: proc(name: cstring, nick: cstring, blurb: cstring, default_value: glib.boolean, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_boxed :: proc(name: cstring, nick: cstring, blurb: cstring, boxed_type: Type, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_char :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.int8, maximum: glib.int8, default_value: glib.int8, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_double :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.double, maximum: glib.double, default_value: glib.double, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_enum :: proc(name: cstring, nick: cstring, blurb: cstring, enum_type: Type, default_value: glib.int_, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_flags :: proc(name: cstring, nick: cstring, blurb: cstring, flags_type: Type, default_value: glib.uint_, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_float :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.float, maximum: glib.float, default_value: glib.float, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_get_blurb :: proc(pspec: ^ParamSpec) -> cstring ---
		param_spec_get_default_value :: proc(pspec: ^ParamSpec) -> ^Value ---
		param_spec_get_name :: proc(pspec: ^ParamSpec) -> cstring ---
		param_spec_get_name_quark :: proc(pspec: ^ParamSpec) -> glib.Quark ---
		param_spec_get_nick :: proc(pspec: ^ParamSpec) -> cstring ---
		param_spec_get_qdata :: proc(pspec: ^ParamSpec, quark: glib.Quark) -> glib.pointer ---
		param_spec_get_redirect_target :: proc(pspec: ^ParamSpec) -> ^ParamSpec ---
		param_spec_gtype :: proc(name: cstring, nick: cstring, blurb: cstring, is_a_type: Type, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_int :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.int_, maximum: glib.int_, default_value: glib.int_, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_int64 :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.int64, maximum: glib.int64, default_value: glib.int64, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_internal :: proc(param_type: Type, name: cstring, nick: cstring, blurb: cstring, flags: ParamFlags) -> glib.pointer ---
		param_spec_is_valid_name :: proc(name: cstring) -> glib.boolean ---
		param_spec_long :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.long, maximum: glib.long, default_value: glib.long, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_object :: proc(name: cstring, nick: cstring, blurb: cstring, object_type: Type, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_override :: proc(name: cstring, overridden: ^ParamSpec) -> ^ParamSpec ---
		param_spec_param :: proc(name: cstring, nick: cstring, blurb: cstring, param_type: Type, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_pointer :: proc(name: cstring, nick: cstring, blurb: cstring, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_pool_free :: proc(pool: ^ParamSpecPool) ---
		param_spec_pool_insert :: proc(pool: ^ParamSpecPool, pspec: ^ParamSpec, owner_type: Type) ---
		param_spec_pool_list :: proc(pool: ^ParamSpecPool, owner_type: Type, n_pspecs_p: ^glib.uint_) -> ^^ParamSpec ---
		param_spec_pool_list_owned :: proc(pool: ^ParamSpecPool, owner_type: Type) -> ^glib.List ---
		param_spec_pool_lookup :: proc(pool: ^ParamSpecPool, param_name: cstring, owner_type: Type, walk_ancestors: glib.boolean) -> ^ParamSpec ---
		param_spec_pool_new :: proc(type_prefixing: glib.boolean) -> ^ParamSpecPool ---
		param_spec_pool_remove :: proc(pool: ^ParamSpecPool, pspec: ^ParamSpec) ---
		param_spec_ref :: proc(pspec: ^ParamSpec) -> ^ParamSpec ---
		param_spec_ref_sink :: proc(pspec: ^ParamSpec) -> ^ParamSpec ---
		param_spec_set_qdata :: proc(pspec: ^ParamSpec, quark: glib.Quark, data: glib.pointer) ---
		param_spec_set_qdata_full :: proc(pspec: ^ParamSpec, quark: glib.Quark, data: glib.pointer, destroy: glib.DestroyNotify) ---
		param_spec_sink :: proc(pspec: ^ParamSpec) ---
		param_spec_steal_qdata :: proc(pspec: ^ParamSpec, quark: glib.Quark) -> glib.pointer ---
		param_spec_string :: proc(name: cstring, nick: cstring, blurb: cstring, default_value: cstring, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_uchar :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.uint8, maximum: glib.uint8, default_value: glib.uint8, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_uint :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.uint_, maximum: glib.uint_, default_value: glib.uint_, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_uint64 :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.uint64, maximum: glib.uint64, default_value: glib.uint64, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_ulong :: proc(name: cstring, nick: cstring, blurb: cstring, minimum: glib.ulong, maximum: glib.ulong, default_value: glib.ulong, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_unichar :: proc(name: cstring, nick: cstring, blurb: cstring, default_value: glib.unichar, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_unref :: proc(pspec: ^ParamSpec) ---
		param_spec_value_array :: proc(name: cstring, nick: cstring, blurb: cstring, element_spec: ^ParamSpec, flags: ParamFlags) -> ^ParamSpec ---
		param_spec_variant :: proc(name: cstring, nick: cstring, blurb: cstring, type: ^glib.VariantType, default_value: ^glib.Variant, flags: ParamFlags) -> ^ParamSpec ---
		param_type_register_static :: proc(name: cstring, pspec_info: ^ParamSpecTypeInfo) -> Type ---
		param_value_convert :: proc(pspec: ^ParamSpec, src_value: ^Value, dest_value: ^Value, strict_validation: glib.boolean) -> glib.boolean ---
		param_value_defaults :: proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean ---
		param_value_is_valid :: proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean ---
		param_value_set_default :: proc(pspec: ^ParamSpec, value: ^Value) ---
		param_value_validate :: proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean ---
		param_values_cmp :: proc(pspec: ^ParamSpec, value1: ^Value, value2: ^Value) -> glib.int_ ---
		pattern_spec_get_type :: proc() -> Type ---
		pattern_spec_get_type :: proc() -> Type ---
		pointer_type_register_static :: proc(name: cstring) -> Type ---
		pollfd_get_type :: proc() -> Type ---
		pollfd_get_type :: proc() -> Type ---
		ptr_array_get_type :: proc() -> Type ---
		ptr_array_get_type :: proc() -> Type ---
		rand_get_type :: proc() -> Type ---
		rand_get_type :: proc() -> Type ---
		regex_get_type :: proc() -> Type ---
		regex_get_type :: proc() -> Type ---
		signal_accumulator_first_wins :: proc(ihint: ^SignalInvocationHint, return_accu: ^Value, handler_return: ^Value, dummy: glib.pointer) -> glib.boolean ---
		signal_accumulator_true_handled :: proc(ihint: ^SignalInvocationHint, return_accu: ^Value, handler_return: ^Value, dummy: glib.pointer) -> glib.boolean ---
		signal_add_emission_hook :: proc(signal_id: glib.uint_, detail: glib.Quark, hook_func: SignalEmissionHook, hook_data: glib.pointer, data_destroy: glib.DestroyNotify) -> glib.ulong ---
		signal_chain_from_overridden :: proc(instance_and_params: [^]Value, return_value: ^Value) ---
		signal_chain_from_overridden_handler :: proc(instance: glib.pointer, #c_vararg var_args: ..any) ---
		signal_connect :: proc(instance: glib.pointer, detailed_signal: cstring, c_handler: $T, data: glib.pointer = nil) -> glib.ulong {...}
		signal_connect_after :: proc(instance: glib.pointer, detailed_signal: cstring, c_handler: $T, data: glib.pointer = nil) -> glib.ulong {...}
		signal_connect_closure :: proc(instance: glib.pointer, detailed_signal: cstring, closure: ^Closure, after: glib.boolean) -> glib.ulong ---
		signal_connect_closure_by_id :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, after: glib.boolean) -> glib.ulong ---
		signal_connect_data :: proc(instance: glib.pointer, detailed_signal: cstring, c_handler: Callback, data: glib.pointer, destroy_data: ClosureNotify, connect_flags: ConnectFlags) -> glib.ulong ---
		signal_connect_object :: proc(instance: glib.pointer, detailed_signal: cstring, c_handler: Callback, gobject: glib.pointer, connect_flags: ConnectFlags) -> glib.ulong ---
		signal_connect_swapped :: proc(instance: glib.pointer, detailed_signal: cstring, c_handler: $T, data: glib.pointer = nil) -> glib.ulong {...}
		signal_emit :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark, #c_vararg var_args: ..any) ---
		signal_emit_by_name :: proc(instance: glib.pointer, detailed_signal: cstring, #c_vararg var_args: ..any) ---
		signal_emitv :: proc(instance_and_params: [^]Value, signal_id: glib.uint_, detail: glib.Quark, return_value: ^Value) ---
		signal_get_invocation_hint :: proc(instance: glib.pointer) -> ^SignalInvocationHint ---
		signal_group_block :: proc(self: ^SignalGroup) ---
		signal_group_connect :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, data: glib.pointer) ---
		signal_group_connect_after :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, data: glib.pointer) ---
		signal_group_connect_closure :: proc(self: ^SignalGroup, detailed_signal: cstring, closure: ^Closure, after: glib.boolean) ---
		signal_group_connect_data :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, data: glib.pointer, notify: ClosureNotify, flags: ConnectFlags) ---
		signal_group_connect_object :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, object: glib.pointer, flags: ConnectFlags) ---
		signal_group_connect_swapped :: proc(self: ^SignalGroup, detailed_signal: cstring, c_handler: Callback, data: glib.pointer) ---
		signal_group_dup_target :: proc(self: ^SignalGroup) -> glib.pointer ---
		signal_group_get_type :: proc() -> Type ---
		signal_group_get_type :: proc() -> Type ---
		signal_group_new :: proc(target_type: Type) -> ^SignalGroup ---
		signal_group_set_target :: proc(self: ^SignalGroup, target: glib.pointer) ---
		signal_group_unblock :: proc(self: ^SignalGroup) ---
		signal_handler_block :: proc(instance: glib.pointer, handler_id: glib.ulong) ---
		signal_handler_disconnect :: proc(instance: glib.pointer, handler_id: glib.ulong) ---
		signal_handler_find :: proc(instance: glib.pointer, mask: SignalMatchType, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, func: glib.pointer, data: glib.pointer) -> glib.ulong ---
		signal_handler_is_connected :: proc(instance: glib.pointer, handler_id: glib.ulong) -> glib.boolean ---
		signal_handler_unblock :: proc(instance: glib.pointer, handler_id: glib.ulong) ---
		signal_handlers_block_by_func :: proc(instance: glib.pointer, func: $T, data: glib.pointer = nil) -> glib.uint_ {...}
		signal_handlers_block_matched :: proc(instance: glib.pointer, mask: SignalMatchType, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, func: glib.pointer, data: glib.pointer) -> glib.uint_ ---
		signal_handlers_destroy :: proc(instance: glib.pointer) ---
		signal_handlers_disconnect_by_data :: proc(instance: glib.pointer, data: glib.pointer) -> glib.uint_ {...}
		signal_handlers_disconnect_by_func :: proc(instance: glib.pointer, func: $T, data: glib.pointer = nil) -> glib.uint_ {...}
			The C macros over signal_handlers_*_matched. The handler is matched by its address and
			the closure data; a handler connected with signal_connect_data and a nil data matches
			data = nil.

		signal_handlers_disconnect_matched :: proc(instance: glib.pointer, mask: SignalMatchType, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, func: glib.pointer, data: glib.pointer) -> glib.uint_ ---
		signal_handlers_unblock_by_func :: proc(instance: glib.pointer, func: $T, data: glib.pointer = nil) -> glib.uint_ {...}
		signal_handlers_unblock_matched :: proc(instance: glib.pointer, mask: SignalMatchType, signal_id: glib.uint_, detail: glib.Quark, closure: ^Closure, func: glib.pointer, data: glib.pointer) -> glib.uint_ ---
		signal_has_handler_pending :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark, may_be_blocked: glib.boolean) -> glib.boolean ---
		signal_is_valid_name :: proc(name: cstring) -> glib.boolean ---
		signal_list_ids :: proc(itype: Type, n_ids: ^glib.uint_) -> ^glib.uint_ ---
		signal_lookup :: proc(name: cstring, itype: Type) -> glib.uint_ ---
		signal_name :: proc(signal_id: glib.uint_) -> cstring ---
		signal_new :: proc(signal_name: cstring, itype: Type, signal_flags: SignalFlags, class_offset: glib.uint_, accumulator: SignalAccumulator, accu_data: glib.pointer, c_marshaller: SignalCMarshaller, return_type: Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> glib.uint_ ---
		signal_new_class_handler :: proc(signal_name: cstring, itype: Type, signal_flags: SignalFlags, class_handler: Callback, accumulator: SignalAccumulator, accu_data: glib.pointer, c_marshaller: SignalCMarshaller, return_type: Type, n_params: glib.uint_, #c_vararg var_args: ..any) -> glib.uint_ ---
		signal_newv :: proc(signal_name: cstring, itype: Type, signal_flags: SignalFlags, class_closure: ^Closure, accumulator: SignalAccumulator, accu_data: glib.pointer, c_marshaller: SignalCMarshaller, return_type: Type, n_params: glib.uint_, param_types: [^]Type) -> glib.uint_ ---
		signal_override_class_closure :: proc(signal_id: glib.uint_, instance_type: Type, class_closure: ^Closure) ---
		signal_override_class_handler :: proc(signal_name: cstring, instance_type: Type, class_handler: Callback) ---
		signal_parse_name :: proc(detailed_signal: cstring, itype: Type, signal_id_p: ^glib.uint_, detail_p: ^glib.Quark, force_detail_quark: glib.boolean) -> glib.boolean ---
		signal_query :: proc(signal_id: glib.uint_, query: ^SignalQuery) ---
		signal_remove_emission_hook :: proc(signal_id: glib.uint_, hook_id: glib.ulong) ---
		signal_set_va_marshaller :: proc(signal_id: glib.uint_, instance_type: Type, va_marshaller: SignalCVaMarshaller) ---
		signal_stop_emission :: proc(instance: glib.pointer, signal_id: glib.uint_, detail: glib.Quark) ---
		signal_stop_emission_by_name :: proc(instance: glib.pointer, detailed_signal: cstring) ---
		signal_type_cclosure_new :: proc(itype: Type, struct_offset: glib.uint_) -> ^Closure ---
		source_get_type :: proc() -> Type ---
		source_get_type :: proc() -> Type ---
		source_set_closure :: proc(source: ^glib.Source, closure: ^Closure) ---
		source_set_dummy_callback :: proc(source: ^glib.Source) ---
		strdup_value_contents :: proc(value: ^Value) -> cstring ---
		strv_builder_get_type :: proc() -> Type ---
		strv_builder_get_type :: proc() -> Type ---
		strv_get_type :: proc() -> Type ---
		strv_get_type :: proc() -> Type ---
		thread_get_type :: proc() -> Type ---
		thread_get_type :: proc() -> Type ---
		time_zone_get_type :: proc() -> Type ---
		time_zone_get_type :: proc() -> Type ---
		tree_get_type :: proc() -> Type ---
		tree_get_type :: proc() -> Type ---
		type_add_class_cache_func :: proc(cache_data: glib.pointer, cache_func: TypeClassCacheFunc) ---
		type_add_class_private :: proc(class_type: Type, private_size: glib.size) ---
		type_add_instance_private :: proc(class_type: Type, private_size: glib.size) -> glib.int_ ---
		type_add_interface_check :: proc(check_data: glib.pointer, check_func: TypeInterfaceCheckFunc) ---
		type_add_interface_dynamic :: proc(instance_type: Type, interface_type: Type, plugin: ^TypePlugin) ---
		type_add_interface_static :: proc(instance_type: Type, interface_type: Type, info: ^InterfaceInfo) ---
		type_cast :: proc($T: typeid, instance: $Ptr, g_type: $TypeProc) -> ^T {...}
		type_check_class_cast :: proc(g_class: ^TypeClass, is_a_type: Type) -> ^TypeClass ---
		type_check_class_is_a :: proc(g_class: ^TypeClass, is_a_type: Type) -> glib.boolean ---
		type_check_instance :: proc(instance: ^TypeInstance) -> glib.boolean ---
		type_check_instance_cast :: proc(instance: ^TypeInstance, iface_type: Type) -> ^TypeInstance ---
		type_check_instance_is_a :: proc(instance: ^TypeInstance, iface_type: Type) -> glib.boolean ---
		type_check_instance_is_fundamentally_a :: proc(instance: ^TypeInstance, fundamental_type: Type) -> glib.boolean ---
		type_check_is_value_type :: proc(type: Type) -> glib.boolean ---
		type_check_value :: proc(value: ^Value) -> glib.boolean ---
		type_check_value_holds :: proc(value: ^Value, type: Type) -> glib.boolean ---
		type_children :: proc(type: Type, n_children: ^glib.uint_) -> ^Type ---
		type_class_add_private :: proc(g_class: glib.pointer, private_size: glib.size) ---
		type_class_adjust_private_offset :: proc(g_class: glib.pointer, private_size_or_offset: ^glib.int_) ---
		type_class_get_instance_private_offset :: proc(g_class: glib.pointer) -> glib.int_ ---
		type_class_get_private :: proc(klass: ^TypeClass, private_type: Type) -> glib.pointer ---
		type_class_peek :: proc(type: Type) -> glib.pointer ---
		type_class_peek_parent :: proc(g_class: glib.pointer) -> glib.pointer ---
		type_class_peek_static :: proc(type: Type) -> glib.pointer ---
		type_class_ref :: proc(type: Type) -> glib.pointer ---
		type_class_unref :: proc(g_class: glib.pointer) ---
		type_class_unref_uncached :: proc(g_class: glib.pointer) ---
		type_create_instance :: proc(type: Type) -> ^TypeInstance ---
		type_default_interface_peek :: proc(g_type: Type) -> glib.pointer ---
		type_default_interface_ref :: proc(g_type: Type) -> glib.pointer ---
		type_default_interface_unref :: proc(g_iface: glib.pointer) ---
		type_depth :: proc(type: Type) -> glib.uint_ ---
		type_ensure :: proc(type: Type) ---
		type_free_instance :: proc(instance: ^TypeInstance) ---
		type_from_name :: proc(name: cstring) -> Type ---
		type_fundamental :: proc(type_id: Type) -> Type ---
		type_fundamental_next :: proc() -> Type ---
		type_get_instance_count :: proc(type: Type) -> i32 ---
		type_get_plugin :: proc(type: Type) -> ^TypePlugin ---
		type_get_qdata :: proc(type: Type, quark: glib.Quark) -> glib.pointer ---
		type_get_type_registration_serial :: proc() -> glib.uint_ ---
		type_init :: proc() ---
		type_init_with_debug_flags :: proc(debug_flags: TypeDebugFlags) ---
		type_instance_get_private :: proc(instance: ^TypeInstance, private_type: Type) -> glib.pointer ---
		type_interface_add_prerequisite :: proc(interface_type: Type, prerequisite_type: Type) ---
		type_interface_get_plugin :: proc(instance_type: Type, interface_type: Type) -> ^TypePlugin ---
		type_interface_instantiatable_prerequisite :: proc(interface_type: Type) -> Type ---
		type_interface_peek :: proc(instance_class: glib.pointer, iface_type: Type) -> glib.pointer ---
		type_interface_peek_parent :: proc(g_iface: glib.pointer) -> glib.pointer ---
		type_interface_prerequisites :: proc(interface_type: Type, n_prerequisites: ^glib.uint_) -> ^Type ---
		type_interfaces :: proc(type: Type, n_interfaces: ^glib.uint_) -> ^Type ---
		type_is :: proc(instance: $Ptr, g_type: $TypeProc) -> glib.boolean {...}
		type_is_a :: proc(type: Type, is_a_type: Type) -> glib.boolean ---
		type_module_add_interface :: proc(module: ^TypeModule, instance_type: Type, interface_type: Type, interface_info: ^InterfaceInfo) ---
		type_module_get_type :: proc() -> Type ---
		type_module_get_type :: proc() -> Type ---
		type_module_register_enum :: proc(module: ^TypeModule, name: cstring, const_static_values: [^]EnumValue) -> Type ---
		type_module_register_flags :: proc(module: ^TypeModule, name: cstring, const_static_values: [^]FlagsValue) -> Type ---
		type_module_register_type :: proc(module: ^TypeModule, parent_type: Type, type_name: cstring, type_info: ^TypeInfo, flags: TypeFlags) -> Type ---
		type_module_set_name :: proc(module: ^TypeModule, name: cstring) ---
		type_module_unuse :: proc(module: ^TypeModule) ---
		type_module_use :: proc(module: ^TypeModule) -> glib.boolean ---
		type_name :: proc(type: Type) -> cstring ---
		type_name_from_class :: proc(g_class: ^TypeClass) -> cstring ---
		type_name_from_instance :: proc(instance: ^TypeInstance) -> cstring ---
		type_next_base :: proc(leaf_type: Type, root_type: Type) -> Type ---
		type_parent :: proc(type: Type) -> Type ---
		type_plugin_complete_interface_info :: proc(plugin: ^TypePlugin, instance_type: Type, interface_type: Type, info: ^InterfaceInfo) ---
		type_plugin_complete_type_info :: proc(plugin: ^TypePlugin, g_type: Type, info: ^TypeInfo, value_table: ^TypeValueTable) ---
		type_plugin_get_type :: proc() -> Type ---
		type_plugin_get_type :: proc() -> Type ---
		type_plugin_unuse :: proc(plugin: ^TypePlugin) ---
		type_plugin_use :: proc(plugin: ^TypePlugin) ---
		type_qname :: proc(type: Type) -> glib.Quark ---
		type_query :: proc(type: Type, query: ^TypeQuery) ---
		type_register_dynamic :: proc(parent_type: Type, type_name: cstring, plugin: ^TypePlugin, flags: TypeFlags) -> Type ---
		type_register_fundamental :: proc(type_id: Type, type_name: cstring, info: ^TypeInfo, finfo: ^TypeFundamentalInfo, flags: TypeFlags) -> Type ---
		type_register_static :: proc(parent_type: Type, type_name: cstring, info: ^TypeInfo, flags: TypeFlags) -> Type ---
		type_register_static_simple :: proc(parent_type: Type, type_name: cstring, class_size: glib.uint_, class_init: ClassInitFunc, instance_size: glib.uint_, instance_init: InstanceInitFunc, flags: TypeFlags) -> Type ---
		type_remove_class_cache_func :: proc(cache_data: glib.pointer, cache_func: TypeClassCacheFunc) ---
		type_remove_interface_check :: proc(check_data: glib.pointer, check_func: TypeInterfaceCheckFunc) ---
		type_set_qdata :: proc(type: Type, quark: glib.Quark, data: glib.pointer) ---
		type_test_flags :: proc(type: Type, flags: glib.uint_) -> glib.boolean ---
		type_value_table_peek :: proc(type: Type) -> ^TypeValueTable ---
		unicode_break_type_get_type :: proc() -> Type ---
		unicode_break_type_get_type :: proc() -> Type ---
		unicode_script_get_type :: proc() -> Type ---
		unicode_script_get_type :: proc() -> Type ---
		unicode_type_get_type :: proc() -> Type ---
		unicode_type_get_type :: proc() -> Type ---
		uri_get_type :: proc() -> Type ---
		uri_get_type :: proc() -> Type ---
		value_array_append :: proc(value_array: ^ValueArray, value: ^Value) -> ^ValueArray ---
		value_array_copy :: proc(value_array: ^ValueArray) -> ^ValueArray ---
		value_array_free :: proc(value_array: ^ValueArray) ---
		value_array_get_nth :: proc(value_array: ^ValueArray, index_: glib.uint_) -> ^Value ---
		value_array_get_type :: proc() -> Type ---
		value_array_get_type :: proc() -> Type ---
		value_array_insert :: proc(value_array: ^ValueArray, index_: glib.uint_, value: ^Value) -> ^ValueArray ---
		value_array_new :: proc(n_prealloced: glib.uint_) -> ^ValueArray ---
		value_array_prepend :: proc(value_array: ^ValueArray, value: ^Value) -> ^ValueArray ---
		value_array_remove :: proc(value_array: ^ValueArray, index_: glib.uint_) -> ^ValueArray ---
		value_array_sort :: proc(value_array: ^ValueArray, compare_func: glib.CompareFunc) -> ^ValueArray ---
		value_array_sort_with_data :: proc(value_array: ^ValueArray, compare_func: glib.CompareDataFunc, user_data: glib.pointer) -> ^ValueArray ---
		value_copy :: proc(src_value: ^Value, dest_value: ^Value) ---
		value_dup_boxed :: proc(value: ^Value) -> glib.pointer ---
		value_dup_object :: proc(value: ^Value) -> glib.pointer ---
		value_dup_param :: proc(value: ^Value) -> ^ParamSpec ---
		value_dup_string :: proc(value: ^Value) -> cstring ---
		value_dup_variant :: proc(value: ^Value) -> ^glib.Variant ---
		value_fits_pointer :: proc(value: ^Value) -> glib.boolean ---
		value_get_boolean :: proc(value: ^Value) -> glib.boolean ---
		value_get_boxed :: proc(value: ^Value) -> glib.pointer ---
		value_get_char :: proc(value: ^Value) -> glib.char ---
		value_get_double :: proc(value: ^Value) -> glib.double ---
		value_get_enum :: proc(value: ^Value) -> glib.int_ ---
		value_get_flags :: proc(value: ^Value) -> glib.uint_ ---
		value_get_float :: proc(value: ^Value) -> glib.float ---
		value_get_gtype :: proc(value: ^Value) -> Type ---
		value_get_int :: proc(value: ^Value) -> glib.int_ ---
		value_get_int64 :: proc(value: ^Value) -> glib.int64 ---
		value_get_long :: proc(value: ^Value) -> glib.long ---
		value_get_object :: proc(value: ^Value) -> glib.pointer ---
		value_get_param :: proc(value: ^Value) -> ^ParamSpec ---
		value_get_pointer :: proc(value: ^Value) -> glib.pointer ---
		value_get_schar :: proc(value: ^Value) -> glib.int8 ---
		value_get_string :: proc(value: ^Value) -> cstring ---
		value_get_type :: proc() -> Type ---
		value_get_type :: proc() -> Type ---
		value_get_uchar :: proc(value: ^Value) -> glib.uchar ---
		value_get_uint :: proc(value: ^Value) -> glib.uint_ ---
		value_get_uint64 :: proc(value: ^Value) -> glib.uint64 ---
		value_get_ulong :: proc(value: ^Value) -> glib.ulong ---
		value_get_variant :: proc(value: ^Value) -> ^glib.Variant ---
		value_init :: proc(value: ^Value, g_type: Type) -> ^Value ---
		value_init_from_instance :: proc(value: ^Value, instance: glib.pointer) ---
		value_peek_pointer :: proc(value: ^Value) -> glib.pointer ---
		value_register_transform_func :: proc(src_type: Type, dest_type: Type, transform_func: ValueTransform) ---
		value_reset :: proc(value: ^Value) -> ^Value ---
		value_set_boolean :: proc(value: ^Value, v_boolean: glib.boolean) ---
		value_set_boxed :: proc(value: ^Value, v_boxed: glib.constpointer) ---
		value_set_boxed_take_ownership :: proc(value: ^Value, v_boxed: glib.constpointer) ---
		value_set_char :: proc(value: ^Value, v_char: glib.char) ---
		value_set_double :: proc(value: ^Value, v_double: glib.double) ---
		value_set_enum :: proc(value: ^Value, v_enum: glib.int_) ---
		value_set_flags :: proc(value: ^Value, v_flags: glib.uint_) ---
		value_set_float :: proc(value: ^Value, v_float: glib.float) ---
		value_set_gtype :: proc(value: ^Value, v_gtype: Type) ---
		value_set_instance :: proc(value: ^Value, instance: glib.pointer) ---
		value_set_int :: proc(value: ^Value, v_int: glib.int_) ---
		value_set_int64 :: proc(value: ^Value, v_int64: glib.int64) ---
		value_set_interned_string :: proc(value: ^Value, v_string: cstring) ---
		value_set_long :: proc(value: ^Value, v_long: glib.long) ---
		value_set_object :: proc(value: ^Value, v_object: glib.pointer) ---
		value_set_object_take_ownership :: proc(value: ^Value, v_object: glib.pointer) ---
		value_set_param :: proc(value: ^Value, param: ^ParamSpec) ---
		value_set_param_take_ownership :: proc(value: ^Value, param: ^ParamSpec) ---
		value_set_pointer :: proc(value: ^Value, v_pointer: glib.pointer) ---
		value_set_schar :: proc(value: ^Value, v_char: glib.int8) ---
		value_set_static_boxed :: proc(value: ^Value, v_boxed: glib.constpointer) ---
		value_set_static_string :: proc(value: ^Value, v_string: cstring) ---
		value_set_string :: proc(value: ^Value, v_string: cstring) ---
		value_set_string_take_ownership :: proc(value: ^Value, v_string: cstring) ---
		value_set_uchar :: proc(value: ^Value, v_uchar: glib.uchar) ---
		value_set_uint :: proc(value: ^Value, v_uint: glib.uint_) ---
		value_set_uint64 :: proc(value: ^Value, v_uint64: glib.uint64) ---
		value_set_ulong :: proc(value: ^Value, v_ulong: glib.ulong) ---
		value_set_variant :: proc(value: ^Value, variant: ^glib.Variant) ---
		value_steal_string :: proc(value: ^Value) -> cstring ---
		value_take_boxed :: proc(value: ^Value, v_boxed: glib.constpointer) ---
		value_take_object :: proc(value: ^Value, v_object: glib.pointer) ---
		value_take_param :: proc(value: ^Value, param: ^ParamSpec) ---
		value_take_string :: proc(value: ^Value, v_string: cstring) ---
		value_take_variant :: proc(value: ^Value, variant: ^glib.Variant) ---
		value_transform :: proc(src_value: ^Value, dest_value: ^Value) -> glib.boolean ---
		value_type_compatible :: proc(src_type: Type, dest_type: Type) -> glib.boolean ---
		value_type_transformable :: proc(src_type: Type, dest_type: Type) -> glib.boolean ---
		value_unset :: proc(value: ^Value) ---
		variant_builder_get_type :: proc() -> Type ---
		variant_builder_get_type :: proc() -> Type ---
		variant_dict_get_type :: proc() -> Type ---
		variant_dict_get_type :: proc() -> Type ---
		variant_get_gtype :: proc() -> Type ---
		variant_type_get_gtype :: proc() -> Type ---
		variant_type_get_gtype :: proc() -> Type ---
		weak_ref_clear :: proc(weak_ref: ^WeakRef) ---
		weak_ref_get :: proc(weak_ref: ^WeakRef) -> glib.pointer ---
		weak_ref_init :: proc(weak_ref: ^WeakRef, object: glib.pointer) ---
		weak_ref_set :: proc(weak_ref: ^WeakRef, object: glib.pointer) ---

	types
		BaseFinalizeFunc :: #type proc(g_class: glib.pointer)
		BaseInitFunc :: #type proc(g_class: glib.pointer)
		Binding :: struct #packed {}
		BindingFlags :: bit_set[BindingFlagsBit]
		BindingFlagsBit :: enum u32 {BIDIRECTIONAL = 0, SYNC_CREATE = 1, INVERT_BOOLEAN = 2}
		BindingGroup :: struct #packed {}
		BindingTransformFunc :: #type proc(binding: ^Binding, from_value: ^Value, to_value: ^Value, user_data: glib.pointer) -> glib.boolean
		BoxedCopyFunc :: #type proc(boxed: glib.pointer) -> glib.pointer
		BoxedFreeFunc :: #type proc(boxed: glib.pointer)
		CClosure :: struct {closure: Closure, callback: glib.pointer}
		Callback :: #type proc()
		ClassFinalizeFunc :: #type proc(g_class: glib.pointer, class_data: glib.pointer)
		ClassInitFunc :: #type proc(g_class: ^TypeClass, class_data: glib.pointer)
		Closure :: [32]i8
		ClosureMarshal :: #type proc(closure: ^Closure, return_value: ^Value, n_param_values: glib.uint_, param_values: [^]Value, invocation_hint: glib.pointer, marshal_data: glib.pointer)
		ClosureNotify :: #type proc(data: glib.pointer, closure: ^Closure)
		ClosureNotifyData :: struct {data: glib.pointer, notify: ClosureNotify}
		ConnectFlags :: bit_set[ConnectFlagsBit]
		ConnectFlagsBit :: enum u32 {AFTER = 0, SWAPPED = 1}
		EnumClass :: struct {g_type_class: TypeClass, minimum: glib.int_, maximum: glib.int_, n_values: glib.uint_, values: [^]EnumValue}
		EnumValue :: struct {value: glib.int_, value_name: cstring, value_nick: cstring}
		FlagsClass :: struct {g_type_class: TypeClass, mask: glib.uint_, n_values: glib.uint_, values: [^]FlagsValue}
		FlagsValue :: struct {value: glib.uint_, value_name: cstring, value_nick: cstring}
		InitiallyUnowned :: Object
		InitiallyUnownedClass :: ObjectClass
		InstanceInitFunc :: #type proc(instance: ^TypeInstance, g_class: glib.pointer)
		InterfaceFinalizeFunc :: #type proc(g_iface: glib.pointer, iface_data: glib.pointer)
		InterfaceInfo :: struct {interface_init: InterfaceInitFunc, interface_finalize: InterfaceFinalizeFunc, interface_data: glib.pointer}
		InterfaceInitFunc :: #type proc(g_iface: glib.pointer, iface_data: glib.pointer)
		Object :: struct {g_type_instance: TypeInstance, ref_count: glib.uint_, qdata: ^glib.Data}
		ObjectClass :: struct {g_type_class: TypeClass, construct_properties: ^glib.SList, constructor: constructor_func_ptr_anon_11, set_property: set_property_func_ptr_anon_12, get_property: et_property_func_ptr_anon_13, dispose: dispose_func_ptr_anon_14, finalize: finalize_func_ptr_anon_15, dispatch_properties_changed: dispatch_properties_changed_func_ptr_anon_16, notify: notify_func_ptr_anon_17, constructed: constructed_func_ptr_anon_18, flags: glib.size, n_construct_properties: glib.size, pspecs: glib.pointer, n_pspecs: glib.size, pdummy: [3]glib.pointer}
		ObjectConstructParam :: struct {pspec: ^ParamSpec, value: ^Value}
		ObjectFinalizeFunc :: #type proc(object: ^Object)
		ObjectGetPropertyFunc :: #type proc(object: ^Object, property_id: glib.uint_, value: ^Value, pspec: ^ParamSpec)
		ObjectSetPropertyFunc :: #type proc(object: ^Object, property_id: glib.uint_, value: ^Value, pspec: ^ParamSpec)
		ParamFlags :: bit_set[ParamFlagsBit]
		ParamFlagsBit :: enum u32 {READABLE = 0, WRITABLE = 1, CONSTRUCT = 2, CONSTRUCT_ONLY = 3, LAX_VALIDATION = 4, STATIC_NAME = 5, PRIVATE = 5, STATIC_NICK = 6, STATIC_BLURB = 7, EXPLICIT_NOTIFY = 30, DEPRECATED = 31}
		ParamSpec :: struct {g_type_instance: TypeInstance, name: cstring, flags: ParamFlags, value_type: Type, owner_type: Type, _nick: cstring, _blurb: cstring, qdata: ^glib.Data, ref_count: glib.uint_, param_id: glib.uint_}
		ParamSpecBoolean :: struct {parent_instance: ParamSpec, default_value: glib.boolean}
		ParamSpecBoxed :: struct {parent_instance: ParamSpec}
		ParamSpecChar :: struct {parent_instance: ParamSpec, minimum: glib.int8, maximum: glib.int8, default_value: glib.int8}
		ParamSpecClass :: struct {g_type_class: TypeClass, value_type: Type, finalize: finalize_func_ptr_anon_1, value_set_default: value_set_default_func_ptr_anon_2, value_validate: value_validate_func_ptr_anon_3, values_cmp: values_cmp_func_ptr_anon_4, value_is_valid: value_is_valid_func_ptr_anon_5, dummy: [3]glib.pointer}
		ParamSpecDouble :: struct {parent_instance: ParamSpec, minimum: glib.double, maximum: glib.double, default_value: glib.double, epsilon: glib.double}
		ParamSpecEnum :: struct {parent_instance: ParamSpec, enum_class: ^EnumClass, default_value: glib.int_}
		ParamSpecFlags :: struct {parent_instance: ParamSpec, flags_class: ^FlagsClass, default_value: glib.uint_}
		ParamSpecFloat :: struct {parent_instance: ParamSpec, minimum: glib.float, maximum: glib.float, default_value: glib.float, epsilon: glib.float}
		ParamSpecGType :: struct {parent_instance: ParamSpec, is_a_type: Type}
		ParamSpecInt :: struct {parent_instance: ParamSpec, minimum: glib.int_, maximum: glib.int_, default_value: glib.int_}
		ParamSpecInt64 :: struct {parent_instance: ParamSpec, minimum: glib.int64, maximum: glib.int64, default_value: glib.int64}
		ParamSpecLong :: struct {parent_instance: ParamSpec, minimum: glib.long, maximum: glib.long, default_value: glib.long}
		ParamSpecObject :: struct {parent_instance: ParamSpec}
		ParamSpecOverride :: struct {parent_instance: ParamSpec, overridden: ^ParamSpec}
		ParamSpecParam :: struct {parent_instance: ParamSpec}
		ParamSpecPointer :: struct {parent_instance: ParamSpec}
		ParamSpecPool :: struct #packed {}
		ParamSpecString :: [104]i8
		ParamSpecTypeInfo :: struct {instance_size: glib.uint16, n_preallocs: glib.uint16, instance_init: instance_init_func_ptr_anon_6, value_type: Type, finalize: finalize_func_ptr_anon_7, value_set_default: value_set_default_func_ptr_anon_8, value_validate: value_validate_func_ptr_anon_9, values_cmp: values_cmp_func_ptr_anon_10}
		ParamSpecUChar :: struct {parent_instance: ParamSpec, minimum: glib.uint8, maximum: glib.uint8, default_value: glib.uint8}
		ParamSpecUInt :: struct {parent_instance: ParamSpec, minimum: glib.uint_, maximum: glib.uint_, default_value: glib.uint_}
		ParamSpecUInt64 :: struct {parent_instance: ParamSpec, minimum: glib.uint64, maximum: glib.uint64, default_value: glib.uint64}
		ParamSpecULong :: struct {parent_instance: ParamSpec, minimum: glib.ulong, maximum: glib.ulong, default_value: glib.ulong}
		ParamSpecUnichar :: struct {parent_instance: ParamSpec, default_value: glib.unichar}
		ParamSpecValueArray :: struct {parent_instance: ParamSpec, element_spec: ^ParamSpec, fixed_n_elements: glib.uint_}
		ParamSpecVariant :: struct {parent_instance: ParamSpec, type: ^glib.VariantType, default_value: ^glib.Variant, padding: [4]glib.pointer}
		Parameter :: struct {name: cstring, value: Value}
		SignalAccumulator :: #type proc(ihint: ^SignalInvocationHint, return_accu: ^Value, handler_return: ^Value, data: glib.pointer) -> glib.boolean
		SignalCMarshaller :: ClosureMarshal
		SignalCVaMarshaller :: VaClosureMarshal
		SignalEmissionHook :: #type proc(ihint: ^SignalInvocationHint, n_param_values: glib.uint_, param_values: [^]Value, data: glib.pointer) -> glib.boolean
		SignalFlags :: bit_set[SignalFlagsBit]
		SignalFlagsBit :: enum u32 {RUN_FIRST = 0, RUN_LAST = 1, RUN_CLEANUP = 2, NO_RECURSE = 3, DETAILED = 4, ACTION = 5, NO_HOOKS = 6, MUST_COLLECT = 7, DEPRECATED = 8, ACCUMULATOR_FIRST_RUN = 17}
		SignalGroup :: struct #packed {}
		SignalInvocationHint :: struct {signal_id: glib.uint_, detail: glib.Quark, run_type: SignalFlags}
		SignalMatchType :: bit_set[SignalMatchTypeBit]
		SignalMatchTypeBit :: enum u32 {MATCH_ID = 0, MATCH_DETAIL = 1, MATCH_CLOSURE = 2, MATCH_FUNC = 3, MATCH_DATA = 4, MATCH_UNBLOCKED = 5}
		SignalQuery :: struct {signal_id: glib.uint_, signal_name: cstring, itype: Type, signal_flags: SignalFlags, return_type: Type, n_params: glib.uint_, param_types: [^]Type}
		ToggleNotify :: #type proc(data: glib.pointer, object: ^Object, is_last_ref: glib.boolean)
		Type :: glib.size
		TypeCValue :: struct #packed {}
		TypeClass :: struct {g_type: Type}
		TypeClassCacheFunc :: #type proc(cache_data: glib.pointer, g_class: ^TypeClass) -> glib.boolean
		TypeDebugFlags :: bit_set[TypeDebugFlagsBit]
		TypeDebugFlagsBit :: enum u32 {OBJECTS = 0, SIGNALS = 1, INSTANCE_COUNT = 2}
		TypeFlags :: bit_set[TypeFlagsBit]
		TypeFlagsBit :: enum u32 {ABSTRACT = 4, VALUE_ABSTRACT = 5, FINAL = 6, DEPRECATED = 7}
		TypeFundamentalFlags :: bit_set[TypeFundamentalFlagsBit]
		TypeFundamentalFlagsBit :: enum u32 {CLASSED = 0, INSTANTIATABLE = 1, DERIVABLE = 2, DEEP_DERIVABLE = 3}
		TypeFundamentalInfo :: struct {type_flags: TypeFundamentalFlags}
		TypeInfo :: struct {class_size: glib.uint16, base_init: BaseInitFunc, base_finalize: BaseFinalizeFunc, class_init: ClassInitFunc, class_finalize: ClassFinalizeFunc, class_data: glib.constpointer, instance_size: glib.uint16, n_preallocs: glib.uint16, instance_init: InstanceInitFunc, value_table: ^TypeValueTable}
		TypeInstance :: struct {g_class: ^TypeClass}
		TypeInterface :: struct {g_type: Type, g_instance_type: Type}
		TypeInterfaceCheckFunc :: #type proc(check_data: glib.pointer, g_iface: glib.pointer)
		TypeModule :: struct {parent_instance: Object, use_count: glib.uint_, type_infos: ^glib.SList, interface_infos: ^glib.SList, name: cstring}
		TypeModuleClass :: struct {parent_class: ObjectClass, load: load_func_ptr_anon_20, unload: unload_func_ptr_anon_21, reserved1: reserved1_func_ptr_anon_22, reserved2: reserved2_func_ptr_anon_23, reserved3: reserved3_func_ptr_anon_24, reserved4: reserved4_func_ptr_anon_25}
		TypePlugin :: struct #packed {}
		TypePluginClass :: struct {base_iface: TypeInterface, use_plugin: TypePluginUse, unuse_plugin: TypePluginUnuse, complete_type_info: TypePluginCompleteTypeInfo, complete_interface_info: TypePluginCompleteInterfaceInfo}
		TypePluginCompleteInterfaceInfo :: #type proc(plugin: ^TypePlugin, instance_type: Type, interface_type: Type, info: ^InterfaceInfo)
		TypePluginCompleteTypeInfo :: #type proc(plugin: ^TypePlugin, g_type: Type, info: ^TypeInfo, value_table: ^TypeValueTable)
		TypePluginUnuse :: #type proc(plugin: ^TypePlugin)
		TypePluginUse :: #type proc(plugin: ^TypePlugin)
		TypeQuery :: struct {type: Type, type_name: cstring, class_size: glib.uint_, instance_size: glib.uint_}
		TypeValueCollectFunc :: #type proc(value: ^Value, n_collect_values: glib.uint_, collect_values: [^]TypeCValue, collect_flags: glib.uint_) -> cstring
		TypeValueCopyFunc :: #type proc(src_value: ^Value, dest_value: ^Value)
		TypeValueFreeFunc :: #type proc(value: ^Value)
		TypeValueInitFunc :: #type proc(value: ^Value)
		TypeValueLCopyFunc :: #type proc(value: ^Value, n_collect_values: glib.uint_, collect_values: [^]TypeCValue, collect_flags: glib.uint_) -> cstring
		TypeValuePeekPointerFunc :: #type proc(value: ^Value) -> glib.pointer
		TypeValueTable :: struct {value_init: TypeValueInitFunc, value_free: TypeValueFreeFunc, value_copy: TypeValueCopyFunc, value_peek_pointer: TypeValuePeekPointerFunc, collect_format: cstring, collect_value: TypeValueCollectFunc, lcopy_format: cstring, lcopy_value: TypeValueLCopyFunc}
		VaClosureMarshal :: #type proc(closure: ^Closure, return_value: ^Value, instance: glib.pointer, args: libc.va_list, marshal_data: glib.pointer, n_params: i32, param_types: [^]Type)
		Value :: struct {g_type: Type, data: [2]array_union_anon_0}
		ValueArray :: struct {n_values: glib.uint_, values: [^]Value, n_prealloced: glib.uint_}
		ValueTransform :: #type proc(src_value: ^Value, dest_value: ^Value)
		WeakNotify :: #type proc(data: glib.pointer, where_the_object_was: ^Object)
		WeakRef :: struct {priv: priv_union_anon_19}
		_g_type_once_init_type :: Type
		array_union_anon_0 :: struct #raw_union {v_int: glib.int_, v_uint: glib.uint_, v_long: glib.long, v_ulong: glib.ulong, v_int64: glib.int64, v_uint64: glib.uint64, v_float: glib.float, v_double: glib.double, v_pointer: glib.pointer}
		chararray :: cstring
		constructed_func_ptr_anon_18 :: #type proc(object: ^Object)
		constructor_func_ptr_anon_11 :: #type proc(type: Type, n_construct_properties: glib.uint_, construct_properties: [^]ObjectConstructParam) -> ^Object
		dispatch_properties_changed_func_ptr_anon_16 :: #type proc(object: ^Object, n_pspecs: glib.uint_, pspecs: [^]^ParamSpec)
		dispose_func_ptr_anon_14 :: #type proc(object: ^Object)
		et_property_func_ptr_anon_13 :: #type proc(object: ^Object, property_id: glib.uint_, value: ^Value, pspec: ^ParamSpec)
		finalize_func_ptr_anon_1 :: #type proc(pspec: ^ParamSpec)
		finalize_func_ptr_anon_15 :: #type proc(object: ^Object)
		finalize_func_ptr_anon_7 :: #type proc(pspec: ^ParamSpec)
		instance_init_func_ptr_anon_6 :: #type proc(pspec: ^ParamSpec)
		load_func_ptr_anon_20 :: #type proc(module: ^TypeModule) -> glib.boolean
		notify_func_ptr_anon_17 :: #type proc(object: ^Object, pspec: ^ParamSpec)
		priv_union_anon_19 :: struct #raw_union {p: glib.pointer}
		reserved1_func_ptr_anon_22 :: #type proc()
		reserved2_func_ptr_anon_23 :: #type proc()
		reserved3_func_ptr_anon_24 :: #type proc()
		reserved4_func_ptr_anon_25 :: #type proc()
		set_property_func_ptr_anon_12 :: #type proc(object: ^Object, property_id: glib.uint_, value: ^Value, pspec: ^ParamSpec)
		unload_func_ptr_anon_21 :: #type proc(module: ^TypeModule)
		value_is_valid_func_ptr_anon_5 :: #type proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean
		value_set_default_func_ptr_anon_2 :: #type proc(pspec: ^ParamSpec, value: ^Value)
		value_set_default_func_ptr_anon_8 :: #type proc(pspec: ^ParamSpec, value: ^Value)
		value_validate_func_ptr_anon_3 :: #type proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean
		value_validate_func_ptr_anon_9 :: #type proc(pspec: ^ParamSpec, value: ^Value) -> glib.boolean
		values_cmp_func_ptr_anon_10 :: #type proc(pspec: ^ParamSpec, value1: ^Value, value2: ^Value) -> glib.int_
		values_cmp_func_ptr_anon_4 :: #type proc(pspec: ^ParamSpec, value1: ^Value, value2: ^Value) -> glib.int_

	files:
		gobject.odin
		helpers.odin
		patched.odin
		type_casts.odin

	aliases of procedures: TYPE_FOO class types, error domains

		TYPE_ARRAY :: array_get_type
		TYPE_BINDING :: binding_get_type
		TYPE_BINDING_FLAGS :: binding_flags_get_type
		TYPE_BINDING_GROUP :: binding_group_get_type
		TYPE_BOOKMARK_FILE :: bookmark_file_get_type
		TYPE_BYTES :: bytes_get_type
		TYPE_BYTE_ARRAY :: byte_array_get_type
		TYPE_CHECKSUM :: checksum_get_type
		TYPE_CLOSURE :: closure_get_type
		TYPE_DATE :: date_get_type
		TYPE_DATE_TIME :: date_time_get_type
		TYPE_DIR :: dir_get_type
		TYPE_ERROR :: error_get_type
		TYPE_GSTRING :: gstring_get_type
		TYPE_GTYPE :: gtype_get_type
		TYPE_HASH_TABLE :: hash_table_get_type
		TYPE_HMAC :: hmac_get_type
		TYPE_INITIALLY_UNOWNED :: initially_unowned_get_type
		TYPE_IO_CHANNEL :: io_channel_get_type
		TYPE_IO_CONDITION :: io_condition_get_type
		TYPE_KEY_FILE :: key_file_get_type
		TYPE_MAIN_CONTEXT :: main_context_get_type
		TYPE_MAIN_LOOP :: main_loop_get_type
		TYPE_MAPPED_FILE :: mapped_file_get_type
		TYPE_MARKUP_PARSE_CONTEXT :: markup_parse_context_get_type
		TYPE_MATCH_INFO :: match_info_get_type
		TYPE_NORMALIZE_MODE :: normalize_mode_get_type
		TYPE_OPTION_GROUP :: option_group_get_type
		TYPE_PATTERN_SPEC :: pattern_spec_get_type
		TYPE_POLLFD :: pollfd_get_type
		TYPE_PTR_ARRAY :: ptr_array_get_type
		TYPE_RAND :: rand_get_type
		TYPE_REGEX :: regex_get_type
		TYPE_SIGNAL_GROUP :: signal_group_get_type
		TYPE_SOURCE :: source_get_type
		TYPE_STRV :: strv_get_type
		TYPE_STRV_BUILDER :: strv_builder_get_type
		TYPE_THREAD :: thread_get_type
		TYPE_TIME_ZONE :: time_zone_get_type
		TYPE_TREE :: tree_get_type
		TYPE_TYPE_MODULE :: type_module_get_type
		TYPE_TYPE_PLUGIN :: type_plugin_get_type
		TYPE_UNICODE_BREAK_TYPE :: unicode_break_type_get_type
		TYPE_UNICODE_SCRIPT :: unicode_script_get_type
		TYPE_UNICODE_TYPE :: unicode_type_get_type
		TYPE_URI :: uri_get_type
		TYPE_VALUE :: value_get_type
		TYPE_VALUE_ARRAY :: value_array_get_type
		TYPE_VARIANT_BUILDER :: variant_builder_get_type
		TYPE_VARIANT_DICT :: variant_dict_get_type
		TYPE_VARIANT_TYPE :: variant_type_get_gtype
```

## glib:gio

```text
package gio
	Generated by scripts/type-casts.sh from gio.odin; do not edit.

	constants
		APPLICATION_DEFAULT_FLAGS :: ApplicationFlags{}
		APPLICATION_FLAGS_NONE :: ApplicationFlags{}
		APP_INFO_CREATE_FLAGS_NONE :: AppInfoCreateFlags{}
		BUS_NAME_OWNER_FLAGS_NONE :: BusNameOwnerFlags{}
		BUS_NAME_WATCHER_FLAGS_NONE :: BusNameWatcherFlags{}
		CONVERTER_FLAGS_NO_FLAGS :: ConverterFlags{}
		DBUS_CALL_FLAGS_NONE :: DBusCallFlags{}
		DBUS_CAPABILITY_FLAGS_NONE :: DBusCapabilityFlags{}
		DBUS_CONNECTION_FLAGS_NONE :: DBusConnectionFlags{}
		DBUS_INTERFACE_SKELETON_FLAGS_NONE :: DBusInterfaceSkeletonFlags{}
		DBUS_MESSAGE_FLAGS_NONE :: DBusMessageFlags{}
		DBUS_METHOD_INVOCATION_HANDLED :: glib.TRUE
		DBUS_METHOD_INVOCATION_UNHANDLED :: glib.FALSE
		DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE :: DBusObjectManagerClientFlags{}
		DBUS_PROPERTY_INFO_FLAGS_NONE :: DBusPropertyInfoFlags{}
		DBUS_PROXY_FLAGS_NONE :: DBusProxyFlags{}
		DBUS_SEND_MESSAGE_FLAGS_NONE :: DBusSendMessageFlags{}
		DBUS_SERVER_FLAGS_NONE :: DBusServerFlags{}
		DBUS_SIGNAL_FLAGS_NONE :: DBusSignalFlags{}
		DBUS_SUBTREE_FLAGS_NONE :: DBusSubtreeFlags{}
		DEBUG_CONTROLLER_EXTENSION_POINT_NAME :: "gio-debug-controller"
		DRIVE_IDENTIFIER_KIND_UNIX_DEVICE :: "unix-device"
		FILE_ATTRIBUTE_ACCESS_CAN_DELETE :: "access::can-delete"
		FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE :: "access::can-execute"
		FILE_ATTRIBUTE_ACCESS_CAN_READ :: "access::can-read"
		FILE_ATTRIBUTE_ACCESS_CAN_RENAME :: "access::can-rename"
		FILE_ATTRIBUTE_ACCESS_CAN_TRASH :: "access::can-trash"
		FILE_ATTRIBUTE_ACCESS_CAN_WRITE :: "access::can-write"
		FILE_ATTRIBUTE_DOS_IS_ARCHIVE :: "dos::is-archive"
		FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT :: "dos::is-mountpoint"
		FILE_ATTRIBUTE_DOS_IS_SYSTEM :: "dos::is-system"
		FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG :: "dos::reparse-point-tag"
		FILE_ATTRIBUTE_ETAG_VALUE :: "etag::value"
		FILE_ATTRIBUTE_FILESYSTEM_FREE :: "filesystem::free"
		FILE_ATTRIBUTE_FILESYSTEM_READONLY :: "filesystem::readonly"
		FILE_ATTRIBUTE_FILESYSTEM_REMOTE :: "filesystem::remote"
		FILE_ATTRIBUTE_FILESYSTEM_SIZE :: "filesystem::size"
		FILE_ATTRIBUTE_FILESYSTEM_TYPE :: "filesystem::type"
		FILE_ATTRIBUTE_FILESYSTEM_USED :: "filesystem::used"
		FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW :: "filesystem::use-preview"
		FILE_ATTRIBUTE_GVFS_BACKEND :: "gvfs::backend"
		FILE_ATTRIBUTE_ID_FILE :: "id::file"
		FILE_ATTRIBUTE_ID_FILESYSTEM :: "id::filesystem"
		FILE_ATTRIBUTE_INFO_FLAGS_NONE :: FileAttributeInfoFlags{}
		FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT :: "mountable::can-eject"
		FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT :: "mountable::can-mount"
		FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL :: "mountable::can-poll"
		FILE_ATTRIBUTE_MOUNTABLE_CAN_START :: "mountable::can-start"
		FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED :: "mountable::can-start-degraded"
		FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP :: "mountable::can-stop"
		FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT :: "mountable::can-unmount"
		FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI :: "mountable::hal-udi"
		FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC :: "mountable::is-media-check-automatic"
		FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE :: "mountable::start-stop-type"
		FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE :: "mountable::unix-device"
		FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE :: "mountable::unix-device-file"
		FILE_ATTRIBUTE_OWNER_GROUP :: "owner::group"
		FILE_ATTRIBUTE_OWNER_USER :: "owner::user"
		FILE_ATTRIBUTE_OWNER_USER_REAL :: "owner::user-real"
		FILE_ATTRIBUTE_PREVIEW_ICON :: "preview::icon"
		FILE_ATTRIBUTE_RECENT_MODIFIED :: "recent::modified"
		FILE_ATTRIBUTE_SELINUX_CONTEXT :: "selinux::context"
		FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE :: "standard::allocated-size"
		FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE :: "standard::content-type"
		FILE_ATTRIBUTE_STANDARD_COPY_NAME :: "standard::copy-name"
		FILE_ATTRIBUTE_STANDARD_DESCRIPTION :: "standard::description"
		FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME :: "standard::display-name"
		FILE_ATTRIBUTE_STANDARD_EDIT_NAME :: "standard::edit-name"
		FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE :: "standard::fast-content-type"
		FILE_ATTRIBUTE_STANDARD_ICON :: "standard::icon"
		FILE_ATTRIBUTE_STANDARD_IS_BACKUP :: "standard::is-backup"
		FILE_ATTRIBUTE_STANDARD_IS_HIDDEN :: "standard::is-hidden"
		FILE_ATTRIBUTE_STANDARD_IS_SYMLINK :: "standard::is-symlink"
		FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL :: "standard::is-virtual"
		FILE_ATTRIBUTE_STANDARD_IS_VOLATILE :: "standard::is-volatile"
		FILE_ATTRIBUTE_STANDARD_NAME :: "standard::name"
		FILE_ATTRIBUTE_STANDARD_SIZE :: "standard::size"
		FILE_ATTRIBUTE_STANDARD_SORT_ORDER :: "standard::sort-order"
		FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON :: "standard::symbolic-icon"
		FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET :: "standard::symlink-target"
		FILE_ATTRIBUTE_STANDARD_TARGET_URI :: "standard::target-uri"
		FILE_ATTRIBUTE_STANDARD_TYPE :: "standard::type"
		FILE_ATTRIBUTE_THUMBNAILING_FAILED :: "thumbnail::failed"
		FILE_ATTRIBUTE_THUMBNAILING_FAILED_LARGE :: "thumbnail::failed-large"
		FILE_ATTRIBUTE_THUMBNAILING_FAILED_NORMAL :: "thumbnail::failed-normal"
		FILE_ATTRIBUTE_THUMBNAILING_FAILED_XLARGE :: "thumbnail::failed-xlarge"
		FILE_ATTRIBUTE_THUMBNAILING_FAILED_XXLARGE :: "thumbnail::failed-xxlarge"
		FILE_ATTRIBUTE_THUMBNAIL_IS_VALID :: "thumbnail::is-valid"
		FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_LARGE :: "thumbnail::is-valid-large"
		FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_NORMAL :: "thumbnail::is-valid-normal"
		FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_XLARGE :: "thumbnail::is-valid-xlarge"
		FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_XXLARGE :: "thumbnail::is-valid-xxlarge"
		FILE_ATTRIBUTE_THUMBNAIL_PATH :: "thumbnail::path"
		FILE_ATTRIBUTE_THUMBNAIL_PATH_LARGE :: "thumbnail::path-large"
		FILE_ATTRIBUTE_THUMBNAIL_PATH_NORMAL :: "thumbnail::path-normal"
		FILE_ATTRIBUTE_THUMBNAIL_PATH_XLARGE :: "thumbnail::path-xlarge"
		FILE_ATTRIBUTE_THUMBNAIL_PATH_XXLARGE :: "thumbnail::path-xxlarge"
		FILE_ATTRIBUTE_TIME_ACCESS :: "time::access"
		FILE_ATTRIBUTE_TIME_ACCESS_NSEC :: "time::access-nsec"
		FILE_ATTRIBUTE_TIME_ACCESS_USEC :: "time::access-usec"
		FILE_ATTRIBUTE_TIME_CHANGED :: "time::changed"
		FILE_ATTRIBUTE_TIME_CHANGED_NSEC :: "time::changed-nsec"
		FILE_ATTRIBUTE_TIME_CHANGED_USEC :: "time::changed-usec"
		FILE_ATTRIBUTE_TIME_CREATED :: "time::created"
		FILE_ATTRIBUTE_TIME_CREATED_NSEC :: "time::created-nsec"
		FILE_ATTRIBUTE_TIME_CREATED_USEC :: "time::created-usec"
		FILE_ATTRIBUTE_TIME_MODIFIED :: "time::modified"
		FILE_ATTRIBUTE_TIME_MODIFIED_NSEC :: "time::modified-nsec"
		FILE_ATTRIBUTE_TIME_MODIFIED_USEC :: "time::modified-usec"
		FILE_ATTRIBUTE_TRASH_DELETION_DATE :: "trash::deletion-date"
		FILE_ATTRIBUTE_TRASH_ITEM_COUNT :: "trash::item-count"
		FILE_ATTRIBUTE_TRASH_ORIG_PATH :: "trash::orig-path"
		FILE_ATTRIBUTE_UNIX_BLOCKS :: "unix::blocks"
		FILE_ATTRIBUTE_UNIX_BLOCK_SIZE :: "unix::block-size"
		FILE_ATTRIBUTE_UNIX_DEVICE :: "unix::device"
		FILE_ATTRIBUTE_UNIX_GID :: "unix::gid"
		FILE_ATTRIBUTE_UNIX_INODE :: "unix::inode"
		FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT :: "unix::is-mountpoint"
		FILE_ATTRIBUTE_UNIX_MODE :: "unix::mode"
		FILE_ATTRIBUTE_UNIX_NLINK :: "unix::nlink"
		FILE_ATTRIBUTE_UNIX_RDEV :: "unix::rdev"
		FILE_ATTRIBUTE_UNIX_UID :: "unix::uid"
		FILE_COPY_FLAGS_NONE :: FileCopyFlags{}
		FILE_CREATE_FLAGS_NONE :: FileCreateFlags{}
		FILE_MEASURE_FLAGS_NONE :: FileMeasureFlags{}
		FILE_MONITOR_FLAGS_NONE :: FileMonitorFlags{}
		FILE_QUERY_INFO_FLAGS_NONE :: FileQueryInfoFlags{}
		IOSTREAM_SPLICE_FLAGS_NONE :: IOStreamSpliceFlags{}
		MEMORY_MONITOR_EXTENSION_POINT_NAME :: "gio-memory-monitor"
		MENU_ATTRIBUTE_ACTION :: "action"
		MENU_ATTRIBUTE_ACTION_NAMESPACE :: "action-namespace"
		MENU_ATTRIBUTE_ICON :: "icon"
		MENU_ATTRIBUTE_LABEL :: "label"
		MENU_ATTRIBUTE_TARGET :: "target"
		MENU_EXPORTER_MAX_SECTION_SIZE :: 1000
		MENU_LINK_SECTION :: "section"
		MENU_LINK_SUBMENU :: "submenu"
		MOUNT_UNMOUNT_FLAGS_NONE :: MountUnmountFlags{}
		NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME :: "gio-native-volume-monitor"
		NETWORK_MONITOR_EXTENSION_POINT_NAME :: "gio-network-monitor"
		OUTPUT_STREAM_SPLICE_FLAGS_NONE :: OutputStreamSpliceFlags{}
		POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME :: "gio-power-profile-monitor"
		PROXY_EXTENSION_POINT_NAME :: "gio-proxy"
		PROXY_RESOLVER_EXTENSION_POINT_NAME :: "gio-proxy-resolver"
		RESOLVER_NAME_LOOKUP_FLAGS_DEFAULT :: ResolverNameLookupFlags{}
		RESOURCE_FLAGS_NONE :: ResourceFlags{}
		SETTINGS_BIND_FLAGS_DEFAULT :: SettingsBindFlags{}
		SOCKET_MSG_FLAGS_NONE :: SocketMsgFlags{}
		SUBPROCESS_FLAGS_NONE :: SubprocessFlags{}
		TLS_BACKEND_EXTENSION_POINT_NAME :: "gio-tls-backend"
		TLS_CERTIFICATE_FLAGS_NO_FLAGS :: TlsCertificateFlags{}
		TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT :: "1.3.6.1.5.5.7.3.2"
		TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER :: "1.3.6.1.5.5.7.3.1"
		TLS_PASSWORD_FLAGS_NONE :: TlsPasswordFlags{}
		VALIDATE_ALL :: TlsCertificateFlags{.UNKNOWN_CA, .BAD_IDENTITY, .NOT_ACTIVATED, .EXPIRED, .REVOKED, .INSECURE, .GENERIC_ERROR}
		VFS_EXTENSION_POINT_NAME :: "gio-vfs"
		VOLUME_IDENTIFIER_KIND_CLASS :: "class"
		VOLUME_IDENTIFIER_KIND_HAL_UDI :: "hal-udi"
		VOLUME_IDENTIFIER_KIND_LABEL :: "label"
		VOLUME_IDENTIFIER_KIND_NFS_MOUNT :: "nfs-mount"
		VOLUME_IDENTIFIER_KIND_UNIX_DEVICE :: "unix-device"
		VOLUME_IDENTIFIER_KIND_UUID :: "uuid"
		VOLUME_MONITOR_EXTENSION_POINT_NAME :: "gio-volume-monitor"

	procedures
		ACTION :: proc(ptr: $Ptr) -> ^Action {...}
		ACTION_GROUP :: proc(ptr: $Ptr) -> ^ActionGroup {...}
		ACTION_MAP :: proc(ptr: $Ptr) -> ^ActionMap {...}
		APPLICATION :: proc(ptr: $Ptr) -> ^Application {...}
		APPLICATION_COMMAND_LINE :: proc(ptr: $Ptr) -> ^ApplicationCommandLine {...}
		APPLICATION_FLAGS :: proc(ptr: $Ptr) -> ^ApplicationFlags {...}
		APP_INFO :: proc(ptr: $Ptr) -> ^AppInfo {...}
		APP_INFO_CREATE_FLAGS :: proc(ptr: $Ptr) -> ^AppInfoCreateFlags {...}
		APP_INFO_MONITOR :: proc(ptr: $Ptr) -> ^AppInfoMonitor {...}
		APP_LAUNCH_CONTEXT :: proc(ptr: $Ptr) -> ^AppLaunchContext {...}
		ASK_PASSWORD_FLAGS :: proc(ptr: $Ptr) -> ^AskPasswordFlags {...}
		ASYNC_INITABLE :: proc(ptr: $Ptr) -> ^AsyncInitable {...}
		ASYNC_RESULT :: proc(ptr: $Ptr) -> ^AsyncResult {...}
		BUFFERED_INPUT_STREAM :: proc(ptr: $Ptr) -> ^BufferedInputStream {...}
		BUFFERED_OUTPUT_STREAM :: proc(ptr: $Ptr) -> ^BufferedOutputStream {...}
		BUS_NAME_OWNER_FLAGS :: proc(ptr: $Ptr) -> ^BusNameOwnerFlags {...}
		BUS_NAME_WATCHER_FLAGS :: proc(ptr: $Ptr) -> ^BusNameWatcherFlags {...}
		BUS_TYPE :: proc(ptr: $Ptr) -> ^BusType {...}
		BYTES_ICON :: proc(ptr: $Ptr) -> ^BytesIcon {...}
		CANCELLABLE :: proc(ptr: $Ptr) -> ^Cancellable {...}
		CHARSET_CONVERTER :: proc(ptr: $Ptr) -> ^CharsetConverter {...}
		CONVERTER :: proc(ptr: $Ptr) -> ^Converter {...}
		CONVERTER_FLAGS :: proc(ptr: $Ptr) -> ^ConverterFlags {...}
		CONVERTER_INPUT_STREAM :: proc(ptr: $Ptr) -> ^ConverterInputStream {...}
		CONVERTER_OUTPUT_STREAM :: proc(ptr: $Ptr) -> ^ConverterOutputStream {...}
		CONVERTER_RESULT :: proc(ptr: $Ptr) -> ^ConverterResult {...}
		CREDENTIALS :: proc(ptr: $Ptr) -> ^Credentials {...}
		CREDENTIALS_TYPE :: proc(ptr: $Ptr) -> ^CredentialsType {...}
		DATAGRAM_BASED :: proc(ptr: $Ptr) -> ^DatagramBased {...}
		DATA_INPUT_STREAM :: proc(ptr: $Ptr) -> ^DataInputStream {...}
		DATA_OUTPUT_STREAM :: proc(ptr: $Ptr) -> ^DataOutputStream {...}
		DATA_STREAM_BYTE_ORDER :: proc(ptr: $Ptr) -> ^DataStreamByteOrder {...}
		DATA_STREAM_NEWLINE_TYPE :: proc(ptr: $Ptr) -> ^DataStreamNewlineType {...}
		DBUS_ACTION_GROUP :: proc(ptr: $Ptr) -> ^DBusActionGroup {...}
		DBUS_ANNOTATION_INFO :: proc(ptr: $Ptr) -> ^DBusAnnotationInfo {...}
		DBUS_ARG_INFO :: proc(ptr: $Ptr) -> ^DBusArgInfo {...}
		DBUS_AUTH_OBSERVER :: proc(ptr: $Ptr) -> ^DBusAuthObserver {...}
		DBUS_CALL_FLAGS :: proc(ptr: $Ptr) -> ^DBusCallFlags {...}
		DBUS_CAPABILITY_FLAGS :: proc(ptr: $Ptr) -> ^DBusCapabilityFlags {...}
		DBUS_CONNECTION :: proc(ptr: $Ptr) -> ^DBusConnection {...}
		DBUS_CONNECTION_FLAGS :: proc(ptr: $Ptr) -> ^DBusConnectionFlags {...}
		DBUS_INTERFACE :: proc(ptr: $Ptr) -> ^DBusInterface {...}
		DBUS_INTERFACE_INFO :: proc(ptr: $Ptr) -> ^DBusInterfaceInfo {...}
		DBUS_INTERFACE_SKELETON :: proc(ptr: $Ptr) -> ^DBusInterfaceSkeleton {...}
		DBUS_INTERFACE_SKELETON_FLAGS :: proc(ptr: $Ptr) -> ^DBusInterfaceSkeletonFlags {...}
		DBUS_MENU_MODEL :: proc(ptr: $Ptr) -> ^DBusMenuModel {...}
		DBUS_MESSAGE :: proc(ptr: $Ptr) -> ^DBusMessage {...}
		DBUS_MESSAGE_BYTE_ORDER :: proc(ptr: $Ptr) -> ^DBusMessageByteOrder {...}
		DBUS_MESSAGE_FLAGS :: proc(ptr: $Ptr) -> ^DBusMessageFlags {...}
		DBUS_MESSAGE_HEADER_FIELD :: proc(ptr: $Ptr) -> ^DBusMessageHeaderField {...}
		DBUS_MESSAGE_TYPE :: proc(ptr: $Ptr) -> ^DBusMessageType {...}
		DBUS_METHOD_INFO :: proc(ptr: $Ptr) -> ^DBusMethodInfo {...}
		DBUS_METHOD_INVOCATION :: proc(ptr: $Ptr) -> ^DBusMethodInvocation {...}
		DBUS_NODE_INFO :: proc(ptr: $Ptr) -> ^DBusNodeInfo {...}
		DBUS_OBJECT :: proc(ptr: $Ptr) -> ^DBusObject {...}
		DBUS_OBJECT_MANAGER :: proc(ptr: $Ptr) -> ^DBusObjectManager {...}
		DBUS_OBJECT_MANAGER_CLIENT :: proc(ptr: $Ptr) -> ^DBusObjectManagerClient {...}
		DBUS_OBJECT_MANAGER_CLIENT_FLAGS :: proc(ptr: $Ptr) -> ^DBusObjectManagerClientFlags {...}
		DBUS_OBJECT_MANAGER_SERVER :: proc(ptr: $Ptr) -> ^DBusObjectManagerServer {...}
		DBUS_OBJECT_PROXY :: proc(ptr: $Ptr) -> ^DBusObjectProxy {...}
		DBUS_OBJECT_SKELETON :: proc(ptr: $Ptr) -> ^DBusObjectSkeleton {...}
		DBUS_PROPERTY_INFO :: proc(ptr: $Ptr) -> ^DBusPropertyInfo {...}
		DBUS_PROPERTY_INFO_FLAGS :: proc(ptr: $Ptr) -> ^DBusPropertyInfoFlags {...}
		DBUS_PROXY :: proc(ptr: $Ptr) -> ^DBusProxy {...}
		DBUS_PROXY_FLAGS :: proc(ptr: $Ptr) -> ^DBusProxyFlags {...}
		DBUS_SEND_MESSAGE_FLAGS :: proc(ptr: $Ptr) -> ^DBusSendMessageFlags {...}
		DBUS_SERVER :: proc(ptr: $Ptr) -> ^DBusServer {...}
		DBUS_SERVER_FLAGS :: proc(ptr: $Ptr) -> ^DBusServerFlags {...}
		DBUS_SIGNAL_FLAGS :: proc(ptr: $Ptr) -> ^DBusSignalFlags {...}
		DBUS_SIGNAL_INFO :: proc(ptr: $Ptr) -> ^DBusSignalInfo {...}
		DBUS_SUBTREE_FLAGS :: proc(ptr: $Ptr) -> ^DBusSubtreeFlags {...}
		DEBUG_CONTROLLER :: proc(ptr: $Ptr) -> ^DebugController {...}
		DEBUG_CONTROLLER_DBUS :: proc(ptr: $Ptr) -> ^DebugControllerDBus {...}
		DRIVE :: proc(ptr: $Ptr) -> ^Drive {...}
		DRIVE_START_FLAGS :: proc(ptr: $Ptr) -> ^DriveStartFlags {...}
		DRIVE_START_STOP_TYPE :: proc(ptr: $Ptr) -> ^DriveStartStopType {...}
		DTLS_CLIENT_CONNECTION :: proc(ptr: $Ptr) -> ^DtlsClientConnection {...}
		DTLS_CONNECTION :: proc(ptr: $Ptr) -> ^DtlsConnection {...}
		DTLS_SERVER_CONNECTION :: proc(ptr: $Ptr) -> ^DtlsServerConnection {...}
		EMBLEM :: proc(ptr: $Ptr) -> ^Emblem {...}
		EMBLEMED_ICON :: proc(ptr: $Ptr) -> ^EmblemedIcon {...}
		EMBLEM_ORIGIN :: proc(ptr: $Ptr) -> ^EmblemOrigin {...}
		FILE :: proc(ptr: $Ptr) -> ^File {...}
		FILENAME_COMPLETER :: proc(ptr: $Ptr) -> ^FilenameCompleter {...}
		FILESYSTEM_PREVIEW_TYPE :: proc(ptr: $Ptr) -> ^FilesystemPreviewType {...}
		FILE_ATTRIBUTE_INFO_FLAGS :: proc(ptr: $Ptr) -> ^FileAttributeInfoFlags {...}
		FILE_ATTRIBUTE_INFO_LIST :: proc(ptr: $Ptr) -> ^FileAttributeInfoList {...}
		FILE_ATTRIBUTE_MATCHER :: proc(ptr: $Ptr) -> ^FileAttributeMatcher {...}
		FILE_ATTRIBUTE_STATUS :: proc(ptr: $Ptr) -> ^FileAttributeStatus {...}
		FILE_ATTRIBUTE_TYPE :: proc(ptr: $Ptr) -> ^FileAttributeType {...}
		FILE_COPY_FLAGS :: proc(ptr: $Ptr) -> ^FileCopyFlags {...}
		FILE_CREATE_FLAGS :: proc(ptr: $Ptr) -> ^FileCreateFlags {...}
		FILE_ENUMERATOR :: proc(ptr: $Ptr) -> ^FileEnumerator {...}
		FILE_ICON :: proc(ptr: $Ptr) -> ^FileIcon {...}
		FILE_INFO :: proc(ptr: $Ptr) -> ^FileInfo {...}
		FILE_INPUT_STREAM :: proc(ptr: $Ptr) -> ^FileInputStream {...}
		FILE_IO_STREAM :: proc(ptr: $Ptr) -> ^FileIOStream {...}
		FILE_MEASURE_FLAGS :: proc(ptr: $Ptr) -> ^FileMeasureFlags {...}
		FILE_MONITOR :: proc(ptr: $Ptr) -> ^FileMonitor {...}
		FILE_MONITOR_EVENT :: proc(ptr: $Ptr) -> ^FileMonitorEvent {...}
		FILE_MONITOR_FLAGS :: proc(ptr: $Ptr) -> ^FileMonitorFlags {...}
		FILE_OUTPUT_STREAM :: proc(ptr: $Ptr) -> ^FileOutputStream {...}
		FILE_QUERY_INFO_FLAGS :: proc(ptr: $Ptr) -> ^FileQueryInfoFlags {...}
		FILE_TYPE :: proc(ptr: $Ptr) -> ^FileType {...}
		FILTER_INPUT_STREAM :: proc(ptr: $Ptr) -> ^FilterInputStream {...}
		FILTER_OUTPUT_STREAM :: proc(ptr: $Ptr) -> ^FilterOutputStream {...}
		ICON :: proc(ptr: $Ptr) -> ^Icon {...}
		INET_ADDRESS :: proc(ptr: $Ptr) -> ^InetAddress {...}
		INET_ADDRESS_MASK :: proc(ptr: $Ptr) -> ^InetAddressMask {...}
		INET_SOCKET_ADDRESS :: proc(ptr: $Ptr) -> ^InetSocketAddress {...}
		INITABLE :: proc(ptr: $Ptr) -> ^Initable {...}
		INPUT_STREAM :: proc(ptr: $Ptr) -> ^InputStream {...}
		IO_ERROR_ENUM :: proc(ptr: $Ptr) -> ^IOErrorEnum {...}
		IO_MODULE_SCOPE_FLAGS :: proc(ptr: $Ptr) -> ^IOModuleScopeFlags {...}
		IO_STREAM :: proc(ptr: $Ptr) -> ^IOStream {...}
		IO_STREAM_SPLICE_FLAGS :: proc(ptr: $Ptr) -> ^IOStreamSpliceFlags {...}
		IS_ACTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ACTION_GROUP :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ACTION_MAP :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_APPLICATION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_APPLICATION_COMMAND_LINE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_APPLICATION_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_APP_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_APP_INFO_CREATE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_APP_INFO_MONITOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_APP_LAUNCH_CONTEXT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ASK_PASSWORD_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ASYNC_INITABLE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ASYNC_RESULT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_BUFFERED_INPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_BUFFERED_OUTPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_BUS_NAME_OWNER_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_BUS_NAME_WATCHER_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_BUS_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_BYTES_ICON :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CANCELLABLE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CHARSET_CONVERTER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CONVERTER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CONVERTER_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CONVERTER_INPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CONVERTER_OUTPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CONVERTER_RESULT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CREDENTIALS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_CREDENTIALS_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DATAGRAM_BASED :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DATA_INPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DATA_OUTPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DATA_STREAM_BYTE_ORDER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DATA_STREAM_NEWLINE_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_ACTION_GROUP :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_ANNOTATION_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_ARG_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_AUTH_OBSERVER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_CALL_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_CAPABILITY_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_CONNECTION_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_INTERFACE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_INTERFACE_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_INTERFACE_SKELETON :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_INTERFACE_SKELETON_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_MENU_MODEL :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_MESSAGE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_MESSAGE_BYTE_ORDER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_MESSAGE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_MESSAGE_HEADER_FIELD :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_MESSAGE_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_METHOD_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_METHOD_INVOCATION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_NODE_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_OBJECT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_OBJECT_MANAGER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_OBJECT_MANAGER_CLIENT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_OBJECT_MANAGER_CLIENT_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_OBJECT_MANAGER_SERVER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_OBJECT_PROXY :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_OBJECT_SKELETON :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_PROPERTY_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_PROPERTY_INFO_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_PROXY :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_PROXY_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_SEND_MESSAGE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_SERVER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_SERVER_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_SIGNAL_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_SIGNAL_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DBUS_SUBTREE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DEBUG_CONTROLLER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DEBUG_CONTROLLER_DBUS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DRIVE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DRIVE_START_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DRIVE_START_STOP_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DTLS_CLIENT_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DTLS_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_DTLS_SERVER_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_EMBLEM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_EMBLEMED_ICON :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_EMBLEM_ORIGIN :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILENAME_COMPLETER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILESYSTEM_PREVIEW_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_ATTRIBUTE_INFO_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_ATTRIBUTE_INFO_LIST :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_ATTRIBUTE_MATCHER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_ATTRIBUTE_STATUS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_ATTRIBUTE_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_COPY_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_CREATE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_ENUMERATOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_ICON :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_INFO :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_INPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_IO_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_MEASURE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_MONITOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_MONITOR_EVENT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_MONITOR_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_OUTPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_QUERY_INFO_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILE_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILTER_INPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_FILTER_OUTPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ICON :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_INET_ADDRESS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_INET_ADDRESS_MASK :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_INET_SOCKET_ADDRESS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_INITABLE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_INPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_IO_ERROR_ENUM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_IO_MODULE_SCOPE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_IO_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_IO_STREAM_SPLICE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_LIST_MODEL :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_LIST_STORE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_LOADABLE_ICON :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MEMORY_INPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MEMORY_MONITOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MEMORY_MONITOR_WARNING_LEVEL :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MEMORY_OUTPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MENU :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MENU_ATTRIBUTE_ITER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MENU_ITEM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MENU_LINK_ITER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MENU_MODEL :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MOUNT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MOUNT_MOUNT_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MOUNT_OPERATION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MOUNT_OPERATION_RESULT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_MOUNT_UNMOUNT_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_NATIVE_SOCKET_ADDRESS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_NATIVE_VOLUME_MONITOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_NETWORK_ADDRESS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_NETWORK_CONNECTIVITY :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_NETWORK_MONITOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_NETWORK_SERVICE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_NOTIFICATION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_NOTIFICATION_PRIORITY :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_OUTPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_OUTPUT_STREAM_SPLICE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_PASSWORD_SAVE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_PERMISSION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_POLLABLE_INPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_POLLABLE_OUTPUT_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_POLLABLE_RETURN :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_POWER_PROFILE_MONITOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_PROPERTY_ACTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_PROXY :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_PROXY_ADDRESS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_PROXY_ADDRESS_ENUMERATOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_PROXY_RESOLVER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_REMOTE_ACTION_GROUP :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_RESOLVER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_RESOLVER_NAME_LOOKUP_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_RESOLVER_RECORD_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_RESOURCE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_RESOURCE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_RESOURCE_LOOKUP_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SEEKABLE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SETTINGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SETTINGS_BIND_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SETTINGS_SCHEMA :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SETTINGS_SCHEMA_KEY :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SETTINGS_SCHEMA_SOURCE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SIMPLE_ACTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SIMPLE_ACTION_GROUP :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SIMPLE_ASYNC_RESULT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SIMPLE_IO_STREAM :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SIMPLE_PERMISSION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SIMPLE_PROXY_RESOLVER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_ADDRESS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_ADDRESS_ENUMERATOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_CLIENT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_CLIENT_EVENT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_CONNECTABLE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_CONTROL_MESSAGE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_FAMILY :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_LISTENER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_LISTENER_EVENT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_MSG_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_PROTOCOL :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_SERVICE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SOCKET_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SRV_TARGET :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SUBPROCESS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SUBPROCESS_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_SUBPROCESS_LAUNCHER :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TASK :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TCP_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TCP_WRAPPER_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TEST_DBUS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TEST_DBUS_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_THEMED_ICON :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_THREADED_SOCKET_SERVICE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_AUTHENTICATION_MODE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_BACKEND :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_CERTIFICATE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_CERTIFICATE_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_CERTIFICATE_REQUEST_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_CHANNEL_BINDING_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_CLIENT_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_DATABASE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_DATABASE_LOOKUP_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_DATABASE_VERIFY_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_FILE_DATABASE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_INTERACTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_INTERACTION_RESULT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_PASSWORD :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_PASSWORD_FLAGS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_PROTOCOL_VERSION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_REHANDSHAKE_MODE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_TLS_SERVER_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_UNIX_CONNECTION :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_UNIX_CREDENTIALS_MESSAGE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_UNIX_FD_LIST :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_UNIX_SOCKET_ADDRESS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_UNIX_SOCKET_ADDRESS_TYPE :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_VFS :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_VOLUME :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_VOLUME_MONITOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ZLIB_COMPRESSOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ZLIB_COMPRESSOR_FORMAT :: proc(ptr: $Ptr) -> glib.boolean {...}
		IS_ZLIB_DECOMPRESSOR :: proc(ptr: $Ptr) -> glib.boolean {...}
		LIST_MODEL :: proc(ptr: $Ptr) -> ^ListModel {...}
		LIST_STORE :: proc(ptr: $Ptr) -> ^ListStore {...}
		LOADABLE_ICON :: proc(ptr: $Ptr) -> ^LoadableIcon {...}
		MEMORY_INPUT_STREAM :: proc(ptr: $Ptr) -> ^MemoryInputStream {...}
		MEMORY_MONITOR :: proc(ptr: $Ptr) -> ^MemoryMonitor {...}
		MEMORY_MONITOR_WARNING_LEVEL :: proc(ptr: $Ptr) -> ^MemoryMonitorWarningLevel {...}
		MEMORY_OUTPUT_STREAM :: proc(ptr: $Ptr) -> ^MemoryOutputStream {...}
		MENU :: proc(ptr: $Ptr) -> ^Menu {...}
		MENU_ATTRIBUTE_ITER :: proc(ptr: $Ptr) -> ^MenuAttributeIter {...}
		MENU_ITEM :: proc(ptr: $Ptr) -> ^MenuItem {...}
		MENU_LINK_ITER :: proc(ptr: $Ptr) -> ^MenuLinkIter {...}
		MENU_MODEL :: proc(ptr: $Ptr) -> ^MenuModel {...}
		MOUNT :: proc(ptr: $Ptr) -> ^Mount {...}
		MOUNT_MOUNT_FLAGS :: proc(ptr: $Ptr) -> ^MountMountFlags {...}
		MOUNT_OPERATION :: proc(ptr: $Ptr) -> ^MountOperation {...}
		MOUNT_OPERATION_RESULT :: proc(ptr: $Ptr) -> ^MountOperationResult {...}
		MOUNT_UNMOUNT_FLAGS :: proc(ptr: $Ptr) -> ^MountUnmountFlags {...}
		NATIVE_SOCKET_ADDRESS :: proc(ptr: $Ptr) -> ^NativeSocketAddress {...}
		NATIVE_VOLUME_MONITOR :: proc(ptr: $Ptr) -> ^NativeVolumeMonitor {...}
		NETWORK_ADDRESS :: proc(ptr: $Ptr) -> ^NetworkAddress {...}
		NETWORK_CONNECTIVITY :: proc(ptr: $Ptr) -> ^NetworkConnectivity {...}
		NETWORK_MONITOR :: proc(ptr: $Ptr) -> ^NetworkMonitor {...}
		NETWORK_SERVICE :: proc(ptr: $Ptr) -> ^NetworkService {...}
		NOTIFICATION :: proc(ptr: $Ptr) -> ^Notification {...}
		NOTIFICATION_PRIORITY :: proc(ptr: $Ptr) -> ^NotificationPriority {...}
		OUTPUT_STREAM :: proc(ptr: $Ptr) -> ^OutputStream {...}
		OUTPUT_STREAM_SPLICE_FLAGS :: proc(ptr: $Ptr) -> ^OutputStreamSpliceFlags {...}
		PASSWORD_SAVE :: proc(ptr: $Ptr) -> ^PasswordSave {...}
		PERMISSION :: proc(ptr: $Ptr) -> ^Permission {...}
		POLLABLE_INPUT_STREAM :: proc(ptr: $Ptr) -> ^PollableInputStream {...}
		POLLABLE_OUTPUT_STREAM :: proc(ptr: $Ptr) -> ^PollableOutputStream {...}
		POLLABLE_RETURN :: proc(ptr: $Ptr) -> ^PollableReturn {...}
		POWER_PROFILE_MONITOR :: proc(ptr: $Ptr) -> ^PowerProfileMonitor {...}
		PROPERTY_ACTION :: proc(ptr: $Ptr) -> ^PropertyAction {...}
		PROXY :: proc(ptr: $Ptr) -> ^Proxy {...}
		PROXY_ADDRESS :: proc(ptr: $Ptr) -> ^ProxyAddress {...}
		PROXY_ADDRESS_ENUMERATOR :: proc(ptr: $Ptr) -> ^ProxyAddressEnumerator {...}
		PROXY_RESOLVER :: proc(ptr: $Ptr) -> ^ProxyResolver {...}
		REMOTE_ACTION_GROUP :: proc(ptr: $Ptr) -> ^RemoteActionGroup {...}
		RESOLVER :: proc(ptr: $Ptr) -> ^Resolver {...}
		RESOLVER_NAME_LOOKUP_FLAGS :: proc(ptr: $Ptr) -> ^ResolverNameLookupFlags {...}
		RESOLVER_RECORD_TYPE :: proc(ptr: $Ptr) -> ^ResolverRecordType {...}
		RESOURCE :: proc(ptr: $Ptr) -> ^Resource {...}
		RESOURCE_FLAGS :: proc(ptr: $Ptr) -> ^ResourceFlags {...}
		RESOURCE_LOOKUP_FLAGS :: proc(ptr: $Ptr) -> ^ResourceLookupFlags {...}
		SEEKABLE :: proc(ptr: $Ptr) -> ^Seekable {...}
		SETTINGS :: proc(ptr: $Ptr) -> ^Settings {...}
		SETTINGS_BIND_FLAGS :: proc(ptr: $Ptr) -> ^SettingsBindFlags {...}
		SETTINGS_SCHEMA :: proc(ptr: $Ptr) -> ^SettingsSchema {...}
		SETTINGS_SCHEMA_KEY :: proc(ptr: $Ptr) -> ^SettingsSchemaKey {...}
		SETTINGS_SCHEMA_SOURCE :: proc(ptr: $Ptr) -> ^SettingsSchemaSource {...}
		SIMPLE_ACTION :: proc(ptr: $Ptr) -> ^SimpleAction {...}
		SIMPLE_ACTION_GROUP :: proc(ptr: $Ptr) -> ^SimpleActionGroup {...}
		SIMPLE_ASYNC_RESULT :: proc(ptr: $Ptr) -> ^SimpleAsyncResult {...}
		SIMPLE_IO_STREAM :: proc(ptr: $Ptr) -> ^SimpleIOStream {...}
		SIMPLE_PERMISSION :: proc(ptr: $Ptr) -> ^SimplePermission {...}
		SIMPLE_PROXY_RESOLVER :: proc(ptr: $Ptr) -> ^SimpleProxyResolver {...}
		SOCKET :: proc(ptr: $Ptr) -> ^Socket {...}
		SOCKET_ADDRESS :: proc(ptr: $Ptr) -> ^SocketAddress {...}
		SOCKET_ADDRESS_ENUMERATOR :: proc(ptr: $Ptr) -> ^SocketAddressEnumerator {...}
		SOCKET_CLIENT :: proc(ptr: $Ptr) -> ^SocketClient {...}
		SOCKET_CLIENT_EVENT :: proc(ptr: $Ptr) -> ^SocketClientEvent {...}
		SOCKET_CONNECTABLE :: proc(ptr: $Ptr) -> ^SocketConnectable {...}
		SOCKET_CONNECTION :: proc(ptr: $Ptr) -> ^SocketConnection {...}
		SOCKET_CONTROL_MESSAGE :: proc(ptr: $Ptr) -> ^SocketControlMessage {...}
		SOCKET_FAMILY :: proc(ptr: $Ptr) -> ^SocketFamily {...}
		SOCKET_LISTENER :: proc(ptr: $Ptr) -> ^SocketListener {...}
		SOCKET_LISTENER_EVENT :: proc(ptr: $Ptr) -> ^SocketListenerEvent {...}
		SOCKET_MSG_FLAGS :: proc(ptr: $Ptr) -> ^SocketMsgFlags {...}
		SOCKET_PROTOCOL :: proc(ptr: $Ptr) -> ^SocketProtocol {...}
		SOCKET_SERVICE :: proc(ptr: $Ptr) -> ^SocketService {...}
		SOCKET_TYPE :: proc(ptr: $Ptr) -> ^SocketType {...}
		SRV_TARGET :: proc(ptr: $Ptr) -> ^SrvTarget {...}
		SUBPROCESS :: proc(ptr: $Ptr) -> ^Subprocess {...}
		SUBPROCESS_FLAGS :: proc(ptr: $Ptr) -> ^SubprocessFlags {...}
		SUBPROCESS_LAUNCHER :: proc(ptr: $Ptr) -> ^SubprocessLauncher {...}
		TASK :: proc(ptr: $Ptr) -> ^Task {...}
		TCP_CONNECTION :: proc(ptr: $Ptr) -> ^TcpConnection {...}
		TCP_WRAPPER_CONNECTION :: proc(ptr: $Ptr) -> ^TcpWrapperConnection {...}
		TEST_DBUS :: proc(ptr: $Ptr) -> ^TestDBus {...}
		TEST_DBUS_FLAGS :: proc(ptr: $Ptr) -> ^TestDBusFlags {...}
		THEMED_ICON :: proc(ptr: $Ptr) -> ^ThemedIcon {...}
		THREADED_SOCKET_SERVICE :: proc(ptr: $Ptr) -> ^ThreadedSocketService {...}
		TLS_AUTHENTICATION_MODE :: proc(ptr: $Ptr) -> ^TlsAuthenticationMode {...}
		TLS_BACKEND :: proc(ptr: $Ptr) -> ^TlsBackend {...}
		TLS_CERTIFICATE :: proc(ptr: $Ptr) -> ^TlsCertificate {...}
		TLS_CERTIFICATE_FLAGS :: proc(ptr: $Ptr) -> ^TlsCertificateFlags {...}
		TLS_CERTIFICATE_REQUEST_FLAGS :: proc(ptr: $Ptr) -> ^TlsCertificateRequestFlags {...}
		TLS_CHANNEL_BINDING_TYPE :: proc(ptr: $Ptr) -> ^TlsChannelBindingType {...}
		TLS_CLIENT_CONNECTION :: proc(ptr: $Ptr) -> ^TlsClientConnection {...}
		TLS_CONNECTION :: proc(ptr: $Ptr) -> ^TlsConnection {...}
		TLS_DATABASE :: proc(ptr: $Ptr) -> ^TlsDatabase {...}
		TLS_DATABASE_LOOKUP_FLAGS :: proc(ptr: $Ptr) -> ^TlsDatabaseLookupFlags {...}
		TLS_DATABASE_VERIFY_FLAGS :: proc(ptr: $Ptr) -> ^TlsDatabaseVerifyFlags {...}
		TLS_FILE_DATABASE :: proc(ptr: $Ptr) -> ^TlsFileDatabase {...}
		TLS_INTERACTION :: proc(ptr: $Ptr) -> ^TlsInteraction {...}
		TLS_INTERACTION_RESULT :: proc(ptr: $Ptr) -> ^TlsInteractionResult {...}
		TLS_PASSWORD :: proc(ptr: $Ptr) -> ^TlsPassword {...}
		TLS_PASSWORD_FLAGS :: proc(ptr: $Ptr) -> ^TlsPasswordFlags {...}
		TLS_PROTOCOL_VERSION :: proc(ptr: $Ptr) -> ^TlsProtocolVersion {...}
		TLS_REHANDSHAKE_MODE :: proc(ptr: $Ptr) -> ^TlsRehandshakeMode {...}
		TLS_SERVER_CONNECTION :: proc(ptr: $Ptr) -> ^TlsServerConnection {...}
		UNIX_CONNECTION :: proc(ptr: $Ptr) -> ^UnixConnection {...}
		UNIX_CREDENTIALS_MESSAGE :: proc(ptr: $Ptr) -> ^UnixCredentialsMessage {...}
		UNIX_FD_LIST :: proc(ptr: $Ptr) -> ^UnixFDList {...}
		UNIX_SOCKET_ADDRESS :: proc(ptr: $Ptr) -> ^UnixSocketAddress {...}
		UNIX_SOCKET_ADDRESS_TYPE :: proc(ptr: $Ptr) -> ^UnixSocketAddressType {...}
		VFS :: proc(ptr: $Ptr) -> ^Vfs {...}
		VOLUME :: proc(ptr: $Ptr) -> ^Volume {...}
		VOLUME_MONITOR :: proc(ptr: $Ptr) -> ^VolumeMonitor {...}
		ZLIB_COMPRESSOR :: proc(ptr: $Ptr) -> ^ZlibCompressor {...}
		ZLIB_COMPRESSOR_FORMAT :: proc(ptr: $Ptr) -> ^ZlibCompressorFormat {...}
		ZLIB_DECOMPRESSOR :: proc(ptr: $Ptr) -> ^ZlibDecompressor {...}
		action_activate :: proc(action: ^Action, parameter: ^glib.Variant) ---
		action_change_state :: proc(action: ^Action, value: ^glib.Variant) ---
		action_get_enabled :: proc(action: ^Action) -> glib.boolean ---
		action_get_name :: proc(action: ^Action) -> cstring ---
		action_get_parameter_type :: proc(action: ^Action) -> ^glib.VariantType ---
		action_get_state :: proc(action: ^Action) -> ^glib.Variant ---
		action_get_state_hint :: proc(action: ^Action) -> ^glib.Variant ---
		action_get_state_type :: proc(action: ^Action) -> ^glib.VariantType ---
		action_get_type :: proc() -> gobj.Type ---
		action_get_type :: proc() -> gobj.Type ---
		action_group_action_added :: proc(action_group: ^ActionGroup, action_name: cstring) ---
		action_group_action_enabled_changed :: proc(action_group: ^ActionGroup, action_name: cstring, enabled: glib.boolean) ---
		action_group_action_removed :: proc(action_group: ^ActionGroup, action_name: cstring) ---
		action_group_action_state_changed :: proc(action_group: ^ActionGroup, action_name: cstring, state: ^glib.Variant) ---
		action_group_activate_action :: proc(action_group: ^ActionGroup, action_name: cstring, parameter: ^glib.Variant) ---
		action_group_change_action_state :: proc(action_group: ^ActionGroup, action_name: cstring, value: ^glib.Variant) ---
		action_group_get_action_enabled :: proc(action_group: ^ActionGroup, action_name: cstring) -> glib.boolean ---
		action_group_get_action_parameter_type :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.VariantType ---
		action_group_get_action_state :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.Variant ---
		action_group_get_action_state_hint :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.Variant ---
		action_group_get_action_state_type :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.VariantType ---
		action_group_get_type :: proc() -> gobj.Type ---
		action_group_get_type :: proc() -> gobj.Type ---
		action_group_has_action :: proc(action_group: ^ActionGroup, action_name: cstring) -> glib.boolean ---
		action_group_list_actions :: proc(action_group: ^ActionGroup) -> ^cstring ---
		action_group_query_action :: proc(action_group: ^ActionGroup, action_name: cstring, enabled: ^glib.boolean, parameter_type: ^^glib.VariantType, state_type: ^^glib.VariantType, state_hint: ^^glib.Variant, state: ^^glib.Variant) -> glib.boolean ---
		action_map_add_action :: proc(action_map: ^ActionMap, action: ^Action) ---
		action_map_add_action_entries :: proc(action_map: ^ActionMap, entries: [^]ActionEntry, n_entries: glib.int_, user_data: glib.pointer) ---
		action_map_get_type :: proc() -> gobj.Type ---
		action_map_get_type :: proc() -> gobj.Type ---
		action_map_lookup_action :: proc(action_map: ^ActionMap, action_name: cstring) -> ^Action ---
		action_map_remove_action :: proc(action_map: ^ActionMap, action_name: cstring) ---
		action_map_remove_action_entries :: proc(action_map: ^ActionMap, entries: [^]ActionEntry, n_entries: glib.int_) ---
		action_name_is_valid :: proc(action_name: cstring) -> glib.boolean ---
		action_parse_detailed_name :: proc(detailed_name: cstring, action_name: ^cstring, target_value: ^^glib.Variant, error: ^^glib.Error) -> glib.boolean ---
		action_print_detailed_name :: proc(action_name: cstring, target_value: ^glib.Variant) -> cstring ---
		app_info_add_supports_type :: proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean ---
		app_info_can_delete :: proc(appinfo: ^AppInfo) -> glib.boolean ---
		app_info_can_remove_supports_type :: proc(appinfo: ^AppInfo) -> glib.boolean ---
		app_info_create_flags_get_type :: proc() -> gobj.Type ---
		app_info_create_flags_get_type :: proc() -> gobj.Type ---
		app_info_create_from_commandline :: proc(commandline: cstring, application_name: cstring, flags: AppInfoCreateFlags, error: ^^glib.Error) -> ^AppInfo ---
		app_info_delete :: proc(appinfo: ^AppInfo) -> glib.boolean ---
		app_info_dup :: proc(appinfo: ^AppInfo) -> ^AppInfo ---
		app_info_equal :: proc(appinfo1: ^AppInfo, appinfo2: ^AppInfo) -> glib.boolean ---
		app_info_get_all :: proc() -> ^glib.List ---
		app_info_get_all_for_type :: proc(content_type: cstring) -> ^glib.List ---
		app_info_get_commandline :: proc(appinfo: ^AppInfo) -> cstring ---
		app_info_get_default_for_type :: proc(content_type: cstring, must_support_uris: glib.boolean) -> ^AppInfo ---
		app_info_get_default_for_type_async :: proc(content_type: cstring, must_support_uris: glib.boolean, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		app_info_get_default_for_type_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> ^AppInfo ---
		app_info_get_default_for_uri_scheme :: proc(uri_scheme: cstring) -> ^AppInfo ---
		app_info_get_default_for_uri_scheme_async :: proc(uri_scheme: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		app_info_get_default_for_uri_scheme_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> ^AppInfo ---
		app_info_get_description :: proc(appinfo: ^AppInfo) -> cstring ---
		app_info_get_display_name :: proc(appinfo: ^AppInfo) -> cstring ---
		app_info_get_executable :: proc(appinfo: ^AppInfo) -> cstring ---
		app_info_get_fallback_for_type :: proc(content_type: cstring) -> ^glib.List ---
		app_info_get_icon :: proc(appinfo: ^AppInfo) -> ^Icon ---
		app_info_get_id :: proc(appinfo: ^AppInfo) -> cstring ---
		app_info_get_name :: proc(appinfo: ^AppInfo) -> cstring ---
		app_info_get_recommended_for_type :: proc(content_type: cstring) -> ^glib.List ---
		app_info_get_supported_types :: proc(appinfo: ^AppInfo) -> ^cstring ---
		app_info_get_type :: proc() -> gobj.Type ---
		app_info_get_type :: proc() -> gobj.Type ---
		app_info_launch :: proc(appinfo: ^AppInfo, files: ^glib.List, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean ---
		app_info_launch_default_for_uri :: proc(uri: cstring, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean ---
		app_info_launch_default_for_uri_async :: proc(uri: cstring, context_p: ^AppLaunchContext, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		app_info_launch_default_for_uri_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		app_info_launch_uris :: proc(appinfo: ^AppInfo, uris: ^glib.List, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean ---
		app_info_launch_uris_async :: proc(appinfo: ^AppInfo, uris: ^glib.List, context_p: ^AppLaunchContext, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		app_info_launch_uris_finish :: proc(appinfo: ^AppInfo, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		app_info_monitor_get :: proc() -> ^AppInfoMonitor ---
		app_info_monitor_get_type :: proc() -> gobj.Type ---
		app_info_monitor_get_type :: proc() -> gobj.Type ---
		app_info_remove_supports_type :: proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean ---
		app_info_reset_type_associations :: proc(content_type: cstring) ---
		app_info_set_as_default_for_extension :: proc(appinfo: ^AppInfo, extension: cstring, error: ^^glib.Error) -> glib.boolean ---
		app_info_set_as_default_for_type :: proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean ---
		app_info_set_as_last_used_for_type :: proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean ---
		app_info_should_show :: proc(appinfo: ^AppInfo) -> glib.boolean ---
		app_info_supports_files :: proc(appinfo: ^AppInfo) -> glib.boolean ---
		app_info_supports_uris :: proc(appinfo: ^AppInfo) -> glib.boolean ---
		app_launch_context_get_display :: proc(context_p: ^AppLaunchContext, info: ^AppInfo, files: ^glib.List) -> cstring ---
		app_launch_context_get_environment :: proc(context_p: ^AppLaunchContext) -> ^cstring ---
		app_launch_context_get_startup_notify_id :: proc(context_p: ^AppLaunchContext, info: ^AppInfo, files: ^glib.List) -> cstring ---
		app_launch_context_get_type :: proc() -> gobj.Type ---
		app_launch_context_get_type :: proc() -> gobj.Type ---
		app_launch_context_launch_failed :: proc(context_p: ^AppLaunchContext, startup_notify_id: cstring) ---
		app_launch_context_new :: proc() -> ^AppLaunchContext ---
		app_launch_context_setenv :: proc(context_p: ^AppLaunchContext, variable: cstring, value: cstring) ---
		app_launch_context_unsetenv :: proc(context_p: ^AppLaunchContext, variable: cstring) ---
		application_activate :: proc(application: ^Application) ---
		application_add_main_option :: proc(application: ^Application, long_name: cstring, short_name: glib.char, flags: glib.OptionFlags, arg: glib.OptionArg, description: cstring, arg_description: cstring) ---
		application_add_main_option_entries :: proc(application: ^Application, entries: [^]glib.OptionEntry) ---
		application_add_option_group :: proc(application: ^Application, group: ^glib.OptionGroup) ---
		application_bind_busy_property :: proc(application: ^Application, object: glib.pointer, property: cstring) ---
		application_command_line_create_file_for_arg :: proc(cmdline: ^ApplicationCommandLine, arg: cstring) -> ^File ---
		application_command_line_done :: proc(cmdline: ^ApplicationCommandLine) ---
		application_command_line_get_arguments :: proc(cmdline: ^ApplicationCommandLine, argc: ^i32) -> ^cstring ---
		application_command_line_get_cwd :: proc(cmdline: ^ApplicationCommandLine) -> cstring ---
		application_command_line_get_environ :: proc(cmdline: ^ApplicationCommandLine) -> ^cstring ---
		application_command_line_get_exit_status :: proc(cmdline: ^ApplicationCommandLine) -> i32 ---
		application_command_line_get_is_remote :: proc(cmdline: ^ApplicationCommandLine) -> glib.boolean ---
		application_command_line_get_options_dict :: proc(cmdline: ^ApplicationCommandLine) -> ^glib.VariantDict ---
		application_command_line_get_platform_data :: proc(cmdline: ^ApplicationCommandLine) -> ^glib.Variant ---
		application_command_line_get_stdin :: proc(cmdline: ^ApplicationCommandLine) -> ^InputStream ---
		application_command_line_get_type :: proc() -> gobj.Type ---
		application_command_line_get_type :: proc() -> gobj.Type ---
		application_command_line_getenv :: proc(cmdline: ^ApplicationCommandLine, name: cstring) -> cstring ---
		application_command_line_print :: proc(cmdline: ^ApplicationCommandLine, format: cstring, #c_vararg var_args: ..any) ---
		application_command_line_print_literal :: proc(cmdline: ^ApplicationCommandLine, message: cstring) ---
		application_command_line_printerr :: proc(cmdline: ^ApplicationCommandLine, format: cstring, #c_vararg var_args: ..any) ---
		application_command_line_printerr_literal :: proc(cmdline: ^ApplicationCommandLine, message: cstring) ---
		application_command_line_set_exit_status :: proc(cmdline: ^ApplicationCommandLine, exit_status: i32) ---
		application_flags_get_type :: proc() -> gobj.Type ---
		application_flags_get_type :: proc() -> gobj.Type ---
		application_get_application_id :: proc(application: ^Application) -> cstring ---
		application_get_dbus_connection :: proc(application: ^Application) -> ^DBusConnection ---
		application_get_dbus_object_path :: proc(application: ^Application) -> cstring ---
		application_get_default :: proc() -> ^Application ---
		application_get_flags :: proc(application: ^Application) -> ApplicationFlags ---
		application_get_inactivity_timeout :: proc(application: ^Application) -> glib.uint_ ---
		application_get_is_busy :: proc(application: ^Application) -> glib.boolean ---
		application_get_is_registered :: proc(application: ^Application) -> glib.boolean ---
		application_get_is_remote :: proc(application: ^Application) -> glib.boolean ---
		application_get_resource_base_path :: proc(application: ^Application) -> cstring ---
		application_get_type :: proc() -> gobj.Type ---
		application_get_type :: proc() -> gobj.Type ---
		application_get_version :: proc(application: ^Application) -> cstring ---
		application_hold :: proc(application: ^Application) ---
		application_id_is_valid :: proc(application_id: cstring) -> glib.boolean ---
		application_mark_busy :: proc(application: ^Application) ---
		application_new :: proc(application_id: cstring, flags: ApplicationFlags) -> ^Application ---
		application_open :: proc(application: ^Application, files: [^]^File, n_files: glib.int_, hint: cstring) ---
		application_quit :: proc(application: ^Application) ---
		application_register :: proc(application: ^Application, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		application_release :: proc(application: ^Application) ---
		application_run :: proc(application: ^Application, args := os.args) -> i32 {...}
			application_run builds the C argv from `args` (default: the process arguments) and
			frees it again. See docs/PATCHED.md.

		application_send_notification :: proc(application: ^Application, id: cstring, notification: ^Notification) ---
		application_set_action_group :: proc(application: ^Application, action_group: ^ActionGroup) ---
		application_set_application_id :: proc(application: ^Application, application_id: cstring) ---
		application_set_default :: proc(application: ^Application) ---
		application_set_flags :: proc(application: ^Application, flags: ApplicationFlags) ---
		application_set_inactivity_timeout :: proc(application: ^Application, inactivity_timeout: glib.uint_) ---
		application_set_option_context_description :: proc(application: ^Application, description: cstring) ---
		application_set_option_context_parameter_string :: proc(application: ^Application, parameter_string: cstring) ---
		application_set_option_context_summary :: proc(application: ^Application, summary: cstring) ---
		application_set_resource_base_path :: proc(application: ^Application, resource_path: cstring) ---
		application_set_version :: proc(application: ^Application, version: cstring) ---
		application_unbind_busy_property :: proc(application: ^Application, object: glib.pointer, property: cstring) ---
		application_unmark_busy :: proc(application: ^Application) ---
		application_withdraw_notification :: proc(application: ^Application, id: cstring) ---
		ask_password_flags_get_type :: proc() -> gobj.Type ---
		ask_password_flags_get_type :: proc() -> gobj.Type ---
		async_initable_get_type :: proc() -> gobj.Type ---
		async_initable_get_type :: proc() -> gobj.Type ---
		async_initable_init_async :: proc(initable: ^AsyncInitable, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		async_initable_init_finish :: proc(initable: ^AsyncInitable, res: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		async_initable_new_async :: proc(object_type: gobj.Type, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer, first_property_name: cstring, #c_vararg var_args: ..any) ---
		async_initable_new_finish :: proc(initable: ^AsyncInitable, res: ^AsyncResult, error: ^^glib.Error) -> ^gobj.Object ---
		async_initable_new_valist_async :: proc(object_type: gobj.Type, first_property_name: cstring, var_args: libc.va_list, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		async_initable_newv_async :: proc(object_type: gobj.Type, n_parameters: glib.uint_, parameters: [^]gobj.Parameter, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		async_result_get_source_object :: proc(res: ^AsyncResult) -> ^gobj.Object ---
		async_result_get_type :: proc() -> gobj.Type ---
		async_result_get_type :: proc() -> gobj.Type ---
		async_result_get_user_data :: proc(res: ^AsyncResult) -> glib.pointer ---
		async_result_is_tagged :: proc(res: ^AsyncResult, source_tag: glib.pointer) -> glib.boolean ---
		async_result_legacy_propagate_error :: proc(res: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		buffered_input_stream_fill :: proc(stream: ^BufferedInputStream, count: glib.ssize, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		buffered_input_stream_fill_async :: proc(stream: ^BufferedInputStream, count: glib.ssize, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		buffered_input_stream_fill_finish :: proc(stream: ^BufferedInputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---
		buffered_input_stream_get_available :: proc(stream: ^BufferedInputStream) -> glib.size ---
		buffered_input_stream_get_buffer_size :: proc(stream: ^BufferedInputStream) -> glib.size ---
		buffered_input_stream_get_type :: proc() -> gobj.Type ---
		buffered_input_stream_get_type :: proc() -> gobj.Type ---
		buffered_input_stream_new :: proc(base_stream: ^InputStream) -> ^InputStream ---
		buffered_input_stream_new_sized :: proc(base_stream: ^InputStream, size_p: glib.size) -> ^InputStream ---
		buffered_input_stream_peek :: proc(stream: ^BufferedInputStream, buffer: rawptr, offset_p: glib.size, count: glib.size) -> glib.size ---
		buffered_input_stream_peek_buffer :: proc(stream: ^BufferedInputStream, count: ^glib.size) -> rawptr ---
		buffered_input_stream_read_byte :: proc(stream: ^BufferedInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> i32 ---
		buffered_input_stream_set_buffer_size :: proc(stream: ^BufferedInputStream, size_p: glib.size) ---
		buffered_output_stream_get_auto_grow :: proc(stream: ^BufferedOutputStream) -> glib.boolean ---
		buffered_output_stream_get_buffer_size :: proc(stream: ^BufferedOutputStream) -> glib.size ---
		buffered_output_stream_get_type :: proc() -> gobj.Type ---
		buffered_output_stream_get_type :: proc() -> gobj.Type ---
		buffered_output_stream_new :: proc(base_stream: ^OutputStream) -> ^OutputStream ---
		buffered_output_stream_new_sized :: proc(base_stream: ^OutputStream, size_p: glib.size) -> ^OutputStream ---
		buffered_output_stream_set_auto_grow :: proc(stream: ^BufferedOutputStream, auto_grow: glib.boolean) ---
		buffered_output_stream_set_buffer_size :: proc(stream: ^BufferedOutputStream, size_p: glib.size) ---
		bus_get :: proc(bus_type: BusType, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		bus_get_finish :: proc(res: ^AsyncResult, error: ^^glib.Error) -> ^DBusConnection ---
		bus_get_sync :: proc(bus_type: BusType, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusConnection ---
		bus_name_owner_flags_get_type :: proc() -> gobj.Type ---
		bus_name_owner_flags_get_type :: proc() -> gobj.Type ---
		bus_name_watcher_flags_get_type :: proc() -> gobj.Type ---
		bus_name_watcher_flags_get_type :: proc() -> gobj.Type ---
		bus_own_name :: proc(bus_type: BusType, name: cstring, flags: BusNameOwnerFlags, bus_acquired_handler: BusAcquiredCallback, name_acquired_handler: BusNameAcquiredCallback, name_lost_handler: BusNameLostCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---
		bus_own_name_on_connection :: proc(connection: ^DBusConnection, name: cstring, flags: BusNameOwnerFlags, name_acquired_handler: BusNameAcquiredCallback, name_lost_handler: BusNameLostCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---
		bus_own_name_on_connection_with_closures :: proc(connection: ^DBusConnection, name: cstring, flags: BusNameOwnerFlags, name_acquired_closure: ^gobj.Closure, name_lost_closure: ^gobj.Closure) -> glib.uint_ ---
		bus_own_name_with_closures :: proc(bus_type: BusType, name: cstring, flags: BusNameOwnerFlags, bus_acquired_closure: ^gobj.Closure, name_acquired_closure: ^gobj.Closure, name_lost_closure: ^gobj.Closure) -> glib.uint_ ---
		bus_type_get_type :: proc() -> gobj.Type ---
		bus_type_get_type :: proc() -> gobj.Type ---
		bus_unown_name :: proc(owner_id: glib.uint_) ---
		bus_unwatch_name :: proc(watcher_id: glib.uint_) ---
		bus_watch_name :: proc(bus_type: BusType, name: cstring, flags: BusNameWatcherFlags, name_appeared_handler: BusNameAppearedCallback, name_vanished_handler: BusNameVanishedCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---
		bus_watch_name_on_connection :: proc(connection: ^DBusConnection, name: cstring, flags: BusNameWatcherFlags, name_appeared_handler: BusNameAppearedCallback, name_vanished_handler: BusNameVanishedCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---
		bus_watch_name_on_connection_with_closures :: proc(connection: ^DBusConnection, name: cstring, flags: BusNameWatcherFlags, name_appeared_closure: ^gobj.Closure, name_vanished_closure: ^gobj.Closure) -> glib.uint_ ---
		bus_watch_name_with_closures :: proc(bus_type: BusType, name: cstring, flags: BusNameWatcherFlags, name_appeared_closure: ^gobj.Closure, name_vanished_closure: ^gobj.Closure) -> glib.uint_ ---
		bytes_icon_get_bytes :: proc(icon: ^BytesIcon) -> ^glib.Bytes ---
		bytes_icon_get_type :: proc() -> gobj.Type ---
		bytes_icon_get_type :: proc() -> gobj.Type ---
		bytes_icon_new :: proc(bytes: ^glib.Bytes) -> ^Icon ---
		cancellable_cancel :: proc(cancellable: ^Cancellable) ---
		cancellable_connect :: proc(cancellable: ^Cancellable, callback: gobj.Callback, data: glib.pointer, data_destroy_func: glib.DestroyNotify) -> glib.ulong ---
		cancellable_disconnect :: proc(cancellable: ^Cancellable, handler_id: glib.ulong) ---
		cancellable_get_current :: proc() -> ^Cancellable ---
		cancellable_get_fd :: proc(cancellable: ^Cancellable) -> i32 ---
		cancellable_get_type :: proc() -> gobj.Type ---
		cancellable_get_type :: proc() -> gobj.Type ---
		cancellable_is_cancelled :: proc(cancellable: ^Cancellable) -> glib.boolean ---
		cancellable_make_pollfd :: proc(cancellable: ^Cancellable, pollfd: ^glib.PollFD) -> glib.boolean ---
		cancellable_new :: proc() -> ^Cancellable ---
		cancellable_pop_current :: proc(cancellable: ^Cancellable) ---
		cancellable_push_current :: proc(cancellable: ^Cancellable) ---
		cancellable_release_fd :: proc(cancellable: ^Cancellable) ---
		cancellable_reset :: proc(cancellable: ^Cancellable) ---
		cancellable_set_error_if_cancelled :: proc(cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		cancellable_source_new :: proc(cancellable: ^Cancellable) -> ^glib.Source ---
		charset_converter_get_num_fallbacks :: proc(converter: ^CharsetConverter) -> glib.uint_ ---
		charset_converter_get_type :: proc() -> gobj.Type ---
		charset_converter_get_type :: proc() -> gobj.Type ---
		charset_converter_get_use_fallback :: proc(converter: ^CharsetConverter) -> glib.boolean ---
		charset_converter_new :: proc(to_charset: cstring, from_charset: cstring, error: ^^glib.Error) -> ^CharsetConverter ---
		charset_converter_set_use_fallback :: proc(converter: ^CharsetConverter, use_fallback: glib.boolean) ---
		content_type_can_be_executable :: proc(type: cstring) -> glib.boolean ---
		content_type_equals :: proc(type1: cstring, type2: cstring) -> glib.boolean ---
		content_type_from_mime_type :: proc(mime_type: cstring) -> cstring ---
		content_type_get_description :: proc(type: cstring) -> cstring ---
		content_type_get_generic_icon_name :: proc(type: cstring) -> cstring ---
		content_type_get_icon :: proc(type: cstring) -> ^Icon ---
		content_type_get_mime_dirs :: proc() -> ^cstring ---
		content_type_get_mime_type :: proc(type: cstring) -> cstring ---
		content_type_get_symbolic_icon :: proc(type: cstring) -> ^Icon ---
		content_type_guess :: proc(filename: cstring, data: ^glib.uchar, data_size: glib.size, result_uncertain: ^glib.boolean) -> cstring ---
		content_type_guess_for_tree :: proc(root: ^File) -> ^cstring ---
		content_type_is_a :: proc(type: cstring, supertype: cstring) -> glib.boolean ---
		content_type_is_mime_type :: proc(type: cstring, mime_type: cstring) -> glib.boolean ---
		content_type_is_unknown :: proc(type: cstring) -> glib.boolean ---
		content_type_set_mime_dirs :: proc(dirs: [^]cstring) ---
		content_types_get_registered :: proc() -> ^glib.List ---
		converter_convert :: proc(converter: ^Converter, inbuf: rawptr, inbuf_size: glib.size, outbuf: rawptr, outbuf_size: glib.size, flags: ConverterFlags, bytes_read: ^glib.size, bytes_written: ^glib.size, error: ^^glib.Error) -> ConverterResult ---
		converter_flags_get_type :: proc() -> gobj.Type ---
		converter_flags_get_type :: proc() -> gobj.Type ---
		converter_get_type :: proc() -> gobj.Type ---
		converter_get_type :: proc() -> gobj.Type ---
		converter_input_stream_get_converter :: proc(converter_stream: ^ConverterInputStream) -> ^Converter ---
		converter_input_stream_get_type :: proc() -> gobj.Type ---
		converter_input_stream_get_type :: proc() -> gobj.Type ---
		converter_input_stream_new :: proc(base_stream: ^InputStream, converter: ^Converter) -> ^InputStream ---
		converter_output_stream_get_converter :: proc(converter_stream: ^ConverterOutputStream) -> ^Converter ---
		converter_output_stream_get_type :: proc() -> gobj.Type ---
		converter_output_stream_get_type :: proc() -> gobj.Type ---
		converter_output_stream_new :: proc(base_stream: ^OutputStream, converter: ^Converter) -> ^OutputStream ---
		converter_reset :: proc(converter: ^Converter) ---
		converter_result_get_type :: proc() -> gobj.Type ---
		converter_result_get_type :: proc() -> gobj.Type ---
		credentials_get_native :: proc(credentials: ^Credentials, native_type: CredentialsType) -> glib.pointer ---
		credentials_get_type :: proc() -> gobj.Type ---
		credentials_get_type :: proc() -> gobj.Type ---
		credentials_get_unix_pid :: proc(credentials: ^Credentials, error: ^^glib.Error) -> linux.Pid ---
		credentials_get_unix_user :: proc(credentials: ^Credentials, error: ^^glib.Error) -> linux.Uid ---
		credentials_is_same_user :: proc(credentials: ^Credentials, other_credentials: ^Credentials, error: ^^glib.Error) -> glib.boolean ---
		credentials_new :: proc() -> ^Credentials ---
		credentials_set_native :: proc(credentials: ^Credentials, native_type: CredentialsType, native: glib.pointer) ---
		credentials_set_unix_user :: proc(credentials: ^Credentials, uid: linux.Uid, error: ^^glib.Error) -> glib.boolean ---
		credentials_to_string :: proc(credentials: ^Credentials) -> cstring ---
		credentials_type_get_type :: proc() -> gobj.Type ---
		credentials_type_get_type :: proc() -> gobj.Type ---
		data_input_stream_get_byte_order :: proc(stream: ^DataInputStream) -> DataStreamByteOrder ---
		data_input_stream_get_newline_type :: proc(stream: ^DataInputStream) -> DataStreamNewlineType ---
		data_input_stream_get_type :: proc() -> gobj.Type ---
		data_input_stream_get_type :: proc() -> gobj.Type ---
		data_input_stream_new :: proc(base_stream: ^InputStream) -> ^DataInputStream ---
		data_input_stream_read_byte :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.uchar ---
		data_input_stream_read_int16 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int16 ---
		data_input_stream_read_int32 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int32 ---
		data_input_stream_read_int64 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int64 ---
		data_input_stream_read_line :: proc(stream: ^DataInputStream, length: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---
		data_input_stream_read_line_async :: proc(stream: ^DataInputStream, io_priority: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		data_input_stream_read_line_finish :: proc(stream: ^DataInputStream, result: ^AsyncResult, length: ^glib.size, error: ^^glib.Error) -> cstring ---
		data_input_stream_read_line_finish_utf8 :: proc(stream: ^DataInputStream, result: ^AsyncResult, length: ^glib.size, error: ^^glib.Error) -> cstring ---
		data_input_stream_read_line_utf8 :: proc(stream: ^DataInputStream, length: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---
		data_input_stream_read_uint16 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.uint16 ---
		data_input_stream_read_uint32 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.uint32 ---
		data_input_stream_read_uint64 :: proc(stream: ^DataInputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.uint64 ---
		data_input_stream_read_until :: proc(stream: ^DataInputStream, stop_chars: cstring, length: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---
		data_input_stream_read_until_async :: proc(stream: ^DataInputStream, stop_chars: cstring, io_priority: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		data_input_stream_read_until_finish :: proc(stream: ^DataInputStream, result: ^AsyncResult, length: ^glib.size, error: ^^glib.Error) -> cstring ---
		data_input_stream_read_upto :: proc(stream: ^DataInputStream, stop_chars: cstring, stop_chars_len: glib.ssize, length: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---
		data_input_stream_read_upto_async :: proc(stream: ^DataInputStream, stop_chars: cstring, stop_chars_len: glib.ssize, io_priority: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		data_input_stream_read_upto_finish :: proc(stream: ^DataInputStream, result: ^AsyncResult, length: ^glib.size, error: ^^glib.Error) -> cstring ---
		data_input_stream_set_byte_order :: proc(stream: ^DataInputStream, order: DataStreamByteOrder) ---
		data_input_stream_set_newline_type :: proc(stream: ^DataInputStream, type: DataStreamNewlineType) ---
		data_output_stream_get_byte_order :: proc(stream: ^DataOutputStream) -> DataStreamByteOrder ---
		data_output_stream_get_type :: proc() -> gobj.Type ---
		data_output_stream_get_type :: proc() -> gobj.Type ---
		data_output_stream_new :: proc(base_stream: ^OutputStream) -> ^DataOutputStream ---
		data_output_stream_put_byte :: proc(stream: ^DataOutputStream, data: glib.uchar, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		data_output_stream_put_int16 :: proc(stream: ^DataOutputStream, data: glib.int16, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		data_output_stream_put_int32 :: proc(stream: ^DataOutputStream, data: glib.int32, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		data_output_stream_put_int64 :: proc(stream: ^DataOutputStream, data: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		data_output_stream_put_string :: proc(stream: ^DataOutputStream, str: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		data_output_stream_put_uint16 :: proc(stream: ^DataOutputStream, data: glib.uint16, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		data_output_stream_put_uint32 :: proc(stream: ^DataOutputStream, data: glib.uint32, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		data_output_stream_put_uint64 :: proc(stream: ^DataOutputStream, data: glib.uint64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		data_output_stream_set_byte_order :: proc(stream: ^DataOutputStream, order: DataStreamByteOrder) ---
		data_stream_byte_order_get_type :: proc() -> gobj.Type ---
		data_stream_byte_order_get_type :: proc() -> gobj.Type ---
		data_stream_newline_type_get_type :: proc() -> gobj.Type ---
		data_stream_newline_type_get_type :: proc() -> gobj.Type ---
		datagram_based_condition_check :: proc(datagram_based: ^DatagramBased, condition: glib.IOCondition) -> glib.IOCondition ---
		datagram_based_condition_wait :: proc(datagram_based: ^DatagramBased, condition: glib.IOCondition, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		datagram_based_create_source :: proc(datagram_based: ^DatagramBased, condition: glib.IOCondition, cancellable: ^Cancellable) -> ^glib.Source ---
		datagram_based_get_type :: proc() -> gobj.Type ---
		datagram_based_get_type :: proc() -> gobj.Type ---
		datagram_based_receive_messages :: proc(datagram_based: ^DatagramBased, messages: [^]InputMessage, num_messages: glib.uint_, flags: glib.int_, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---
		datagram_based_send_messages :: proc(datagram_based: ^DatagramBased, messages: [^]OutputMessage, num_messages: glib.uint_, flags: glib.int_, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---
		dbus_action_group_get :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring) -> ^DBusActionGroup ---
		dbus_action_group_get_type :: proc() -> gobj.Type ---
		dbus_action_group_get_type :: proc() -> gobj.Type ---
		dbus_address_escape_value :: proc(string_p: cstring) -> cstring ---
		dbus_address_get_for_bus_sync :: proc(bus_type: BusType, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---
		dbus_address_get_stream :: proc(address: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_address_get_stream_finish :: proc(res: ^AsyncResult, out_guid: ^cstring, error: ^^glib.Error) -> ^IOStream ---
		dbus_address_get_stream_sync :: proc(address: cstring, out_guid: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^IOStream ---
		dbus_annotation_info_get_type :: proc() -> gobj.Type ---
		dbus_annotation_info_get_type :: proc() -> gobj.Type ---
		dbus_annotation_info_lookup :: proc(annotations: [^]^DBusAnnotationInfo, name: cstring) -> cstring ---
		dbus_annotation_info_ref :: proc(info: ^DBusAnnotationInfo) -> ^DBusAnnotationInfo ---
		dbus_annotation_info_unref :: proc(info: ^DBusAnnotationInfo) ---
		dbus_arg_info_get_type :: proc() -> gobj.Type ---
		dbus_arg_info_get_type :: proc() -> gobj.Type ---
		dbus_arg_info_ref :: proc(info: ^DBusArgInfo) -> ^DBusArgInfo ---
		dbus_arg_info_unref :: proc(info: ^DBusArgInfo) ---
		dbus_auth_observer_allow_mechanism :: proc(observer: ^DBusAuthObserver, mechanism: cstring) -> glib.boolean ---
		dbus_auth_observer_authorize_authenticated_peer :: proc(observer: ^DBusAuthObserver, stream: ^IOStream, credentials: ^Credentials) -> glib.boolean ---
		dbus_auth_observer_get_type :: proc() -> gobj.Type ---
		dbus_auth_observer_get_type :: proc() -> gobj.Type ---
		dbus_auth_observer_new :: proc() -> ^DBusAuthObserver ---
		dbus_call_flags_get_type :: proc() -> gobj.Type ---
		dbus_call_flags_get_type :: proc() -> gobj.Type ---
		dbus_capability_flags_get_type :: proc() -> gobj.Type ---
		dbus_capability_flags_get_type :: proc() -> gobj.Type ---
		dbus_connection_add_filter :: proc(connection: ^DBusConnection, filter_function: DBusMessageFilterFunction, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---
		dbus_connection_call :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: ^glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_connection_call_finish :: proc(connection: ^DBusConnection, res: ^AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---
		dbus_connection_call_sync :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: ^glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---
		dbus_connection_call_with_unix_fd_list :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: ^glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_connection_call_with_unix_fd_list_finish :: proc(connection: ^DBusConnection, out_fd_list: ^^UnixFDList, res: ^AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---
		dbus_connection_call_with_unix_fd_list_sync :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: ^glib.Variant, reply_type: ^glib.VariantType, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, out_fd_list: ^^UnixFDList, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---
		dbus_connection_close :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_connection_close_finish :: proc(connection: ^DBusConnection, res: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		dbus_connection_close_sync :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		dbus_connection_emit_signal :: proc(connection: ^DBusConnection, destination_bus_name: cstring, object_path: cstring, interface_name: cstring, signal_name: cstring, parameters: ^glib.Variant, error: ^^glib.Error) -> glib.boolean ---
		dbus_connection_export_action_group :: proc(connection: ^DBusConnection, object_path: cstring, action_group: ^ActionGroup, error: ^^glib.Error) -> glib.uint_ ---
		dbus_connection_export_menu_model :: proc(connection: ^DBusConnection, object_path: cstring, menu: ^MenuModel, error: ^^glib.Error) -> glib.uint_ ---
		dbus_connection_flags_get_type :: proc() -> gobj.Type ---
		dbus_connection_flags_get_type :: proc() -> gobj.Type ---
		dbus_connection_flush :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_connection_flush_finish :: proc(connection: ^DBusConnection, res: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		dbus_connection_flush_sync :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		dbus_connection_get_capabilities :: proc(connection: ^DBusConnection) -> DBusCapabilityFlags ---
		dbus_connection_get_exit_on_close :: proc(connection: ^DBusConnection) -> glib.boolean ---
		dbus_connection_get_flags :: proc(connection: ^DBusConnection) -> DBusConnectionFlags ---
		dbus_connection_get_guid :: proc(connection: ^DBusConnection) -> cstring ---
		dbus_connection_get_last_serial :: proc(connection: ^DBusConnection) -> glib.uint32 ---
		dbus_connection_get_peer_credentials :: proc(connection: ^DBusConnection) -> ^Credentials ---
		dbus_connection_get_stream :: proc(connection: ^DBusConnection) -> ^IOStream ---
		dbus_connection_get_type :: proc() -> gobj.Type ---
		dbus_connection_get_type :: proc() -> gobj.Type ---
		dbus_connection_get_unique_name :: proc(connection: ^DBusConnection) -> cstring ---
		dbus_connection_is_closed :: proc(connection: ^DBusConnection) -> glib.boolean ---
		dbus_connection_new :: proc(stream: ^IOStream, guid: cstring, flags: DBusConnectionFlags, observer: ^DBusAuthObserver, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_connection_new_finish :: proc(res: ^AsyncResult, error: ^^glib.Error) -> ^DBusConnection ---
		dbus_connection_new_for_address :: proc(address: cstring, flags: DBusConnectionFlags, observer: ^DBusAuthObserver, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_connection_new_for_address_finish :: proc(res: ^AsyncResult, error: ^^glib.Error) -> ^DBusConnection ---
		dbus_connection_new_for_address_sync :: proc(address: cstring, flags: DBusConnectionFlags, observer: ^DBusAuthObserver, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusConnection ---
		dbus_connection_new_sync :: proc(stream: ^IOStream, guid: cstring, flags: DBusConnectionFlags, observer: ^DBusAuthObserver, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusConnection ---
		dbus_connection_register_object :: proc(connection: ^DBusConnection, object_path: cstring, interface_info: ^DBusInterfaceInfo, vtable: ^DBusInterfaceVTable, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify, error: ^^glib.Error) -> glib.uint_ ---
		dbus_connection_register_object_with_closures :: proc(connection: ^DBusConnection, object_path: cstring, interface_info: ^DBusInterfaceInfo, method_call_closure: ^gobj.Closure, get_property_closure: ^gobj.Closure, set_property_closure: ^gobj.Closure, error: ^^glib.Error) -> glib.uint_ ---
		dbus_connection_register_subtree :: proc(connection: ^DBusConnection, object_path: cstring, vtable: ^DBusSubtreeVTable, flags: DBusSubtreeFlags, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify, error: ^^glib.Error) -> glib.uint_ ---
		dbus_connection_remove_filter :: proc(connection: ^DBusConnection, filter_id: glib.uint_) ---
		dbus_connection_send_message :: proc(connection: ^DBusConnection, message: ^DBusMessage, flags: DBusSendMessageFlags, out_serial: ^glib.uint32, error: ^^glib.Error) -> glib.boolean ---
		dbus_connection_send_message_with_reply :: proc(connection: ^DBusConnection, message: ^DBusMessage, flags: DBusSendMessageFlags, timeout_msec: glib.int_, out_serial: ^glib.uint32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_connection_send_message_with_reply_finish :: proc(connection: ^DBusConnection, res: ^AsyncResult, error: ^^glib.Error) -> ^DBusMessage ---
		dbus_connection_send_message_with_reply_sync :: proc(connection: ^DBusConnection, message: ^DBusMessage, flags: DBusSendMessageFlags, timeout_msec: glib.int_, out_serial: ^glib.uint32, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusMessage ---
		dbus_connection_set_exit_on_close :: proc(connection: ^DBusConnection, exit_on_close: glib.boolean) ---
		dbus_connection_signal_subscribe :: proc(connection: ^DBusConnection, sender: cstring, interface_name: cstring, member: cstring, object_path: cstring, arg0: cstring, flags: DBusSignalFlags, callback: DBusSignalCallback, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) -> glib.uint_ ---
		dbus_connection_signal_unsubscribe :: proc(connection: ^DBusConnection, subscription_id: glib.uint_) ---
		dbus_connection_start_message_processing :: proc(connection: ^DBusConnection) ---
		dbus_connection_unexport_action_group :: proc(connection: ^DBusConnection, export_id: glib.uint_) ---
		dbus_connection_unexport_menu_model :: proc(connection: ^DBusConnection, export_id: glib.uint_) ---
		dbus_connection_unregister_object :: proc(connection: ^DBusConnection, registration_id: glib.uint_) -> glib.boolean ---
		dbus_connection_unregister_subtree :: proc(connection: ^DBusConnection, registration_id: glib.uint_) -> glib.boolean ---
		dbus_error_encode_gerror :: proc(error: ^glib.Error) -> cstring ---
		dbus_error_get_remote_error :: proc(error: ^glib.Error) -> cstring ---
		dbus_error_get_type :: proc() -> gobj.Type ---
		dbus_error_get_type :: proc() -> gobj.Type ---
		dbus_error_is_remote_error :: proc(error: ^glib.Error) -> glib.boolean ---
		dbus_error_new_for_dbus_error :: proc(dbus_error_name: cstring, dbus_error_message: cstring) -> ^glib.Error ---
		dbus_error_quark :: proc() -> glib.Quark ---
		dbus_error_quark :: proc() -> glib.Quark ---
		dbus_error_register_error :: proc(error_domain: glib.Quark, error_code: glib.int_, dbus_error_name: cstring) -> glib.boolean ---
		dbus_error_register_error_domain :: proc(error_domain_quark_name: cstring, quark_volatile: ^glib.size, entries: [^]DBusErrorEntry, num_entries: glib.uint_) ---
		dbus_error_set_dbus_error :: proc(error: ^^glib.Error, dbus_error_name: cstring, dbus_error_message: cstring, format: cstring, #c_vararg var_args: ..any) ---
		dbus_error_strip_remote_error :: proc(error: ^glib.Error) -> glib.boolean ---
		dbus_error_unregister_error :: proc(error_domain: glib.Quark, error_code: glib.int_, dbus_error_name: cstring) -> glib.boolean ---
		dbus_escape_object_path :: proc(s: cstring) -> cstring ---
		dbus_escape_object_path_bytestring :: proc(bytes: [^]glib.uint8) -> cstring ---
		dbus_generate_guid :: proc() -> cstring ---
		dbus_gvalue_to_gvariant :: proc(gvalue: ^gobj.Value, type: ^glib.VariantType) -> ^glib.Variant ---
		dbus_gvariant_to_gvalue :: proc(value: ^glib.Variant, out_gvalue: ^gobj.Value) ---
		dbus_interface_dup_object :: proc(interface_: ^DBusInterface) -> ^DBusObject ---
		dbus_interface_get_info :: proc(interface_: ^DBusInterface) -> ^DBusInterfaceInfo ---
		dbus_interface_get_object :: proc(interface_: ^DBusInterface) -> ^DBusObject ---
		dbus_interface_get_type :: proc() -> gobj.Type ---
		dbus_interface_get_type :: proc() -> gobj.Type ---
		dbus_interface_info_cache_build :: proc(info: ^DBusInterfaceInfo) ---
		dbus_interface_info_cache_release :: proc(info: ^DBusInterfaceInfo) ---
		dbus_interface_info_generate_xml :: proc(info: ^DBusInterfaceInfo, indent: glib.uint_, string_builder: ^glib.String) ---
		dbus_interface_info_get_type :: proc() -> gobj.Type ---
		dbus_interface_info_get_type :: proc() -> gobj.Type ---
		dbus_interface_info_lookup_method :: proc(info: ^DBusInterfaceInfo, name: cstring) -> ^DBusMethodInfo ---
		dbus_interface_info_lookup_property :: proc(info: ^DBusInterfaceInfo, name: cstring) -> ^DBusPropertyInfo ---
		dbus_interface_info_lookup_signal :: proc(info: ^DBusInterfaceInfo, name: cstring) -> ^DBusSignalInfo ---
		dbus_interface_info_ref :: proc(info: ^DBusInterfaceInfo) -> ^DBusInterfaceInfo ---
		dbus_interface_info_unref :: proc(info: ^DBusInterfaceInfo) ---
		dbus_interface_set_object :: proc(interface_: ^DBusInterface, object: ^DBusObject) ---
		dbus_interface_skeleton_export :: proc(interface_: ^DBusInterfaceSkeleton, connection: ^DBusConnection, object_path: cstring, error: ^^glib.Error) -> glib.boolean ---
		dbus_interface_skeleton_flags_get_type :: proc() -> gobj.Type ---
		dbus_interface_skeleton_flags_get_type :: proc() -> gobj.Type ---
		dbus_interface_skeleton_flush :: proc(interface_: ^DBusInterfaceSkeleton) ---
		dbus_interface_skeleton_get_connection :: proc(interface_: ^DBusInterfaceSkeleton) -> ^DBusConnection ---
		dbus_interface_skeleton_get_connections :: proc(interface_: ^DBusInterfaceSkeleton) -> ^glib.List ---
		dbus_interface_skeleton_get_flags :: proc(interface_: ^DBusInterfaceSkeleton) -> DBusInterfaceSkeletonFlags ---
		dbus_interface_skeleton_get_info :: proc(interface_: ^DBusInterfaceSkeleton) -> ^DBusInterfaceInfo ---
		dbus_interface_skeleton_get_object_path :: proc(interface_: ^DBusInterfaceSkeleton) -> cstring ---
		dbus_interface_skeleton_get_properties :: proc(interface_: ^DBusInterfaceSkeleton) -> ^glib.Variant ---
		dbus_interface_skeleton_get_type :: proc() -> gobj.Type ---
		dbus_interface_skeleton_get_type :: proc() -> gobj.Type ---
		dbus_interface_skeleton_get_vtable :: proc(interface_: ^DBusInterfaceSkeleton) -> ^DBusInterfaceVTable ---
		dbus_interface_skeleton_has_connection :: proc(interface_: ^DBusInterfaceSkeleton, connection: ^DBusConnection) -> glib.boolean ---
		dbus_interface_skeleton_set_flags :: proc(interface_: ^DBusInterfaceSkeleton, flags: DBusInterfaceSkeletonFlags) ---
		dbus_interface_skeleton_unexport :: proc(interface_: ^DBusInterfaceSkeleton) ---
		dbus_interface_skeleton_unexport_from_connection :: proc(interface_: ^DBusInterfaceSkeleton, connection: ^DBusConnection) ---
		dbus_is_address :: proc(string_p: cstring) -> glib.boolean ---
		dbus_is_error_name :: proc(string_p: cstring) -> glib.boolean ---
		dbus_is_guid :: proc(string_p: cstring) -> glib.boolean ---
		dbus_is_interface_name :: proc(string_p: cstring) -> glib.boolean ---
		dbus_is_member_name :: proc(string_p: cstring) -> glib.boolean ---
		dbus_is_name :: proc(string_p: cstring) -> glib.boolean ---
		dbus_is_supported_address :: proc(string_p: cstring, error: ^^glib.Error) -> glib.boolean ---
		dbus_is_unique_name :: proc(string_p: cstring) -> glib.boolean ---
		dbus_menu_model_get :: proc(connection: ^DBusConnection, bus_name: cstring, object_path: cstring) -> ^DBusMenuModel ---
		dbus_menu_model_get_type :: proc() -> gobj.Type ---
		dbus_menu_model_get_type :: proc() -> gobj.Type ---
		dbus_message_byte_order_get_type :: proc() -> gobj.Type ---
		dbus_message_byte_order_get_type :: proc() -> gobj.Type ---
		dbus_message_bytes_needed :: proc(blob: ^glib.uchar, blob_len: glib.size, error: ^^glib.Error) -> glib.ssize ---
		dbus_message_copy :: proc(message: ^DBusMessage, error: ^^glib.Error) -> ^DBusMessage ---
		dbus_message_flags_get_type :: proc() -> gobj.Type ---
		dbus_message_flags_get_type :: proc() -> gobj.Type ---
		dbus_message_get_arg0 :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_arg0_path :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_body :: proc(message: ^DBusMessage) -> ^glib.Variant ---
		dbus_message_get_byte_order :: proc(message: ^DBusMessage) -> DBusMessageByteOrder ---
		dbus_message_get_destination :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_error_name :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_flags :: proc(message: ^DBusMessage) -> DBusMessageFlags ---
		dbus_message_get_header :: proc(message: ^DBusMessage, header_field: DBusMessageHeaderField) -> ^glib.Variant ---
		dbus_message_get_header_fields :: proc(message: ^DBusMessage) -> ^glib.uchar ---
		dbus_message_get_interface :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_locked :: proc(message: ^DBusMessage) -> glib.boolean ---
		dbus_message_get_member :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_message_type :: proc(message: ^DBusMessage) -> DBusMessageType ---
		dbus_message_get_num_unix_fds :: proc(message: ^DBusMessage) -> glib.uint32 ---
		dbus_message_get_path :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_reply_serial :: proc(message: ^DBusMessage) -> glib.uint32 ---
		dbus_message_get_sender :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_serial :: proc(message: ^DBusMessage) -> glib.uint32 ---
		dbus_message_get_signature :: proc(message: ^DBusMessage) -> cstring ---
		dbus_message_get_type :: proc() -> gobj.Type ---
		dbus_message_get_type :: proc() -> gobj.Type ---
		dbus_message_get_unix_fd_list :: proc(message: ^DBusMessage) -> ^UnixFDList ---
		dbus_message_header_field_get_type :: proc() -> gobj.Type ---
		dbus_message_header_field_get_type :: proc() -> gobj.Type ---
		dbus_message_lock :: proc(message: ^DBusMessage) ---
		dbus_message_new :: proc() -> ^DBusMessage ---
		dbus_message_new_from_blob :: proc(blob: ^glib.uchar, blob_len: glib.size, capabilities: DBusCapabilityFlags, error: ^^glib.Error) -> ^DBusMessage ---
		dbus_message_new_method_call :: proc(name: cstring, path: cstring, interface_: cstring, method: cstring) -> ^DBusMessage ---
		dbus_message_new_method_error :: proc(method_call_message: ^DBusMessage, error_name: cstring, error_message_format: cstring, #c_vararg var_args: ..any) -> ^DBusMessage ---
		dbus_message_new_method_error_literal :: proc(method_call_message: ^DBusMessage, error_name: cstring, error_message: cstring) -> ^DBusMessage ---
		dbus_message_new_method_reply :: proc(method_call_message: ^DBusMessage) -> ^DBusMessage ---
		dbus_message_new_signal :: proc(path: cstring, interface_: cstring, signal: cstring) -> ^DBusMessage ---
		dbus_message_print :: proc(message: ^DBusMessage, indent: glib.uint_) -> cstring ---
		dbus_message_set_body :: proc(message: ^DBusMessage, body: ^glib.Variant) ---
		dbus_message_set_byte_order :: proc(message: ^DBusMessage, byte_order: DBusMessageByteOrder) ---
		dbus_message_set_destination :: proc(message: ^DBusMessage, value: cstring) ---
		dbus_message_set_error_name :: proc(message: ^DBusMessage, value: cstring) ---
		dbus_message_set_flags :: proc(message: ^DBusMessage, flags: DBusMessageFlags) ---
		dbus_message_set_header :: proc(message: ^DBusMessage, header_field: DBusMessageHeaderField, value: ^glib.Variant) ---
		dbus_message_set_interface :: proc(message: ^DBusMessage, value: cstring) ---
		dbus_message_set_member :: proc(message: ^DBusMessage, value: cstring) ---
		dbus_message_set_message_type :: proc(message: ^DBusMessage, type: DBusMessageType) ---
		dbus_message_set_num_unix_fds :: proc(message: ^DBusMessage, value: glib.uint32) ---
		dbus_message_set_path :: proc(message: ^DBusMessage, value: cstring) ---
		dbus_message_set_reply_serial :: proc(message: ^DBusMessage, value: glib.uint32) ---
		dbus_message_set_sender :: proc(message: ^DBusMessage, value: cstring) ---
		dbus_message_set_serial :: proc(message: ^DBusMessage, serial: glib.uint32) ---
		dbus_message_set_signature :: proc(message: ^DBusMessage, value: cstring) ---
		dbus_message_set_unix_fd_list :: proc(message: ^DBusMessage, fd_list: ^UnixFDList) ---
		dbus_message_to_blob :: proc(message: ^DBusMessage, out_size: ^glib.size, capabilities: DBusCapabilityFlags, error: ^^glib.Error) -> ^glib.uchar ---
		dbus_message_to_gerror :: proc(message: ^DBusMessage, error: ^^glib.Error) -> glib.boolean ---
		dbus_message_type_get_type :: proc() -> gobj.Type ---
		dbus_message_type_get_type :: proc() -> gobj.Type ---
		dbus_method_info_get_type :: proc() -> gobj.Type ---
		dbus_method_info_get_type :: proc() -> gobj.Type ---
		dbus_method_info_ref :: proc(info: ^DBusMethodInfo) -> ^DBusMethodInfo ---
		dbus_method_info_unref :: proc(info: ^DBusMethodInfo) ---
		dbus_method_invocation_get_connection :: proc(invocation: ^DBusMethodInvocation) -> ^DBusConnection ---
		dbus_method_invocation_get_interface_name :: proc(invocation: ^DBusMethodInvocation) -> cstring ---
		dbus_method_invocation_get_message :: proc(invocation: ^DBusMethodInvocation) -> ^DBusMessage ---
		dbus_method_invocation_get_method_info :: proc(invocation: ^DBusMethodInvocation) -> ^DBusMethodInfo ---
		dbus_method_invocation_get_method_name :: proc(invocation: ^DBusMethodInvocation) -> cstring ---
		dbus_method_invocation_get_object_path :: proc(invocation: ^DBusMethodInvocation) -> cstring ---
		dbus_method_invocation_get_parameters :: proc(invocation: ^DBusMethodInvocation) -> ^glib.Variant ---
		dbus_method_invocation_get_property_info :: proc(invocation: ^DBusMethodInvocation) -> ^DBusPropertyInfo ---
		dbus_method_invocation_get_sender :: proc(invocation: ^DBusMethodInvocation) -> cstring ---
		dbus_method_invocation_get_type :: proc() -> gobj.Type ---
		dbus_method_invocation_get_type :: proc() -> gobj.Type ---
		dbus_method_invocation_get_user_data :: proc(invocation: ^DBusMethodInvocation) -> glib.pointer ---
		dbus_method_invocation_return_dbus_error :: proc(invocation: ^DBusMethodInvocation, error_name: cstring, error_message: cstring) ---
		dbus_method_invocation_return_error :: proc(invocation: ^DBusMethodInvocation, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---
		dbus_method_invocation_return_error_literal :: proc(invocation: ^DBusMethodInvocation, domain: glib.Quark, code: glib.int_, message: cstring) ---
		dbus_method_invocation_return_gerror :: proc(invocation: ^DBusMethodInvocation, error: ^glib.Error) ---
		dbus_method_invocation_return_value :: proc(invocation: ^DBusMethodInvocation, parameters: ^glib.Variant) ---
		dbus_method_invocation_return_value_with_unix_fd_list :: proc(invocation: ^DBusMethodInvocation, parameters: ^glib.Variant, fd_list: ^UnixFDList) ---
		dbus_method_invocation_take_error :: proc(invocation: ^DBusMethodInvocation, error: ^glib.Error) ---
		dbus_node_info_generate_xml :: proc(info: ^DBusNodeInfo, indent: glib.uint_, string_builder: ^glib.String) ---
		dbus_node_info_get_type :: proc() -> gobj.Type ---
		dbus_node_info_get_type :: proc() -> gobj.Type ---
		dbus_node_info_lookup_interface :: proc(info: ^DBusNodeInfo, name: cstring) -> ^DBusInterfaceInfo ---
		dbus_node_info_new_for_xml :: proc(xml_data: cstring, error: ^^glib.Error) -> ^DBusNodeInfo ---
		dbus_node_info_ref :: proc(info: ^DBusNodeInfo) -> ^DBusNodeInfo ---
		dbus_node_info_unref :: proc(info: ^DBusNodeInfo) ---
		dbus_object_get_interface :: proc(object: ^DBusObject, interface_name: cstring) -> ^DBusInterface ---
		dbus_object_get_interfaces :: proc(object: ^DBusObject) -> ^glib.List ---
		dbus_object_get_object_path :: proc(object: ^DBusObject) -> cstring ---
		dbus_object_get_type :: proc() -> gobj.Type ---
		dbus_object_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_client_flags_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_client_flags_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_client_get_connection :: proc(manager: ^DBusObjectManagerClient) -> ^DBusConnection ---
		dbus_object_manager_client_get_flags :: proc(manager: ^DBusObjectManagerClient) -> DBusObjectManagerClientFlags ---
		dbus_object_manager_client_get_name :: proc(manager: ^DBusObjectManagerClient) -> cstring ---
		dbus_object_manager_client_get_name_owner :: proc(manager: ^DBusObjectManagerClient) -> cstring ---
		dbus_object_manager_client_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_client_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_client_new :: proc(connection: ^DBusConnection, flags: DBusObjectManagerClientFlags, name: cstring, object_path: cstring, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: glib.pointer, get_proxy_type_destroy_notify: glib.DestroyNotify, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_object_manager_client_new_finish :: proc(res: ^AsyncResult, error: ^^glib.Error) -> ^DBusObjectManager ---
		dbus_object_manager_client_new_for_bus :: proc(bus_type: BusType, flags: DBusObjectManagerClientFlags, name: cstring, object_path: cstring, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: glib.pointer, get_proxy_type_destroy_notify: glib.DestroyNotify, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_object_manager_client_new_for_bus_finish :: proc(res: ^AsyncResult, error: ^^glib.Error) -> ^DBusObjectManager ---
		dbus_object_manager_client_new_for_bus_sync :: proc(bus_type: BusType, flags: DBusObjectManagerClientFlags, name: cstring, object_path: cstring, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: glib.pointer, get_proxy_type_destroy_notify: glib.DestroyNotify, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusObjectManager ---
		dbus_object_manager_client_new_sync :: proc(connection: ^DBusConnection, flags: DBusObjectManagerClientFlags, name: cstring, object_path: cstring, get_proxy_type_func: DBusProxyTypeFunc, get_proxy_type_user_data: glib.pointer, get_proxy_type_destroy_notify: glib.DestroyNotify, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusObjectManager ---
		dbus_object_manager_get_interface :: proc(manager: ^DBusObjectManager, object_path: cstring, interface_name: cstring) -> ^DBusInterface ---
		dbus_object_manager_get_object :: proc(manager: ^DBusObjectManager, object_path: cstring) -> ^DBusObject ---
		dbus_object_manager_get_object_path :: proc(manager: ^DBusObjectManager) -> cstring ---
		dbus_object_manager_get_objects :: proc(manager: ^DBusObjectManager) -> ^glib.List ---
		dbus_object_manager_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_server_export :: proc(manager: ^DBusObjectManagerServer, object: ^DBusObjectSkeleton) ---
		dbus_object_manager_server_export_uniquely :: proc(manager: ^DBusObjectManagerServer, object: ^DBusObjectSkeleton) ---
		dbus_object_manager_server_get_connection :: proc(manager: ^DBusObjectManagerServer) -> ^DBusConnection ---
		dbus_object_manager_server_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_server_get_type :: proc() -> gobj.Type ---
		dbus_object_manager_server_is_exported :: proc(manager: ^DBusObjectManagerServer, object: ^DBusObjectSkeleton) -> glib.boolean ---
		dbus_object_manager_server_new :: proc(object_path: cstring) -> ^DBusObjectManagerServer ---
		dbus_object_manager_server_set_connection :: proc(manager: ^DBusObjectManagerServer, connection: ^DBusConnection) ---
		dbus_object_manager_server_unexport :: proc(manager: ^DBusObjectManagerServer, object_path: cstring) -> glib.boolean ---
		dbus_object_proxy_get_connection :: proc(proxy: ^DBusObjectProxy) -> ^DBusConnection ---
		dbus_object_proxy_get_type :: proc() -> gobj.Type ---
		dbus_object_proxy_get_type :: proc() -> gobj.Type ---
		dbus_object_proxy_new :: proc(connection: ^DBusConnection, object_path: cstring) -> ^DBusObjectProxy ---
		dbus_object_skeleton_add_interface :: proc(object: ^DBusObjectSkeleton, interface_: ^DBusInterfaceSkeleton) ---
		dbus_object_skeleton_flush :: proc(object: ^DBusObjectSkeleton) ---
		dbus_object_skeleton_get_type :: proc() -> gobj.Type ---
		dbus_object_skeleton_get_type :: proc() -> gobj.Type ---
		dbus_object_skeleton_new :: proc(object_path: cstring) -> ^DBusObjectSkeleton ---
		dbus_object_skeleton_remove_interface :: proc(object: ^DBusObjectSkeleton, interface_: ^DBusInterfaceSkeleton) ---
		dbus_object_skeleton_remove_interface_by_name :: proc(object: ^DBusObjectSkeleton, interface_name: cstring) ---
		dbus_object_skeleton_set_object_path :: proc(object: ^DBusObjectSkeleton, object_path: cstring) ---
		dbus_property_info_flags_get_type :: proc() -> gobj.Type ---
		dbus_property_info_flags_get_type :: proc() -> gobj.Type ---
		dbus_property_info_get_type :: proc() -> gobj.Type ---
		dbus_property_info_get_type :: proc() -> gobj.Type ---
		dbus_property_info_ref :: proc(info: ^DBusPropertyInfo) -> ^DBusPropertyInfo ---
		dbus_property_info_unref :: proc(info: ^DBusPropertyInfo) ---
		dbus_proxy_call :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: ^glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_proxy_call_finish :: proc(proxy: ^DBusProxy, res: ^AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---
		dbus_proxy_call_sync :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: ^glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---
		dbus_proxy_call_with_unix_fd_list :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: ^glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_proxy_call_with_unix_fd_list_finish :: proc(proxy: ^DBusProxy, out_fd_list: ^^UnixFDList, res: ^AsyncResult, error: ^^glib.Error) -> ^glib.Variant ---
		dbus_proxy_call_with_unix_fd_list_sync :: proc(proxy: ^DBusProxy, method_name: cstring, parameters: ^glib.Variant, flags: DBusCallFlags, timeout_msec: glib.int_, fd_list: ^UnixFDList, out_fd_list: ^^UnixFDList, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Variant ---
		dbus_proxy_flags_get_type :: proc() -> gobj.Type ---
		dbus_proxy_flags_get_type :: proc() -> gobj.Type ---
		dbus_proxy_get_cached_property :: proc(proxy: ^DBusProxy, property_name: cstring) -> ^glib.Variant ---
		dbus_proxy_get_cached_property_names :: proc(proxy: ^DBusProxy) -> ^cstring ---
		dbus_proxy_get_connection :: proc(proxy: ^DBusProxy) -> ^DBusConnection ---
		dbus_proxy_get_default_timeout :: proc(proxy: ^DBusProxy) -> glib.int_ ---
		dbus_proxy_get_flags :: proc(proxy: ^DBusProxy) -> DBusProxyFlags ---
		dbus_proxy_get_interface_info :: proc(proxy: ^DBusProxy) -> ^DBusInterfaceInfo ---
		dbus_proxy_get_interface_name :: proc(proxy: ^DBusProxy) -> cstring ---
		dbus_proxy_get_name :: proc(proxy: ^DBusProxy) -> cstring ---
		dbus_proxy_get_name_owner :: proc(proxy: ^DBusProxy) -> cstring ---
		dbus_proxy_get_object_path :: proc(proxy: ^DBusProxy) -> cstring ---
		dbus_proxy_get_type :: proc() -> gobj.Type ---
		dbus_proxy_get_type :: proc() -> gobj.Type ---
		dbus_proxy_new :: proc(connection: ^DBusConnection, flags: DBusProxyFlags, info: ^DBusInterfaceInfo, name: cstring, object_path: cstring, interface_name: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_proxy_new_finish :: proc(res: ^AsyncResult, error: ^^glib.Error) -> ^DBusProxy ---
		dbus_proxy_new_for_bus :: proc(bus_type: BusType, flags: DBusProxyFlags, info: ^DBusInterfaceInfo, name: cstring, object_path: cstring, interface_name: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dbus_proxy_new_for_bus_finish :: proc(res: ^AsyncResult, error: ^^glib.Error) -> ^DBusProxy ---
		dbus_proxy_new_for_bus_sync :: proc(bus_type: BusType, flags: DBusProxyFlags, info: ^DBusInterfaceInfo, name: cstring, object_path: cstring, interface_name: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusProxy ---
		dbus_proxy_new_sync :: proc(connection: ^DBusConnection, flags: DBusProxyFlags, info: ^DBusInterfaceInfo, name: cstring, object_path: cstring, interface_name: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusProxy ---
		dbus_proxy_set_cached_property :: proc(proxy: ^DBusProxy, property_name: cstring, value: ^glib.Variant) ---
		dbus_proxy_set_default_timeout :: proc(proxy: ^DBusProxy, timeout_msec: glib.int_) ---
		dbus_proxy_set_interface_info :: proc(proxy: ^DBusProxy, info: ^DBusInterfaceInfo) ---
		dbus_send_message_flags_get_type :: proc() -> gobj.Type ---
		dbus_send_message_flags_get_type :: proc() -> gobj.Type ---
		dbus_server_flags_get_type :: proc() -> gobj.Type ---
		dbus_server_flags_get_type :: proc() -> gobj.Type ---
		dbus_server_get_client_address :: proc(server: ^DBusServer) -> cstring ---
		dbus_server_get_flags :: proc(server: ^DBusServer) -> DBusServerFlags ---
		dbus_server_get_guid :: proc(server: ^DBusServer) -> cstring ---
		dbus_server_get_type :: proc() -> gobj.Type ---
		dbus_server_get_type :: proc() -> gobj.Type ---
		dbus_server_is_active :: proc(server: ^DBusServer) -> glib.boolean ---
		dbus_server_new_sync :: proc(address: cstring, flags: DBusServerFlags, guid: cstring, observer: ^DBusAuthObserver, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DBusServer ---
		dbus_server_start :: proc(server: ^DBusServer) ---
		dbus_server_stop :: proc(server: ^DBusServer) ---
		dbus_signal_flags_get_type :: proc() -> gobj.Type ---
		dbus_signal_flags_get_type :: proc() -> gobj.Type ---
		dbus_signal_info_get_type :: proc() -> gobj.Type ---
		dbus_signal_info_get_type :: proc() -> gobj.Type ---
		dbus_signal_info_ref :: proc(info: ^DBusSignalInfo) -> ^DBusSignalInfo ---
		dbus_signal_info_unref :: proc(info: ^DBusSignalInfo) ---
		dbus_subtree_flags_get_type :: proc() -> gobj.Type ---
		dbus_subtree_flags_get_type :: proc() -> gobj.Type ---
		dbus_unescape_object_path :: proc(s: cstring) -> ^glib.uint8 ---
		debug_controller_dbus_get_type :: proc() -> gobj.Type ---
		debug_controller_dbus_get_type :: proc() -> gobj.Type ---
		debug_controller_dbus_new :: proc(connection: ^DBusConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> ^DebugControllerDBus ---
		debug_controller_dbus_stop :: proc(self: ^DebugControllerDBus) ---
		debug_controller_get_debug_enabled :: proc(self: ^DebugController) -> glib.boolean ---
		debug_controller_get_type :: proc() -> gobj.Type ---
		debug_controller_get_type :: proc() -> gobj.Type ---
		debug_controller_set_debug_enabled :: proc(self: ^DebugController, debug_enabled: glib.boolean) ---
		drive_can_eject :: proc(drive: ^Drive) -> glib.boolean ---
		drive_can_poll_for_media :: proc(drive: ^Drive) -> glib.boolean ---
		drive_can_start :: proc(drive: ^Drive) -> glib.boolean ---
		drive_can_start_degraded :: proc(drive: ^Drive) -> glib.boolean ---
		drive_can_stop :: proc(drive: ^Drive) -> glib.boolean ---
		drive_eject :: proc(drive: ^Drive, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		drive_eject_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		drive_eject_with_operation :: proc(drive: ^Drive, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		drive_eject_with_operation_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		drive_enumerate_identifiers :: proc(drive: ^Drive) -> ^cstring ---
		drive_get_icon :: proc(drive: ^Drive) -> ^Icon ---
		drive_get_identifier :: proc(drive: ^Drive, kind: cstring) -> cstring ---
		drive_get_name :: proc(drive: ^Drive) -> cstring ---
		drive_get_sort_key :: proc(drive: ^Drive) -> cstring ---
		drive_get_start_stop_type :: proc(drive: ^Drive) -> DriveStartStopType ---
		drive_get_symbolic_icon :: proc(drive: ^Drive) -> ^Icon ---
		drive_get_type :: proc() -> gobj.Type ---
		drive_get_type :: proc() -> gobj.Type ---
		drive_get_volumes :: proc(drive: ^Drive) -> ^glib.List ---
		drive_has_media :: proc(drive: ^Drive) -> glib.boolean ---
		drive_has_volumes :: proc(drive: ^Drive) -> glib.boolean ---
		drive_is_media_check_automatic :: proc(drive: ^Drive) -> glib.boolean ---
		drive_is_media_removable :: proc(drive: ^Drive) -> glib.boolean ---
		drive_is_removable :: proc(drive: ^Drive) -> glib.boolean ---
		drive_poll_for_media :: proc(drive: ^Drive, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		drive_poll_for_media_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		drive_start :: proc(drive: ^Drive, flags: DriveStartFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		drive_start_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		drive_start_flags_get_type :: proc() -> gobj.Type ---
		drive_start_flags_get_type :: proc() -> gobj.Type ---
		drive_start_stop_type_get_type :: proc() -> gobj.Type ---
		drive_start_stop_type_get_type :: proc() -> gobj.Type ---
		drive_stop :: proc(drive: ^Drive, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		drive_stop_finish :: proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		dtls_client_connection_get_accepted_cas :: proc(conn: ^DtlsClientConnection) -> ^glib.List ---
		dtls_client_connection_get_server_identity :: proc(conn: ^DtlsClientConnection) -> ^SocketConnectable ---
		dtls_client_connection_get_type :: proc() -> gobj.Type ---
		dtls_client_connection_get_type :: proc() -> gobj.Type ---
		dtls_client_connection_get_validation_flags :: proc(conn: ^DtlsClientConnection) -> TlsCertificateFlags ---
		dtls_client_connection_new :: proc(base_socket: ^DatagramBased, server_identity: ^SocketConnectable, error: ^^glib.Error) -> ^DatagramBased ---
		dtls_client_connection_set_server_identity :: proc(conn: ^DtlsClientConnection, identity: ^SocketConnectable) ---
		dtls_client_connection_set_validation_flags :: proc(conn: ^DtlsClientConnection, flags: TlsCertificateFlags) ---
		dtls_connection_close :: proc(conn: ^DtlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		dtls_connection_close_async :: proc(conn: ^DtlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dtls_connection_close_finish :: proc(conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		dtls_connection_emit_accept_certificate :: proc(conn: ^DtlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean ---
		dtls_connection_get_certificate :: proc(conn: ^DtlsConnection) -> ^TlsCertificate ---
		dtls_connection_get_channel_binding_data :: proc(conn: ^DtlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean ---
		dtls_connection_get_ciphersuite_name :: proc(conn: ^DtlsConnection) -> cstring ---
		dtls_connection_get_database :: proc(conn: ^DtlsConnection) -> ^TlsDatabase ---
		dtls_connection_get_interaction :: proc(conn: ^DtlsConnection) -> ^TlsInteraction ---
		dtls_connection_get_negotiated_protocol :: proc(conn: ^DtlsConnection) -> cstring ---
		dtls_connection_get_peer_certificate :: proc(conn: ^DtlsConnection) -> ^TlsCertificate ---
		dtls_connection_get_peer_certificate_errors :: proc(conn: ^DtlsConnection) -> TlsCertificateFlags ---
		dtls_connection_get_protocol_version :: proc(conn: ^DtlsConnection) -> TlsProtocolVersion ---
		dtls_connection_get_rehandshake_mode :: proc(conn: ^DtlsConnection) -> TlsRehandshakeMode ---
		dtls_connection_get_require_close_notify :: proc(conn: ^DtlsConnection) -> glib.boolean ---
		dtls_connection_get_type :: proc() -> gobj.Type ---
		dtls_connection_get_type :: proc() -> gobj.Type ---
		dtls_connection_handshake :: proc(conn: ^DtlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		dtls_connection_handshake_async :: proc(conn: ^DtlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dtls_connection_handshake_finish :: proc(conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		dtls_connection_set_advertised_protocols :: proc(conn: ^DtlsConnection, protocols: [^]cstring) ---
		dtls_connection_set_certificate :: proc(conn: ^DtlsConnection, certificate: ^TlsCertificate) ---
		dtls_connection_set_database :: proc(conn: ^DtlsConnection, database: ^TlsDatabase) ---
		dtls_connection_set_interaction :: proc(conn: ^DtlsConnection, interaction: ^TlsInteraction) ---
		dtls_connection_set_rehandshake_mode :: proc(conn: ^DtlsConnection, mode: TlsRehandshakeMode) ---
		dtls_connection_set_require_close_notify :: proc(conn: ^DtlsConnection, require_close_notify: glib.boolean) ---
		dtls_connection_shutdown :: proc(conn: ^DtlsConnection, shutdown_read: glib.boolean, shutdown_write: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		dtls_connection_shutdown_async :: proc(conn: ^DtlsConnection, shutdown_read: glib.boolean, shutdown_write: glib.boolean, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		dtls_connection_shutdown_finish :: proc(conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		dtls_server_connection_get_type :: proc() -> gobj.Type ---
		dtls_server_connection_get_type :: proc() -> gobj.Type ---
		dtls_server_connection_new :: proc(base_socket: ^DatagramBased, certificate: ^TlsCertificate, error: ^^glib.Error) -> ^DatagramBased ---
		emblem_get_icon :: proc(emblem: ^Emblem) -> ^Icon ---
		emblem_get_origin :: proc(emblem: ^Emblem) -> EmblemOrigin ---
		emblem_get_type :: proc() -> gobj.Type ---
		emblem_get_type :: proc() -> gobj.Type ---
		emblem_new :: proc(icon: ^Icon) -> ^Emblem ---
		emblem_new_with_origin :: proc(icon: ^Icon, origin: EmblemOrigin) -> ^Emblem ---
		emblem_origin_get_type :: proc() -> gobj.Type ---
		emblem_origin_get_type :: proc() -> gobj.Type ---
		emblemed_icon_add_emblem :: proc(emblemed: ^EmblemedIcon, emblem: ^Emblem) ---
		emblemed_icon_clear_emblems :: proc(emblemed: ^EmblemedIcon) ---
		emblemed_icon_get_emblems :: proc(emblemed: ^EmblemedIcon) -> ^glib.List ---
		emblemed_icon_get_icon :: proc(emblemed: ^EmblemedIcon) -> ^Icon ---
		emblemed_icon_get_type :: proc() -> gobj.Type ---
		emblemed_icon_get_type :: proc() -> gobj.Type ---
		emblemed_icon_new :: proc(icon: ^Icon, emblem: ^Emblem) -> ^Icon ---
		file_append_to :: proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream ---
		file_append_to_async :: proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_append_to_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileOutputStream ---
		file_attribute_info_flags_get_type :: proc() -> gobj.Type ---
		file_attribute_info_flags_get_type :: proc() -> gobj.Type ---
		file_attribute_info_list_add :: proc(list: ^FileAttributeInfoList, name: cstring, type: FileAttributeType, flags: FileAttributeInfoFlags) ---
		file_attribute_info_list_dup :: proc(list: ^FileAttributeInfoList) -> ^FileAttributeInfoList ---
		file_attribute_info_list_get_type :: proc() -> gobj.Type ---
		file_attribute_info_list_get_type :: proc() -> gobj.Type ---
		file_attribute_info_list_lookup :: proc(list: ^FileAttributeInfoList, name: cstring) -> ^FileAttributeInfo ---
		file_attribute_info_list_new :: proc() -> ^FileAttributeInfoList ---
		file_attribute_info_list_ref :: proc(list: ^FileAttributeInfoList) -> ^FileAttributeInfoList ---
		file_attribute_info_list_unref :: proc(list: ^FileAttributeInfoList) ---
		file_attribute_matcher_enumerate_namespace :: proc(matcher: ^FileAttributeMatcher, ns: cstring) -> glib.boolean ---
		file_attribute_matcher_enumerate_next :: proc(matcher: ^FileAttributeMatcher) -> cstring ---
		file_attribute_matcher_get_type :: proc() -> gobj.Type ---
		file_attribute_matcher_get_type :: proc() -> gobj.Type ---
		file_attribute_matcher_matches :: proc(matcher: ^FileAttributeMatcher, attribute: cstring) -> glib.boolean ---
		file_attribute_matcher_matches_only :: proc(matcher: ^FileAttributeMatcher, attribute: cstring) -> glib.boolean ---
		file_attribute_matcher_new :: proc(attributes: cstring) -> ^FileAttributeMatcher ---
		file_attribute_matcher_ref :: proc(matcher: ^FileAttributeMatcher) -> ^FileAttributeMatcher ---
		file_attribute_matcher_subtract :: proc(matcher: ^FileAttributeMatcher, subtract: ^FileAttributeMatcher) -> ^FileAttributeMatcher ---
		file_attribute_matcher_to_string :: proc(matcher: ^FileAttributeMatcher) -> cstring ---
		file_attribute_matcher_unref :: proc(matcher: ^FileAttributeMatcher) ---
		file_attribute_status_get_type :: proc() -> gobj.Type ---
		file_attribute_status_get_type :: proc() -> gobj.Type ---
		file_attribute_type_get_type :: proc() -> gobj.Type ---
		file_attribute_type_get_type :: proc() -> gobj.Type ---
		file_build_attribute_list_for_copy :: proc(file: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---
		file_copy :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, error: ^^glib.Error) -> glib.boolean ---
		file_copy_async :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_copy_attributes :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_copy_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_copy_flags_get_type :: proc() -> gobj.Type ---
		file_copy_flags_get_type :: proc() -> gobj.Type ---
		file_create :: proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream ---
		file_create_async :: proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_create_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileOutputStream ---
		file_create_flags_get_type :: proc() -> gobj.Type ---
		file_create_flags_get_type :: proc() -> gobj.Type ---
		file_create_readwrite :: proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream ---
		file_create_readwrite_async :: proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_create_readwrite_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileIOStream ---
		file_delete :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_delete_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_delete_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_dup :: proc(file: ^File) -> ^File ---
		file_eject_mountable :: proc(file: ^File, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_eject_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_eject_mountable_with_operation :: proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_eject_mountable_with_operation_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_enumerate_children :: proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileEnumerator ---
		file_enumerate_children_async :: proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_enumerate_children_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileEnumerator ---
		file_enumerator_close :: proc(enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_enumerator_close_async :: proc(enumerator: ^FileEnumerator, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_enumerator_close_finish :: proc(enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_enumerator_get_child :: proc(enumerator: ^FileEnumerator, info: ^FileInfo) -> ^File ---
		file_enumerator_get_container :: proc(enumerator: ^FileEnumerator) -> ^File ---
		file_enumerator_get_type :: proc() -> gobj.Type ---
		file_enumerator_get_type :: proc() -> gobj.Type ---
		file_enumerator_has_pending :: proc(enumerator: ^FileEnumerator) -> glib.boolean ---
		file_enumerator_is_closed :: proc(enumerator: ^FileEnumerator) -> glib.boolean ---
		file_enumerator_iterate :: proc(direnum: ^FileEnumerator, out_info: ^^FileInfo, out_child: ^^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_enumerator_next_file :: proc(enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---
		file_enumerator_next_files_async :: proc(enumerator: ^FileEnumerator, num_files: i32, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_enumerator_next_files_finish :: proc(enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		file_enumerator_set_pending :: proc(enumerator: ^FileEnumerator, pending: glib.boolean) ---
		file_equal :: proc(file1: ^File, file2: ^File) -> glib.boolean ---
		file_find_enclosing_mount :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Mount ---
		file_find_enclosing_mount_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_find_enclosing_mount_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^Mount ---
		file_get_basename :: proc(file: ^File) -> cstring ---
		file_get_child :: proc(file: ^File, name: cstring) -> ^File ---
		file_get_child_for_display_name :: proc(file: ^File, display_name: cstring, error: ^^glib.Error) -> ^File ---
		file_get_parent :: proc(file: ^File) -> ^File ---
		file_get_parse_name :: proc(file: ^File) -> cstring ---
		file_get_path :: proc(file: ^File) -> cstring ---
		file_get_relative_path :: proc(parent: ^File, descendant: ^File) -> cstring ---
		file_get_type :: proc() -> gobj.Type ---
		file_get_type :: proc() -> gobj.Type ---
		file_get_uri :: proc(file: ^File) -> cstring ---
		file_get_uri_scheme :: proc(file: ^File) -> cstring ---
		file_has_parent :: proc(file: ^File, parent: ^File) -> glib.boolean ---
		file_has_prefix :: proc(file: ^File, prefix: ^File) -> glib.boolean ---
		file_has_uri_scheme :: proc(file: ^File, uri_scheme: cstring) -> glib.boolean ---
		file_hash :: proc(file: glib.constpointer) -> glib.uint_ ---
		file_icon_get_file :: proc(icon: ^FileIcon) -> ^File ---
		file_icon_get_type :: proc() -> gobj.Type ---
		file_icon_get_type :: proc() -> gobj.Type ---
		file_icon_new :: proc(file: ^File) -> ^Icon ---
		file_info_clear_status :: proc(info: ^FileInfo) ---
		file_info_copy_into :: proc(src_info: ^FileInfo, dest_info: ^FileInfo) ---
		file_info_dup :: proc(other: ^FileInfo) -> ^FileInfo ---
		file_info_get_access_date_time :: proc(info: ^FileInfo) -> ^glib.DateTime ---
		file_info_get_attribute_as_string :: proc(info: ^FileInfo, attribute: cstring) -> cstring ---
		file_info_get_attribute_boolean :: proc(info: ^FileInfo, attribute: cstring) -> glib.boolean ---
		file_info_get_attribute_byte_string :: proc(info: ^FileInfo, attribute: cstring) -> cstring ---
		file_info_get_attribute_data :: proc(info: ^FileInfo, attribute: cstring, type: ^FileAttributeType, value_pp: ^glib.pointer, status: ^FileAttributeStatus) -> glib.boolean ---
		file_info_get_attribute_file_path :: proc(info: ^FileInfo, attribute: cstring) -> cstring ---
		file_info_get_attribute_int32 :: proc(info: ^FileInfo, attribute: cstring) -> glib.int32 ---
		file_info_get_attribute_int64 :: proc(info: ^FileInfo, attribute: cstring) -> glib.int64 ---
		file_info_get_attribute_object :: proc(info: ^FileInfo, attribute: cstring) -> ^gobj.Object ---
		file_info_get_attribute_status :: proc(info: ^FileInfo, attribute: cstring) -> FileAttributeStatus ---
		file_info_get_attribute_string :: proc(info: ^FileInfo, attribute: cstring) -> cstring ---
		file_info_get_attribute_stringv :: proc(info: ^FileInfo, attribute: cstring) -> ^cstring ---
		file_info_get_attribute_type :: proc(info: ^FileInfo, attribute: cstring) -> FileAttributeType ---
		file_info_get_attribute_uint32 :: proc(info: ^FileInfo, attribute: cstring) -> glib.uint32 ---
		file_info_get_attribute_uint64 :: proc(info: ^FileInfo, attribute: cstring) -> glib.uint64 ---
		file_info_get_content_type :: proc(info: ^FileInfo) -> cstring ---
		file_info_get_creation_date_time :: proc(info: ^FileInfo) -> ^glib.DateTime ---
		file_info_get_deletion_date :: proc(info: ^FileInfo) -> ^glib.DateTime ---
		file_info_get_display_name :: proc(info: ^FileInfo) -> cstring ---
		file_info_get_edit_name :: proc(info: ^FileInfo) -> cstring ---
		file_info_get_etag :: proc(info: ^FileInfo) -> cstring ---
		file_info_get_file_type :: proc(info: ^FileInfo) -> FileType ---
		file_info_get_icon :: proc(info: ^FileInfo) -> ^Icon ---
		file_info_get_is_backup :: proc(info: ^FileInfo) -> glib.boolean ---
		file_info_get_is_hidden :: proc(info: ^FileInfo) -> glib.boolean ---
		file_info_get_is_symlink :: proc(info: ^FileInfo) -> glib.boolean ---
		file_info_get_modification_date_time :: proc(info: ^FileInfo) -> ^glib.DateTime ---
		file_info_get_modification_time :: proc(info: ^FileInfo, result: ^glib.TimeVal) ---
		file_info_get_name :: proc(info: ^FileInfo) -> cstring ---
		file_info_get_size :: proc(info: ^FileInfo) -> glib.offset ---
		file_info_get_sort_order :: proc(info: ^FileInfo) -> glib.int32 ---
		file_info_get_symbolic_icon :: proc(info: ^FileInfo) -> ^Icon ---
		file_info_get_symlink_target :: proc(info: ^FileInfo) -> cstring ---
		file_info_get_type :: proc() -> gobj.Type ---
		file_info_get_type :: proc() -> gobj.Type ---
		file_info_has_attribute :: proc(info: ^FileInfo, attribute: cstring) -> glib.boolean ---
		file_info_has_namespace :: proc(info: ^FileInfo, name_space: cstring) -> glib.boolean ---
		file_info_list_attributes :: proc(info: ^FileInfo, name_space: cstring) -> ^cstring ---
		file_info_new :: proc() -> ^FileInfo ---
		file_info_remove_attribute :: proc(info: ^FileInfo, attribute: cstring) ---
		file_info_set_access_date_time :: proc(info: ^FileInfo, atime: ^glib.DateTime) ---
		file_info_set_attribute :: proc(info: ^FileInfo, attribute: cstring, type: FileAttributeType, value_p: glib.pointer) ---
		file_info_set_attribute_boolean :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.boolean) ---
		file_info_set_attribute_byte_string :: proc(info: ^FileInfo, attribute: cstring, attr_value: cstring) ---
		file_info_set_attribute_file_path :: proc(info: ^FileInfo, attribute: cstring, attr_value: cstring) ---
		file_info_set_attribute_int32 :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.int32) ---
		file_info_set_attribute_int64 :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.int64) ---
		file_info_set_attribute_mask :: proc(info: ^FileInfo, mask: ^FileAttributeMatcher) ---
		file_info_set_attribute_object :: proc(info: ^FileInfo, attribute: cstring, attr_value: ^gobj.Object) ---
		file_info_set_attribute_status :: proc(info: ^FileInfo, attribute: cstring, status: FileAttributeStatus) -> glib.boolean ---
		file_info_set_attribute_string :: proc(info: ^FileInfo, attribute: cstring, attr_value: cstring) ---
		file_info_set_attribute_stringv :: proc(info: ^FileInfo, attribute: cstring, attr_value: ^cstring) ---
		file_info_set_attribute_uint32 :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.uint32) ---
		file_info_set_attribute_uint64 :: proc(info: ^FileInfo, attribute: cstring, attr_value: glib.uint64) ---
		file_info_set_content_type :: proc(info: ^FileInfo, content_type: cstring) ---
		file_info_set_creation_date_time :: proc(info: ^FileInfo, creation_time: ^glib.DateTime) ---
		file_info_set_display_name :: proc(info: ^FileInfo, display_name: cstring) ---
		file_info_set_edit_name :: proc(info: ^FileInfo, edit_name: cstring) ---
		file_info_set_file_type :: proc(info: ^FileInfo, type: FileType) ---
		file_info_set_icon :: proc(info: ^FileInfo, icon: ^Icon) ---
		file_info_set_is_hidden :: proc(info: ^FileInfo, is_hidden: glib.boolean) ---
		file_info_set_is_symlink :: proc(info: ^FileInfo, is_symlink: glib.boolean) ---
		file_info_set_modification_date_time :: proc(info: ^FileInfo, mtime: ^glib.DateTime) ---
		file_info_set_modification_time :: proc(info: ^FileInfo, mtime: ^glib.TimeVal) ---
		file_info_set_name :: proc(info: ^FileInfo, name: cstring) ---
		file_info_set_size :: proc(info: ^FileInfo, size_p: glib.offset) ---
		file_info_set_sort_order :: proc(info: ^FileInfo, sort_order: glib.int32) ---
		file_info_set_symbolic_icon :: proc(info: ^FileInfo, icon: ^Icon) ---
		file_info_set_symlink_target :: proc(info: ^FileInfo, symlink_target: cstring) ---
		file_info_unset_attribute_mask :: proc(info: ^FileInfo) ---
		file_input_stream_get_type :: proc() -> gobj.Type ---
		file_input_stream_get_type :: proc() -> gobj.Type ---
		file_input_stream_query_info :: proc(stream: ^FileInputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---
		file_input_stream_query_info_async :: proc(stream: ^FileInputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_input_stream_query_info_finish :: proc(stream: ^FileInputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo ---
		file_io_stream_get_etag :: proc(stream: ^FileIOStream) -> cstring ---
		file_io_stream_get_type :: proc() -> gobj.Type ---
		file_io_stream_get_type :: proc() -> gobj.Type ---
		file_io_stream_query_info :: proc(stream: ^FileIOStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---
		file_io_stream_query_info_async :: proc(stream: ^FileIOStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_io_stream_query_info_finish :: proc(stream: ^FileIOStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo ---
		file_is_native :: proc(file: ^File) -> glib.boolean ---
		file_load_bytes :: proc(file: ^File, cancellable: ^Cancellable, etag_out: ^cstring, error: ^^glib.Error) -> ^glib.Bytes ---
		file_load_bytes_async :: proc(file: ^File, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_load_bytes_finish :: proc(file: ^File, result: ^AsyncResult, etag_out: ^cstring, error: ^^glib.Error) -> ^glib.Bytes ---
		file_load_contents :: proc(file: ^File, cancellable: ^Cancellable, contents: ^cstring, length: ^glib.size, etag_out: ^cstring, error: ^^glib.Error) -> glib.boolean ---
		file_load_contents_async :: proc(file: ^File, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_load_contents_finish :: proc(file: ^File, res: ^AsyncResult, contents: ^cstring, length: ^glib.size, etag_out: ^cstring, error: ^^glib.Error) -> glib.boolean ---
		file_load_partial_contents_async :: proc(file: ^File, cancellable: ^Cancellable, read_more_callback: FileReadMoreCallback, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_load_partial_contents_finish :: proc(file: ^File, res: ^AsyncResult, contents: ^cstring, length: ^glib.size, etag_out: ^cstring, error: ^^glib.Error) -> glib.boolean ---
		file_make_directory :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_make_directory_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_make_directory_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_make_directory_with_parents :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_make_symbolic_link :: proc(file: ^File, symlink_value: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_make_symbolic_link_async :: proc(file: ^File, symlink_value: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_make_symbolic_link_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_measure_disk_usage :: proc(file: ^File, flags: FileMeasureFlags, cancellable: ^Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: glib.pointer, disk_usage: ^glib.uint64, num_dirs: ^glib.uint64, num_files: ^glib.uint64, error: ^^glib.Error) -> glib.boolean ---
		file_measure_disk_usage_async :: proc(file: ^File, flags: FileMeasureFlags, io_priority: glib.int_, cancellable: ^Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_measure_disk_usage_finish :: proc(file: ^File, result: ^AsyncResult, disk_usage: ^glib.uint64, num_dirs: ^glib.uint64, num_files: ^glib.uint64, error: ^^glib.Error) -> glib.boolean ---
		file_measure_flags_get_type :: proc() -> gobj.Type ---
		file_measure_flags_get_type :: proc() -> gobj.Type ---
		file_monitor :: proc(file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor ---
		file_monitor_cancel :: proc(monitor: ^FileMonitor) -> glib.boolean ---
		file_monitor_directory :: proc(file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor ---
		file_monitor_emit_event :: proc(monitor: ^FileMonitor, child: ^File, other_file: ^File, event_type: FileMonitorEvent) ---
		file_monitor_event_get_type :: proc() -> gobj.Type ---
		file_monitor_event_get_type :: proc() -> gobj.Type ---
		file_monitor_file :: proc(file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor ---
		file_monitor_flags_get_type :: proc() -> gobj.Type ---
		file_monitor_flags_get_type :: proc() -> gobj.Type ---
		file_monitor_get_type :: proc() -> gobj.Type ---
		file_monitor_get_type :: proc() -> gobj.Type ---
		file_monitor_is_cancelled :: proc(monitor: ^FileMonitor) -> glib.boolean ---
		file_monitor_set_rate_limit :: proc(monitor: ^FileMonitor, limit_msecs: glib.int_) ---
		file_mount_enclosing_volume :: proc(location: ^File, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_mount_enclosing_volume_finish :: proc(location: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_mount_mountable :: proc(file: ^File, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_mount_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> ^File ---
		file_move :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, error: ^^glib.Error) -> glib.boolean ---
		file_move_async :: proc(source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_move_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_new_build_filename :: proc(first_element: cstring, #c_vararg var_args: ..any) -> ^File ---
		file_new_build_filenamev :: proc(args: [^]cstring) -> ^File ---
		file_new_for_commandline_arg :: proc(arg: cstring) -> ^File ---
		file_new_for_commandline_arg_and_cwd :: proc(arg: cstring, cwd: cstring) -> ^File ---
		file_new_for_path :: proc(path: cstring) -> ^File ---
		file_new_for_uri :: proc(uri: cstring) -> ^File ---
		file_new_tmp :: proc(tmpl: cstring, iostream: ^^FileIOStream, error: ^^glib.Error) -> ^File ---
		file_new_tmp_async :: proc(tmpl: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_new_tmp_dir_async :: proc(tmpl: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_new_tmp_dir_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> ^File ---
		file_new_tmp_finish :: proc(result: ^AsyncResult, iostream: ^^FileIOStream, error: ^^glib.Error) -> ^File ---
		file_open_readwrite :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream ---
		file_open_readwrite_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_open_readwrite_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileIOStream ---
		file_output_stream_get_etag :: proc(stream: ^FileOutputStream) -> cstring ---
		file_output_stream_get_type :: proc() -> gobj.Type ---
		file_output_stream_get_type :: proc() -> gobj.Type ---
		file_output_stream_query_info :: proc(stream: ^FileOutputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---
		file_output_stream_query_info_async :: proc(stream: ^FileOutputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_output_stream_query_info_finish :: proc(stream: ^FileOutputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo ---
		file_parse_name :: proc(parse_name: cstring) -> ^File ---
		file_peek_path :: proc(file: ^File) -> cstring ---
		file_poll_mountable :: proc(file: ^File, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_poll_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_query_default_handler :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^AppInfo ---
		file_query_default_handler_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_query_default_handler_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> ^AppInfo ---
		file_query_exists :: proc(file: ^File, cancellable: ^Cancellable) -> glib.boolean ---
		file_query_file_type :: proc(file: ^File, flags: FileQueryInfoFlags, cancellable: ^Cancellable) -> FileType ---
		file_query_filesystem_info :: proc(file: ^File, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---
		file_query_filesystem_info_async :: proc(file: ^File, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_query_filesystem_info_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo ---
		file_query_info :: proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo ---
		file_query_info_async :: proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_query_info_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo ---
		file_query_info_flags_get_type :: proc() -> gobj.Type ---
		file_query_info_flags_get_type :: proc() -> gobj.Type ---
		file_query_settable_attributes :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileAttributeInfoList ---
		file_query_writable_namespaces :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileAttributeInfoList ---
		file_read :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInputStream ---
		file_read_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_read_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileInputStream ---
		file_replace :: proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream ---
		file_replace_async :: proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_replace_contents :: proc(file: ^File, contents: cstring, length: glib.size, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, new_etag: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_replace_contents_async :: proc(file: ^File, contents: cstring, length: glib.size, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_replace_contents_bytes_async :: proc(file: ^File, contents: ^glib.Bytes, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_replace_contents_finish :: proc(file: ^File, res: ^AsyncResult, new_etag: ^cstring, error: ^^glib.Error) -> glib.boolean ---
		file_replace_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileOutputStream ---
		file_replace_readwrite :: proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream ---
		file_replace_readwrite_async :: proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_replace_readwrite_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileIOStream ---
		file_resolve_relative_path :: proc(file: ^File, relative_path: cstring) -> ^File ---
		file_set_attribute :: proc(file: ^File, attribute: cstring, type: FileAttributeType, value_p: glib.pointer, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_set_attribute_byte_string :: proc(file: ^File, attribute: cstring, value: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_set_attribute_int32 :: proc(file: ^File, attribute: cstring, value: glib.int32, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_set_attribute_int64 :: proc(file: ^File, attribute: cstring, value: glib.int64, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_set_attribute_string :: proc(file: ^File, attribute: cstring, value: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_set_attribute_uint32 :: proc(file: ^File, attribute: cstring, value: glib.uint32, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_set_attribute_uint64 :: proc(file: ^File, attribute: cstring, value: glib.uint64, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_set_attributes_async :: proc(file: ^File, info: ^FileInfo, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_set_attributes_finish :: proc(file: ^File, result: ^AsyncResult, info: ^^FileInfo, error: ^^glib.Error) -> glib.boolean ---
		file_set_attributes_from_info :: proc(file: ^File, info: ^FileInfo, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_set_display_name :: proc(file: ^File, display_name: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^File ---
		file_set_display_name_async :: proc(file: ^File, display_name: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_set_display_name_finish :: proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^File ---
		file_start_mountable :: proc(file: ^File, flags: DriveStartFlags, start_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_start_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_stop_mountable :: proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_stop_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_supports_thread_contexts :: proc(file: ^File) -> glib.boolean ---
		file_trash :: proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		file_trash_async :: proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_trash_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_type_get_type :: proc() -> gobj.Type ---
		file_type_get_type :: proc() -> gobj.Type ---
		file_unmount_mountable :: proc(file: ^File, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_unmount_mountable_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		file_unmount_mountable_with_operation :: proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		file_unmount_mountable_with_operation_finish :: proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		filename_completer_get_completion_suffix :: proc(completer: ^FilenameCompleter, initial_text: cstring) -> cstring ---
		filename_completer_get_completions :: proc(completer: ^FilenameCompleter, initial_text: cstring) -> ^cstring ---
		filename_completer_get_type :: proc() -> gobj.Type ---
		filename_completer_get_type :: proc() -> gobj.Type ---
		filename_completer_new :: proc() -> ^FilenameCompleter ---
		filename_completer_set_dirs_only :: proc(completer: ^FilenameCompleter, dirs_only: glib.boolean) ---
		filesystem_preview_type_get_type :: proc() -> gobj.Type ---
		filesystem_preview_type_get_type :: proc() -> gobj.Type ---
		filter_input_stream_get_base_stream :: proc(stream: ^FilterInputStream) -> ^InputStream ---
		filter_input_stream_get_close_base_stream :: proc(stream: ^FilterInputStream) -> glib.boolean ---
		filter_input_stream_get_type :: proc() -> gobj.Type ---
		filter_input_stream_get_type :: proc() -> gobj.Type ---
		filter_input_stream_set_close_base_stream :: proc(stream: ^FilterInputStream, close_base: glib.boolean) ---
		filter_output_stream_get_base_stream :: proc(stream: ^FilterOutputStream) -> ^OutputStream ---
		filter_output_stream_get_close_base_stream :: proc(stream: ^FilterOutputStream) -> glib.boolean ---
		filter_output_stream_get_type :: proc() -> gobj.Type ---
		filter_output_stream_get_type :: proc() -> gobj.Type ---
		filter_output_stream_set_close_base_stream :: proc(stream: ^FilterOutputStream, close_base: glib.boolean) ---
		g_application_run :: proc(application: ^Application, argc: i32, argv: ^cstring) -> i32 ---
		icon_deserialize :: proc(value: ^glib.Variant) -> ^Icon ---
		icon_equal :: proc(icon1: ^Icon, icon2: ^Icon) -> glib.boolean ---
		icon_get_type :: proc() -> gobj.Type ---
		icon_get_type :: proc() -> gobj.Type ---
		icon_hash :: proc(icon: glib.constpointer) -> glib.uint_ ---
		icon_new_for_string :: proc(str: cstring, error: ^^glib.Error) -> ^Icon ---
		icon_serialize :: proc(icon: ^Icon) -> ^glib.Variant ---
		icon_to_string :: proc(icon: ^Icon) -> cstring ---
		inet_address_equal :: proc(address: ^InetAddress, other_address: ^InetAddress) -> glib.boolean ---
		inet_address_get_family :: proc(address: ^InetAddress) -> SocketFamily ---
		inet_address_get_is_any :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_link_local :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_loopback :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_mc_global :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_mc_link_local :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_mc_node_local :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_mc_org_local :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_mc_site_local :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_multicast :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_is_site_local :: proc(address: ^InetAddress) -> glib.boolean ---
		inet_address_get_native_size :: proc(address: ^InetAddress) -> glib.size ---
		inet_address_get_type :: proc() -> gobj.Type ---
		inet_address_get_type :: proc() -> gobj.Type ---
		inet_address_mask_equal :: proc(mask: ^InetAddressMask, mask2: ^InetAddressMask) -> glib.boolean ---
		inet_address_mask_get_address :: proc(mask: ^InetAddressMask) -> ^InetAddress ---
		inet_address_mask_get_family :: proc(mask: ^InetAddressMask) -> SocketFamily ---
		inet_address_mask_get_length :: proc(mask: ^InetAddressMask) -> glib.uint_ ---
		inet_address_mask_get_type :: proc() -> gobj.Type ---
		inet_address_mask_get_type :: proc() -> gobj.Type ---
		inet_address_mask_matches :: proc(mask: ^InetAddressMask, address: ^InetAddress) -> glib.boolean ---
		inet_address_mask_new :: proc(addr: ^InetAddress, length: glib.uint_, error: ^^glib.Error) -> ^InetAddressMask ---
		inet_address_mask_new_from_string :: proc(mask_string: cstring, error: ^^glib.Error) -> ^InetAddressMask ---
		inet_address_mask_to_string :: proc(mask: ^InetAddressMask) -> cstring ---
		inet_address_new_any :: proc(family: SocketFamily) -> ^InetAddress ---
		inet_address_new_from_bytes :: proc(bytes: [^]glib.uint8, family: SocketFamily) -> ^InetAddress ---
		inet_address_new_from_string :: proc(string_p: cstring) -> ^InetAddress ---
		inet_address_new_loopback :: proc(family: SocketFamily) -> ^InetAddress ---
		inet_address_to_bytes :: proc(address: ^InetAddress) -> ^glib.uint8 ---
		inet_address_to_string :: proc(address: ^InetAddress) -> cstring ---
		inet_socket_address_get_address :: proc(address: ^InetSocketAddress) -> ^InetAddress ---
		inet_socket_address_get_flowinfo :: proc(address: ^InetSocketAddress) -> glib.uint32 ---
		inet_socket_address_get_port :: proc(address: ^InetSocketAddress) -> glib.uint16 ---
		inet_socket_address_get_scope_id :: proc(address: ^InetSocketAddress) -> glib.uint32 ---
		inet_socket_address_get_type :: proc() -> gobj.Type ---
		inet_socket_address_get_type :: proc() -> gobj.Type ---
		inet_socket_address_new :: proc(address: ^InetAddress, port: glib.uint16) -> ^SocketAddress ---
		inet_socket_address_new_from_string :: proc(address: cstring, port: glib.uint_) -> ^SocketAddress ---
		initable_get_type :: proc() -> gobj.Type ---
		initable_get_type :: proc() -> gobj.Type ---
		initable_init :: proc(initable: ^Initable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		initable_new :: proc(object_type: gobj.Type, cancellable: ^Cancellable, error: ^^glib.Error, first_property_name: cstring, #c_vararg var_args: ..any) -> glib.pointer ---
		initable_new_valist :: proc(object_type: gobj.Type, first_property_name: cstring, var_args: libc.va_list, cancellable: ^Cancellable, error: ^^glib.Error) -> ^gobj.Object ---
		initable_newv :: proc(object_type: gobj.Type, n_parameters: glib.uint_, parameters: [^]gobj.Parameter, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.pointer ---
		input_stream_clear_pending :: proc(stream: ^InputStream) ---
		input_stream_close :: proc(stream: ^InputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		input_stream_close_async :: proc(stream: ^InputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		input_stream_close_finish :: proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		input_stream_get_type :: proc() -> gobj.Type ---
		input_stream_get_type :: proc() -> gobj.Type ---
		input_stream_has_pending :: proc(stream: ^InputStream) -> glib.boolean ---
		input_stream_is_closed :: proc(stream: ^InputStream) -> glib.boolean ---
		input_stream_read :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		input_stream_read_all :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, bytes_read: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		input_stream_read_all_async :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		input_stream_read_all_finish :: proc(stream: ^InputStream, result: ^AsyncResult, bytes_read: ^glib.size, error: ^^glib.Error) -> glib.boolean ---
		input_stream_read_async :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		input_stream_read_bytes :: proc(stream: ^InputStream, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Bytes ---
		input_stream_read_bytes_async :: proc(stream: ^InputStream, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		input_stream_read_bytes_finish :: proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.Bytes ---
		input_stream_read_finish :: proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---
		input_stream_set_pending :: proc(stream: ^InputStream, error: ^^glib.Error) -> glib.boolean ---
		input_stream_skip :: proc(stream: ^InputStream, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		input_stream_skip_async :: proc(stream: ^InputStream, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		input_stream_skip_finish :: proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---
		io_error_enum_get_type :: proc() -> gobj.Type ---
		io_error_enum_get_type :: proc() -> gobj.Type ---
		io_error_from_errno :: proc(err_no: glib.int_) -> IOErrorEnum ---
		io_error_from_file_error :: proc(file_error: glib.FileError) -> IOErrorEnum ---
		io_error_quark :: proc() -> glib.Quark ---
		io_error_quark :: proc() -> glib.Quark ---
		io_extension_get_name :: proc(extension: ^IOExtension) -> cstring ---
		io_extension_get_priority :: proc(extension: ^IOExtension) -> glib.int_ ---
		io_extension_get_type :: proc(extension: ^IOExtension) -> gobj.Type ---
		io_extension_point_get_extension_by_name :: proc(extension_point: ^IOExtensionPoint, name: cstring) -> ^IOExtension ---
		io_extension_point_get_extensions :: proc(extension_point: ^IOExtensionPoint) -> ^glib.List ---
		io_extension_point_get_required_type :: proc(extension_point: ^IOExtensionPoint) -> gobj.Type ---
		io_extension_point_implement :: proc(extension_point_name: cstring, type: gobj.Type, extension_name: cstring, priority: glib.int_) -> ^IOExtension ---
		io_extension_point_lookup :: proc(name: cstring) -> ^IOExtensionPoint ---
		io_extension_point_register :: proc(name: cstring) -> ^IOExtensionPoint ---
		io_extension_point_set_required_type :: proc(extension_point: ^IOExtensionPoint, type: gobj.Type) ---
		io_extension_ref_class :: proc(extension: ^IOExtension) -> ^gobj.TypeClass ---
		io_module_get_type :: proc() -> gobj.Type ---
		io_module_get_type :: proc() -> gobj.Type ---
		io_module_load :: proc(module: ^IOModule) ---
		io_module_new :: proc(filename: cstring) -> ^IOModule ---
		io_module_query :: proc() -> ^cstring ---
		io_module_scope_block :: proc(scope: ^IOModuleScope, basename: cstring) ---
		io_module_scope_flags_get_type :: proc() -> gobj.Type ---
		io_module_scope_flags_get_type :: proc() -> gobj.Type ---
		io_module_scope_free :: proc(scope: ^IOModuleScope) ---
		io_module_scope_new :: proc(flags: IOModuleScopeFlags) -> ^IOModuleScope ---
		io_module_unload :: proc(module: ^IOModule) ---
		io_modules_load_all_in_directory :: proc(dirname: cstring) -> ^glib.List ---
		io_modules_load_all_in_directory_with_scope :: proc(dirname: cstring, scope: ^IOModuleScope) -> ^glib.List ---
		io_modules_scan_all_in_directory :: proc(dirname: cstring) ---
		io_modules_scan_all_in_directory_with_scope :: proc(dirname: cstring, scope: ^IOModuleScope) ---
		io_scheduler_cancel_all_jobs :: proc() ---
		io_scheduler_job_send_to_mainloop :: proc(job: ^IOSchedulerJob, func: glib.SourceFunc, user_data: glib.pointer, notify: glib.DestroyNotify) -> glib.boolean ---
		io_scheduler_job_send_to_mainloop_async :: proc(job: ^IOSchedulerJob, func: glib.SourceFunc, user_data: glib.pointer, notify: glib.DestroyNotify) ---
		io_scheduler_push_job :: proc(job_func: IOSchedulerJobFunc, user_data: glib.pointer, notify: glib.DestroyNotify, io_priority: glib.int_, cancellable: ^Cancellable) ---
		io_stream_clear_pending :: proc(stream: ^IOStream) ---
		io_stream_close :: proc(stream: ^IOStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		io_stream_close_async :: proc(stream: ^IOStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		io_stream_close_finish :: proc(stream: ^IOStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		io_stream_get_input_stream :: proc(stream: ^IOStream) -> ^InputStream ---
		io_stream_get_output_stream :: proc(stream: ^IOStream) -> ^OutputStream ---
		io_stream_get_type :: proc() -> gobj.Type ---
		io_stream_get_type :: proc() -> gobj.Type ---
		io_stream_has_pending :: proc(stream: ^IOStream) -> glib.boolean ---
		io_stream_is_closed :: proc(stream: ^IOStream) -> glib.boolean ---
		io_stream_set_pending :: proc(stream: ^IOStream, error: ^^glib.Error) -> glib.boolean ---
		io_stream_splice_async :: proc(stream1: ^IOStream, stream2: ^IOStream, flags: IOStreamSpliceFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		io_stream_splice_finish :: proc(result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		io_stream_splice_flags_get_type :: proc() -> gobj.Type ---
		io_stream_splice_flags_get_type :: proc() -> gobj.Type ---
		list_model_get_item :: proc(list: ^ListModel, position: glib.uint_) -> glib.pointer ---
		list_model_get_item_type :: proc(list: ^ListModel) -> gobj.Type ---
		list_model_get_n_items :: proc(list: ^ListModel) -> glib.uint_ ---
		list_model_get_object :: proc(list: ^ListModel, position: glib.uint_) -> ^gobj.Object ---
		list_model_get_type :: proc() -> gobj.Type ---
		list_model_get_type :: proc() -> gobj.Type ---
		list_model_items_changed :: proc(list: ^ListModel, position: glib.uint_, removed: glib.uint_, added: glib.uint_) ---
		list_store_append :: proc(store: ^ListStore, item: glib.pointer) ---
		list_store_find :: proc(store: ^ListStore, item: glib.pointer, position: ^glib.uint_) -> glib.boolean ---
		list_store_find_with_equal_func :: proc(store: ^ListStore, item: glib.pointer, equal_func: glib.EqualFunc, position: ^glib.uint_) -> glib.boolean ---
		list_store_find_with_equal_func_full :: proc(store: ^ListStore, item: glib.pointer, equal_func: glib.EqualFuncFull, user_data: glib.pointer, position: ^glib.uint_) -> glib.boolean ---
		list_store_get_type :: proc() -> gobj.Type ---
		list_store_get_type :: proc() -> gobj.Type ---
		list_store_insert :: proc(store: ^ListStore, position: glib.uint_, item: glib.pointer) ---
		list_store_insert_sorted :: proc(store: ^ListStore, item: glib.pointer, compare_func: glib.CompareDataFunc, user_data: glib.pointer) -> glib.uint_ ---
		list_store_new :: proc(item_type: gobj.Type) -> ^ListStore ---
		list_store_remove :: proc(store: ^ListStore, position: glib.uint_) ---
		list_store_remove_all :: proc(store: ^ListStore) ---
		list_store_sort :: proc(store: ^ListStore, compare_func: glib.CompareDataFunc, user_data: glib.pointer) ---
		list_store_splice :: proc(store: ^ListStore, position: glib.uint_, n_removals: glib.uint_, additions: [^]glib.pointer, n_additions: glib.uint_) ---
		loadable_icon_get_type :: proc() -> gobj.Type ---
		loadable_icon_get_type :: proc() -> gobj.Type ---
		loadable_icon_load :: proc(icon: ^LoadableIcon, size_p: i32, type: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^InputStream ---
		loadable_icon_load_async :: proc(icon: ^LoadableIcon, size_p: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		loadable_icon_load_finish :: proc(icon: ^LoadableIcon, res: ^AsyncResult, type: ^cstring, error: ^^glib.Error) -> ^InputStream ---
		memory_input_stream_add_bytes :: proc(stream: ^MemoryInputStream, bytes: ^glib.Bytes) ---
		memory_input_stream_add_data :: proc(stream: ^MemoryInputStream, data: rawptr, len: glib.ssize, destroy: glib.DestroyNotify) ---
		memory_input_stream_get_type :: proc() -> gobj.Type ---
		memory_input_stream_get_type :: proc() -> gobj.Type ---
		memory_input_stream_new :: proc() -> ^InputStream ---
		memory_input_stream_new_from_bytes :: proc(bytes: ^glib.Bytes) -> ^InputStream ---
		memory_input_stream_new_from_data :: proc(data: rawptr, len: glib.ssize, destroy: glib.DestroyNotify) -> ^InputStream ---
		memory_monitor_dup_default :: proc() -> ^MemoryMonitor ---
		memory_monitor_get_type :: proc() -> gobj.Type ---
		memory_monitor_get_type :: proc() -> gobj.Type ---
		memory_monitor_warning_level_get_type :: proc() -> gobj.Type ---
		memory_monitor_warning_level_get_type :: proc() -> gobj.Type ---
		memory_output_stream_get_data :: proc(ostream: ^MemoryOutputStream) -> glib.pointer ---
		memory_output_stream_get_data_size :: proc(ostream: ^MemoryOutputStream) -> glib.size ---
		memory_output_stream_get_size :: proc(ostream: ^MemoryOutputStream) -> glib.size ---
		memory_output_stream_get_type :: proc() -> gobj.Type ---
		memory_output_stream_get_type :: proc() -> gobj.Type ---
		memory_output_stream_new :: proc(data: glib.pointer, size_p: glib.size, realloc_function: ReallocFunc, destroy_function: glib.DestroyNotify) -> ^OutputStream ---
		memory_output_stream_new_resizable :: proc() -> ^OutputStream ---
		memory_output_stream_steal_as_bytes :: proc(ostream: ^MemoryOutputStream) -> ^glib.Bytes ---
		memory_output_stream_steal_data :: proc(ostream: ^MemoryOutputStream) -> glib.pointer ---
		menu_append :: proc(menu: ^Menu, label: cstring, detailed_action: cstring) ---
		menu_append_item :: proc(menu: ^Menu, item: ^MenuItem) ---
		menu_append_section :: proc(menu: ^Menu, label: cstring, section: ^MenuModel) ---
		menu_append_submenu :: proc(menu: ^Menu, label: cstring, submenu: ^MenuModel) ---
		menu_attribute_iter_get_name :: proc(iter: ^MenuAttributeIter) -> cstring ---
		menu_attribute_iter_get_next :: proc(iter: ^MenuAttributeIter, out_name: ^cstring, value: ^^glib.Variant) -> glib.boolean ---
		menu_attribute_iter_get_type :: proc() -> gobj.Type ---
		menu_attribute_iter_get_type :: proc() -> gobj.Type ---
		menu_attribute_iter_get_value :: proc(iter: ^MenuAttributeIter) -> ^glib.Variant ---
		menu_attribute_iter_next :: proc(iter: ^MenuAttributeIter) -> glib.boolean ---
		menu_freeze :: proc(menu: ^Menu) ---
		menu_get_type :: proc() -> gobj.Type ---
		menu_get_type :: proc() -> gobj.Type ---
		menu_insert :: proc(menu: ^Menu, position: glib.int_, label: cstring, detailed_action: cstring) ---
		menu_insert_item :: proc(menu: ^Menu, position: glib.int_, item: ^MenuItem) ---
		menu_insert_section :: proc(menu: ^Menu, position: glib.int_, label: cstring, section: ^MenuModel) ---
		menu_insert_submenu :: proc(menu: ^Menu, position: glib.int_, label: cstring, submenu: ^MenuModel) ---
		menu_item_get_attribute :: proc(menu_item: ^MenuItem, attribute: cstring, format_string: cstring, #c_vararg var_args: ..any) -> glib.boolean ---
		menu_item_get_attribute_value :: proc(menu_item: ^MenuItem, attribute: cstring, expected_type: ^glib.VariantType) -> ^glib.Variant ---
		menu_item_get_link :: proc(menu_item: ^MenuItem, link: cstring) -> ^MenuModel ---
		menu_item_get_type :: proc() -> gobj.Type ---
		menu_item_get_type :: proc() -> gobj.Type ---
		menu_item_new :: proc(label: cstring, detailed_action: cstring) -> ^MenuItem ---
		menu_item_new_from_model :: proc(model: ^MenuModel, item_index: glib.int_) -> ^MenuItem ---
		menu_item_new_section :: proc(label: cstring, section: ^MenuModel) -> ^MenuItem ---
		menu_item_new_submenu :: proc(label: cstring, submenu: ^MenuModel) -> ^MenuItem ---
		menu_item_set_action_and_target :: proc(menu_item: ^MenuItem, action: cstring, format_string: cstring, #c_vararg var_args: ..any) ---
		menu_item_set_action_and_target_value :: proc(menu_item: ^MenuItem, action: cstring, target_value: ^glib.Variant) ---
		menu_item_set_attribute :: proc(menu_item: ^MenuItem, attribute: cstring, format_string: cstring, #c_vararg var_args: ..any) ---
		menu_item_set_attribute_value :: proc(menu_item: ^MenuItem, attribute: cstring, value: ^glib.Variant) ---
		menu_item_set_detailed_action :: proc(menu_item: ^MenuItem, detailed_action: cstring) ---
		menu_item_set_icon :: proc(menu_item: ^MenuItem, icon: ^Icon) ---
		menu_item_set_label :: proc(menu_item: ^MenuItem, label: cstring) ---
		menu_item_set_link :: proc(menu_item: ^MenuItem, link: cstring, model: ^MenuModel) ---
		menu_item_set_section :: proc(menu_item: ^MenuItem, section: ^MenuModel) ---
		menu_item_set_submenu :: proc(menu_item: ^MenuItem, submenu: ^MenuModel) ---
		menu_link_iter_get_name :: proc(iter: ^MenuLinkIter) -> cstring ---
		menu_link_iter_get_next :: proc(iter: ^MenuLinkIter, out_link: ^cstring, value: ^^MenuModel) -> glib.boolean ---
		menu_link_iter_get_type :: proc() -> gobj.Type ---
		menu_link_iter_get_type :: proc() -> gobj.Type ---
		menu_link_iter_get_value :: proc(iter: ^MenuLinkIter) -> ^MenuModel ---
		menu_link_iter_next :: proc(iter: ^MenuLinkIter) -> glib.boolean ---
		menu_model_get_item_attribute :: proc(model: ^MenuModel, item_index: glib.int_, attribute: cstring, format_string: cstring, #c_vararg var_args: ..any) -> glib.boolean ---
		menu_model_get_item_attribute_value :: proc(model: ^MenuModel, item_index: glib.int_, attribute: cstring, expected_type: ^glib.VariantType) -> ^glib.Variant ---
		menu_model_get_item_link :: proc(model: ^MenuModel, item_index: glib.int_, link: cstring) -> ^MenuModel ---
		menu_model_get_n_items :: proc(model: ^MenuModel) -> glib.int_ ---
		menu_model_get_type :: proc() -> gobj.Type ---
		menu_model_get_type :: proc() -> gobj.Type ---
		menu_model_is_mutable :: proc(model: ^MenuModel) -> glib.boolean ---
		menu_model_items_changed :: proc(model: ^MenuModel, position: glib.int_, removed: glib.int_, added: glib.int_) ---
		menu_model_iterate_item_attributes :: proc(model: ^MenuModel, item_index: glib.int_) -> ^MenuAttributeIter ---
		menu_model_iterate_item_links :: proc(model: ^MenuModel, item_index: glib.int_) -> ^MenuLinkIter ---
		menu_new :: proc() -> ^Menu ---
		menu_prepend :: proc(menu: ^Menu, label: cstring, detailed_action: cstring) ---
		menu_prepend_item :: proc(menu: ^Menu, item: ^MenuItem) ---
		menu_prepend_section :: proc(menu: ^Menu, label: cstring, section: ^MenuModel) ---
		menu_prepend_submenu :: proc(menu: ^Menu, label: cstring, submenu: ^MenuModel) ---
		menu_remove :: proc(menu: ^Menu, position: glib.int_) ---
		menu_remove_all :: proc(menu: ^Menu) ---
		mount_can_eject :: proc(mount: ^Mount) -> glib.boolean ---
		mount_can_unmount :: proc(mount: ^Mount) -> glib.boolean ---
		mount_eject :: proc(mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		mount_eject_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		mount_eject_with_operation :: proc(mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		mount_eject_with_operation_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		mount_get_default_location :: proc(mount: ^Mount) -> ^File ---
		mount_get_drive :: proc(mount: ^Mount) -> ^Drive ---
		mount_get_icon :: proc(mount: ^Mount) -> ^Icon ---
		mount_get_name :: proc(mount: ^Mount) -> cstring ---
		mount_get_root :: proc(mount: ^Mount) -> ^File ---
		mount_get_sort_key :: proc(mount: ^Mount) -> cstring ---
		mount_get_symbolic_icon :: proc(mount: ^Mount) -> ^Icon ---
		mount_get_type :: proc() -> gobj.Type ---
		mount_get_type :: proc() -> gobj.Type ---
		mount_get_uuid :: proc(mount: ^Mount) -> cstring ---
		mount_get_volume :: proc(mount: ^Mount) -> ^Volume ---
		mount_guess_content_type :: proc(mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		mount_guess_content_type_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring ---
		mount_guess_content_type_sync :: proc(mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring ---
		mount_is_shadowed :: proc(mount: ^Mount) -> glib.boolean ---
		mount_mount_flags_get_type :: proc() -> gobj.Type ---
		mount_mount_flags_get_type :: proc() -> gobj.Type ---
		mount_operation_get_anonymous :: proc(op: ^MountOperation) -> glib.boolean ---
		mount_operation_get_choice :: proc(op: ^MountOperation) -> i32 ---
		mount_operation_get_domain :: proc(op: ^MountOperation) -> cstring ---
		mount_operation_get_is_tcrypt_hidden_volume :: proc(op: ^MountOperation) -> glib.boolean ---
		mount_operation_get_is_tcrypt_system_volume :: proc(op: ^MountOperation) -> glib.boolean ---
		mount_operation_get_password :: proc(op: ^MountOperation) -> cstring ---
		mount_operation_get_password_save :: proc(op: ^MountOperation) -> PasswordSave ---
		mount_operation_get_pim :: proc(op: ^MountOperation) -> glib.uint_ ---
		mount_operation_get_type :: proc() -> gobj.Type ---
		mount_operation_get_type :: proc() -> gobj.Type ---
		mount_operation_get_username :: proc(op: ^MountOperation) -> cstring ---
		mount_operation_new :: proc() -> ^MountOperation ---
		mount_operation_reply :: proc(op: ^MountOperation, result: MountOperationResult) ---
		mount_operation_result_get_type :: proc() -> gobj.Type ---
		mount_operation_result_get_type :: proc() -> gobj.Type ---
		mount_operation_set_anonymous :: proc(op: ^MountOperation, anonymous: glib.boolean) ---
		mount_operation_set_choice :: proc(op: ^MountOperation, choice: i32) ---
		mount_operation_set_domain :: proc(op: ^MountOperation, domain: cstring) ---
		mount_operation_set_is_tcrypt_hidden_volume :: proc(op: ^MountOperation, hidden_volume: glib.boolean) ---
		mount_operation_set_is_tcrypt_system_volume :: proc(op: ^MountOperation, system_volume: glib.boolean) ---
		mount_operation_set_password :: proc(op: ^MountOperation, password: cstring) ---
		mount_operation_set_password_save :: proc(op: ^MountOperation, save: PasswordSave) ---
		mount_operation_set_pim :: proc(op: ^MountOperation, pim: glib.uint_) ---
		mount_operation_set_username :: proc(op: ^MountOperation, username: cstring) ---
		mount_remount :: proc(mount: ^Mount, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		mount_remount_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		mount_shadow :: proc(mount: ^Mount) ---
		mount_unmount :: proc(mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		mount_unmount_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		mount_unmount_flags_get_type :: proc() -> gobj.Type ---
		mount_unmount_flags_get_type :: proc() -> gobj.Type ---
		mount_unmount_with_operation :: proc(mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		mount_unmount_with_operation_finish :: proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		mount_unshadow :: proc(mount: ^Mount) ---
		native_socket_address_get_type :: proc() -> gobj.Type ---
		native_socket_address_get_type :: proc() -> gobj.Type ---
		native_socket_address_new :: proc(native: glib.pointer, len: glib.size) -> ^SocketAddress ---
		native_volume_monitor_get_type :: proc() -> gobj.Type ---
		native_volume_monitor_get_type :: proc() -> gobj.Type ---
		network_address_get_hostname :: proc(addr: ^NetworkAddress) -> cstring ---
		network_address_get_port :: proc(addr: ^NetworkAddress) -> glib.uint16 ---
		network_address_get_scheme :: proc(addr: ^NetworkAddress) -> cstring ---
		network_address_get_type :: proc() -> gobj.Type ---
		network_address_get_type :: proc() -> gobj.Type ---
		network_address_new :: proc(hostname: cstring, port: glib.uint16) -> ^SocketConnectable ---
		network_address_new_loopback :: proc(port: glib.uint16) -> ^SocketConnectable ---
		network_address_parse :: proc(host_and_port: cstring, default_port: glib.uint16, error: ^^glib.Error) -> ^SocketConnectable ---
		network_address_parse_uri :: proc(uri: cstring, default_port: glib.uint16, error: ^^glib.Error) -> ^SocketConnectable ---
		network_connectivity_get_type :: proc() -> gobj.Type ---
		network_connectivity_get_type :: proc() -> gobj.Type ---
		network_monitor_can_reach :: proc(monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		network_monitor_can_reach_async :: proc(monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		network_monitor_can_reach_finish :: proc(monitor: ^NetworkMonitor, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		network_monitor_get_connectivity :: proc(monitor: ^NetworkMonitor) -> NetworkConnectivity ---
		network_monitor_get_default :: proc() -> ^NetworkMonitor ---
		network_monitor_get_network_available :: proc(monitor: ^NetworkMonitor) -> glib.boolean ---
		network_monitor_get_network_metered :: proc(monitor: ^NetworkMonitor) -> glib.boolean ---
		network_monitor_get_type :: proc() -> gobj.Type ---
		network_monitor_get_type :: proc() -> gobj.Type ---
		network_service_get_domain :: proc(srv: ^NetworkService) -> cstring ---
		network_service_get_protocol :: proc(srv: ^NetworkService) -> cstring ---
		network_service_get_scheme :: proc(srv: ^NetworkService) -> cstring ---
		network_service_get_service :: proc(srv: ^NetworkService) -> cstring ---
		network_service_get_type :: proc() -> gobj.Type ---
		network_service_get_type :: proc() -> gobj.Type ---
		network_service_new :: proc(service: cstring, protocol: cstring, domain: cstring) -> ^SocketConnectable ---
		network_service_set_scheme :: proc(srv: ^NetworkService, scheme: cstring) ---
		notification_add_button :: proc(notification: ^Notification, label: cstring, detailed_action: cstring) ---
		notification_add_button_with_target :: proc(notification: ^Notification, label: cstring, action: cstring, target_format: cstring, #c_vararg var_args: ..any) ---
		notification_add_button_with_target_value :: proc(notification: ^Notification, label: cstring, action: cstring, target: ^glib.Variant) ---
		notification_get_type :: proc() -> gobj.Type ---
		notification_get_type :: proc() -> gobj.Type ---
		notification_new :: proc(title: cstring) -> ^Notification ---
		notification_priority_get_type :: proc() -> gobj.Type ---
		notification_priority_get_type :: proc() -> gobj.Type ---
		notification_set_body :: proc(notification: ^Notification, body: cstring) ---
		notification_set_category :: proc(notification: ^Notification, category: cstring) ---
		notification_set_default_action :: proc(notification: ^Notification, detailed_action: cstring) ---
		notification_set_default_action_and_target :: proc(notification: ^Notification, action: cstring, target_format: cstring, #c_vararg var_args: ..any) ---
		notification_set_default_action_and_target_value :: proc(notification: ^Notification, action: cstring, target: ^glib.Variant) ---
		notification_set_icon :: proc(notification: ^Notification, icon: ^Icon) ---
		notification_set_priority :: proc(notification: ^Notification, priority: NotificationPriority) ---
		notification_set_title :: proc(notification: ^Notification, title: cstring) ---
		notification_set_urgent :: proc(notification: ^Notification, urgent: glib.boolean) ---
		output_stream_clear_pending :: proc(stream: ^OutputStream) ---
		output_stream_close :: proc(stream: ^OutputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		output_stream_close_async :: proc(stream: ^OutputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		output_stream_close_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		output_stream_flush :: proc(stream: ^OutputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		output_stream_flush_async :: proc(stream: ^OutputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		output_stream_flush_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		output_stream_get_type :: proc() -> gobj.Type ---
		output_stream_get_type :: proc() -> gobj.Type ---
		output_stream_has_pending :: proc(stream: ^OutputStream) -> glib.boolean ---
		output_stream_is_closed :: proc(stream: ^OutputStream) -> glib.boolean ---
		output_stream_is_closing :: proc(stream: ^OutputStream) -> glib.boolean ---
		output_stream_printf :: proc(stream: ^OutputStream, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error, format: cstring, #c_vararg var_args: ..any) -> glib.boolean ---
		output_stream_set_pending :: proc(stream: ^OutputStream, error: ^^glib.Error) -> glib.boolean ---
		output_stream_splice :: proc(stream: ^OutputStream, source: ^InputStream, flags: OutputStreamSpliceFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		output_stream_splice_async :: proc(stream: ^OutputStream, source: ^InputStream, flags: OutputStreamSpliceFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		output_stream_splice_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---
		output_stream_splice_flags_get_type :: proc() -> gobj.Type ---
		output_stream_splice_flags_get_type :: proc() -> gobj.Type ---
		output_stream_write :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		output_stream_write_all :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		output_stream_write_all_async :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		output_stream_write_all_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, bytes_written: ^glib.size, error: ^^glib.Error) -> glib.boolean ---
		output_stream_write_async :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		output_stream_write_bytes :: proc(stream: ^OutputStream, bytes: ^glib.Bytes, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		output_stream_write_bytes_async :: proc(stream: ^OutputStream, bytes: ^glib.Bytes, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		output_stream_write_bytes_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---
		output_stream_write_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize ---
		output_stream_writev :: proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		output_stream_writev_all :: proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		output_stream_writev_all_async :: proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		output_stream_writev_all_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, bytes_written: ^glib.size, error: ^^glib.Error) -> glib.boolean ---
		output_stream_writev_async :: proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		output_stream_writev_finish :: proc(stream: ^OutputStream, result: ^AsyncResult, bytes_written: ^glib.size, error: ^^glib.Error) -> glib.boolean ---
		password_save_get_type :: proc() -> gobj.Type ---
		password_save_get_type :: proc() -> gobj.Type ---
		permission_acquire :: proc(permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		permission_acquire_async :: proc(permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		permission_acquire_finish :: proc(permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		permission_get_allowed :: proc(permission: ^Permission) -> glib.boolean ---
		permission_get_can_acquire :: proc(permission: ^Permission) -> glib.boolean ---
		permission_get_can_release :: proc(permission: ^Permission) -> glib.boolean ---
		permission_get_type :: proc() -> gobj.Type ---
		permission_get_type :: proc() -> gobj.Type ---
		permission_impl_update :: proc(permission: ^Permission, allowed: glib.boolean, can_acquire: glib.boolean, can_release: glib.boolean) ---
		permission_release :: proc(permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		permission_release_async :: proc(permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		permission_release_finish :: proc(permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		pollable_input_stream_can_poll :: proc(stream: ^PollableInputStream) -> glib.boolean ---
		pollable_input_stream_create_source :: proc(stream: ^PollableInputStream, cancellable: ^Cancellable) -> ^glib.Source ---
		pollable_input_stream_get_type :: proc() -> gobj.Type ---
		pollable_input_stream_get_type :: proc() -> gobj.Type ---
		pollable_input_stream_is_readable :: proc(stream: ^PollableInputStream) -> glib.boolean ---
		pollable_input_stream_read_nonblocking :: proc(stream: ^PollableInputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		pollable_output_stream_can_poll :: proc(stream: ^PollableOutputStream) -> glib.boolean ---
		pollable_output_stream_create_source :: proc(stream: ^PollableOutputStream, cancellable: ^Cancellable) -> ^glib.Source ---
		pollable_output_stream_get_type :: proc() -> gobj.Type ---
		pollable_output_stream_get_type :: proc() -> gobj.Type ---
		pollable_output_stream_is_writable :: proc(stream: ^PollableOutputStream) -> glib.boolean ---
		pollable_output_stream_write_nonblocking :: proc(stream: ^PollableOutputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		pollable_output_stream_writev_nonblocking :: proc(stream: ^PollableOutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> PollableReturn ---
		pollable_return_get_type :: proc() -> gobj.Type ---
		pollable_return_get_type :: proc() -> gobj.Type ---
		pollable_source_new :: proc(pollable_stream: ^gobj.Object) -> ^glib.Source ---
		pollable_source_new_full :: proc(pollable_stream: glib.pointer, child_source: ^glib.Source, cancellable: ^Cancellable) -> ^glib.Source ---
		pollable_stream_read :: proc(stream: ^InputStream, buffer: rawptr, count: glib.size, blocking: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		pollable_stream_write :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, blocking: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		pollable_stream_write_all :: proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, blocking: glib.boolean, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		power_profile_monitor_dup_default :: proc() -> ^PowerProfileMonitor ---
		power_profile_monitor_get_power_saver_enabled :: proc(monitor: ^PowerProfileMonitor) -> glib.boolean ---
		power_profile_monitor_get_type :: proc() -> gobj.Type ---
		power_profile_monitor_get_type :: proc() -> gobj.Type ---
		property_action_get_type :: proc() -> gobj.Type ---
		property_action_get_type :: proc() -> gobj.Type ---
		property_action_new :: proc(name: cstring, object: glib.pointer, property_name: cstring) -> ^PropertyAction ---
		proxy_address_enumerator_get_type :: proc() -> gobj.Type ---
		proxy_address_enumerator_get_type :: proc() -> gobj.Type ---
		proxy_address_get_destination_hostname :: proc(proxy: ^ProxyAddress) -> cstring ---
		proxy_address_get_destination_port :: proc(proxy: ^ProxyAddress) -> glib.uint16 ---
		proxy_address_get_destination_protocol :: proc(proxy: ^ProxyAddress) -> cstring ---
		proxy_address_get_password :: proc(proxy: ^ProxyAddress) -> cstring ---
		proxy_address_get_protocol :: proc(proxy: ^ProxyAddress) -> cstring ---
		proxy_address_get_type :: proc() -> gobj.Type ---
		proxy_address_get_type :: proc() -> gobj.Type ---
		proxy_address_get_uri :: proc(proxy: ^ProxyAddress) -> cstring ---
		proxy_address_get_username :: proc(proxy: ^ProxyAddress) -> cstring ---
		proxy_address_new :: proc(inetaddr: ^InetAddress, port: glib.uint16, protocol: cstring, dest_hostname: cstring, dest_port: glib.uint16, username: cstring, password: cstring) -> ^SocketAddress ---
		proxy_connect :: proc(proxy: ^Proxy, connection: ^IOStream, proxy_address: ^ProxyAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> ^IOStream ---
		proxy_connect_async :: proc(proxy: ^Proxy, connection: ^IOStream, proxy_address: ^ProxyAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		proxy_connect_finish :: proc(proxy: ^Proxy, result: ^AsyncResult, error: ^^glib.Error) -> ^IOStream ---
		proxy_get_default_for_protocol :: proc(protocol: cstring) -> ^Proxy ---
		proxy_get_type :: proc() -> gobj.Type ---
		proxy_get_type :: proc() -> gobj.Type ---
		proxy_resolver_get_default :: proc() -> ^ProxyResolver ---
		proxy_resolver_get_type :: proc() -> gobj.Type ---
		proxy_resolver_get_type :: proc() -> gobj.Type ---
		proxy_resolver_is_supported :: proc(resolver: ^ProxyResolver) -> glib.boolean ---
		proxy_resolver_lookup :: proc(resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring ---
		proxy_resolver_lookup_async :: proc(resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		proxy_resolver_lookup_finish :: proc(resolver: ^ProxyResolver, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring ---
		proxy_supports_hostname :: proc(proxy: ^Proxy) -> glib.boolean ---
		remote_action_group_activate_action_full :: proc(remote: ^RemoteActionGroup, action_name: cstring, parameter: ^glib.Variant, platform_data: ^glib.Variant) ---
		remote_action_group_change_action_state_full :: proc(remote: ^RemoteActionGroup, action_name: cstring, value: ^glib.Variant, platform_data: ^glib.Variant) ---
		remote_action_group_get_type :: proc() -> gobj.Type ---
		remote_action_group_get_type :: proc() -> gobj.Type ---
		resolver_error_get_type :: proc() -> gobj.Type ---
		resolver_error_get_type :: proc() -> gobj.Type ---
		resolver_error_quark :: proc() -> glib.Quark ---
		resolver_error_quark :: proc() -> glib.Quark ---
		resolver_free_addresses :: proc(addresses: ^glib.List) ---
		resolver_free_targets :: proc(targets: ^glib.List) ---
		resolver_get_default :: proc() -> ^Resolver ---
		resolver_get_timeout :: proc(resolver: ^Resolver) -> u32 ---
		resolver_get_type :: proc() -> gobj.Type ---
		resolver_get_type :: proc() -> gobj.Type ---
		resolver_lookup_by_address :: proc(resolver: ^Resolver, address: ^InetAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring ---
		resolver_lookup_by_address_async :: proc(resolver: ^Resolver, address: ^InetAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		resolver_lookup_by_address_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> cstring ---
		resolver_lookup_by_name :: proc(resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---
		resolver_lookup_by_name_async :: proc(resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		resolver_lookup_by_name_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		resolver_lookup_by_name_with_flags :: proc(resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---
		resolver_lookup_by_name_with_flags_async :: proc(resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		resolver_lookup_by_name_with_flags_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		resolver_lookup_records :: proc(resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---
		resolver_lookup_records_async :: proc(resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		resolver_lookup_records_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		resolver_lookup_service :: proc(resolver: ^Resolver, service: cstring, protocol: cstring, domain: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---
		resolver_lookup_service_async :: proc(resolver: ^Resolver, service: cstring, protocol: cstring, domain: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		resolver_lookup_service_finish :: proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		resolver_name_lookup_flags_get_type :: proc() -> gobj.Type ---
		resolver_name_lookup_flags_get_type :: proc() -> gobj.Type ---
		resolver_record_type_get_type :: proc() -> gobj.Type ---
		resolver_record_type_get_type :: proc() -> gobj.Type ---
		resolver_set_default :: proc(resolver: ^Resolver) ---
		resolver_set_timeout :: proc(resolver: ^Resolver, timeout_ms: u32) ---
		resource_enumerate_children :: proc(resource: ^Resource, path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^cstring ---
		resource_error_get_type :: proc() -> gobj.Type ---
		resource_error_get_type :: proc() -> gobj.Type ---
		resource_error_quark :: proc() -> glib.Quark ---
		resource_error_quark :: proc() -> glib.Quark ---
		resource_flags_get_type :: proc() -> gobj.Type ---
		resource_flags_get_type :: proc() -> gobj.Type ---
		resource_get_info :: proc(resource: ^Resource, path: cstring, lookup_flags: ResourceLookupFlags, size_p: ^glib.size, flags: ^glib.uint32, error: ^^glib.Error) -> glib.boolean ---
		resource_get_type :: proc() -> gobj.Type ---
		resource_get_type :: proc() -> gobj.Type ---
		resource_load :: proc(filename: cstring, error: ^^glib.Error) -> ^Resource ---
		resource_lookup_data :: proc(resource: ^Resource, path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^glib.Bytes ---
		resource_lookup_flags_get_type :: proc() -> gobj.Type ---
		resource_lookup_flags_get_type :: proc() -> gobj.Type ---
		resource_new_from_data :: proc(data: ^glib.Bytes, error: ^^glib.Error) -> ^Resource ---
		resource_open_stream :: proc(resource: ^Resource, path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^InputStream ---
		resource_ref :: proc(resource: ^Resource) -> ^Resource ---
		resource_unref :: proc(resource: ^Resource) ---
		resources_enumerate_children :: proc(path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^cstring ---
		resources_get_info :: proc(path: cstring, lookup_flags: ResourceLookupFlags, size_p: ^glib.size, flags: ^glib.uint32, error: ^^glib.Error) -> glib.boolean ---
		resources_lookup_data :: proc(path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^glib.Bytes ---
		resources_open_stream :: proc(path: cstring, lookup_flags: ResourceLookupFlags, error: ^^glib.Error) -> ^InputStream ---
		resources_register :: proc(resource: ^Resource) ---
		resources_unregister :: proc(resource: ^Resource) ---
		seekable_can_seek :: proc(seekable: ^Seekable) -> glib.boolean ---
		seekable_can_truncate :: proc(seekable: ^Seekable) -> glib.boolean ---
		seekable_get_type :: proc() -> gobj.Type ---
		seekable_get_type :: proc() -> gobj.Type ---
		seekable_seek :: proc(seekable: ^Seekable, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		seekable_tell :: proc(seekable: ^Seekable) -> glib.offset ---
		seekable_truncate :: proc(seekable: ^Seekable, offset_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		settings_apply :: proc(settings: ^Settings) ---
		settings_bind :: proc(settings: ^Settings, key: cstring, object: glib.pointer, property: cstring, flags: SettingsBindFlags) ---
		settings_bind_flags_get_type :: proc() -> gobj.Type ---
		settings_bind_flags_get_type :: proc() -> gobj.Type ---
		settings_bind_with_mapping :: proc(settings: ^Settings, key: cstring, object: glib.pointer, property: cstring, flags: SettingsBindFlags, get_mapping: SettingsBindGetMapping, set_mapping: SettingsBindSetMapping, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		settings_bind_writable :: proc(settings: ^Settings, key: cstring, object: glib.pointer, property: cstring, inverted: glib.boolean) ---
		settings_create_action :: proc(settings: ^Settings, key: cstring) -> ^Action ---
		settings_delay :: proc(settings: ^Settings) ---
		settings_get :: proc(settings: ^Settings, key: cstring, format: cstring, #c_vararg var_args: ..any) ---
		settings_get_boolean :: proc(settings: ^Settings, key: cstring) -> glib.boolean ---
		settings_get_child :: proc(settings: ^Settings, name: cstring) -> ^Settings ---
		settings_get_default_value :: proc(settings: ^Settings, key: cstring) -> ^glib.Variant ---
		settings_get_double :: proc(settings: ^Settings, key: cstring) -> glib.double ---
		settings_get_enum :: proc(settings: ^Settings, key: cstring) -> glib.int_ ---
		settings_get_flags :: proc(settings: ^Settings, key: cstring) -> glib.uint_ ---
		settings_get_has_unapplied :: proc(settings: ^Settings) -> glib.boolean ---
		settings_get_int :: proc(settings: ^Settings, key: cstring) -> glib.int_ ---
		settings_get_int64 :: proc(settings: ^Settings, key: cstring) -> glib.int64 ---
		settings_get_mapped :: proc(settings: ^Settings, key: cstring, mapping: SettingsGetMapping, user_data: glib.pointer) -> glib.pointer ---
		settings_get_range :: proc(settings: ^Settings, key: cstring) -> ^glib.Variant ---
		settings_get_string :: proc(settings: ^Settings, key: cstring) -> cstring ---
		settings_get_strv :: proc(settings: ^Settings, key: cstring) -> ^cstring ---
		settings_get_type :: proc() -> gobj.Type ---
		settings_get_type :: proc() -> gobj.Type ---
		settings_get_uint :: proc(settings: ^Settings, key: cstring) -> glib.uint_ ---
		settings_get_uint64 :: proc(settings: ^Settings, key: cstring) -> glib.uint64 ---
		settings_get_user_value :: proc(settings: ^Settings, key: cstring) -> ^glib.Variant ---
		settings_get_value :: proc(settings: ^Settings, key: cstring) -> ^glib.Variant ---
		settings_is_writable :: proc(settings: ^Settings, name: cstring) -> glib.boolean ---
		settings_list_children :: proc(settings: ^Settings) -> ^cstring ---
		settings_list_keys :: proc(settings: ^Settings) -> ^cstring ---
		settings_list_relocatable_schemas :: proc() -> ^cstring ---
		settings_list_schemas :: proc() -> ^cstring ---
		settings_new :: proc(schema_id: cstring) -> ^Settings ---
		settings_new_full :: proc(schema: ^SettingsSchema, backend: ^SettingsBackend, path: cstring) -> ^Settings ---
		settings_new_with_backend :: proc(schema_id: cstring, backend: ^SettingsBackend) -> ^Settings ---
		settings_new_with_backend_and_path :: proc(schema_id: cstring, backend: ^SettingsBackend, path: cstring) -> ^Settings ---
		settings_new_with_path :: proc(schema_id: cstring, path: cstring) -> ^Settings ---
		settings_range_check :: proc(settings: ^Settings, key: cstring, value: ^glib.Variant) -> glib.boolean ---
		settings_reset :: proc(settings: ^Settings, key: cstring) ---
		settings_revert :: proc(settings: ^Settings) ---
		settings_schema_get_id :: proc(schema: ^SettingsSchema) -> cstring ---
		settings_schema_get_key :: proc(schema: ^SettingsSchema, name: cstring) -> ^SettingsSchemaKey ---
		settings_schema_get_path :: proc(schema: ^SettingsSchema) -> cstring ---
		settings_schema_get_type :: proc() -> gobj.Type ---
		settings_schema_get_type :: proc() -> gobj.Type ---
		settings_schema_has_key :: proc(schema: ^SettingsSchema, name: cstring) -> glib.boolean ---
		settings_schema_key_get_default_value :: proc(key: ^SettingsSchemaKey) -> ^glib.Variant ---
		settings_schema_key_get_description :: proc(key: ^SettingsSchemaKey) -> cstring ---
		settings_schema_key_get_name :: proc(key: ^SettingsSchemaKey) -> cstring ---
		settings_schema_key_get_range :: proc(key: ^SettingsSchemaKey) -> ^glib.Variant ---
		settings_schema_key_get_summary :: proc(key: ^SettingsSchemaKey) -> cstring ---
		settings_schema_key_get_type :: proc() -> gobj.Type ---
		settings_schema_key_get_type :: proc() -> gobj.Type ---
		settings_schema_key_get_value_type :: proc(key: ^SettingsSchemaKey) -> ^glib.VariantType ---
		settings_schema_key_range_check :: proc(key: ^SettingsSchemaKey, value: ^glib.Variant) -> glib.boolean ---
		settings_schema_key_ref :: proc(key: ^SettingsSchemaKey) -> ^SettingsSchemaKey ---
		settings_schema_key_unref :: proc(key: ^SettingsSchemaKey) ---
		settings_schema_list_children :: proc(schema: ^SettingsSchema) -> ^cstring ---
		settings_schema_list_keys :: proc(schema: ^SettingsSchema) -> ^cstring ---
		settings_schema_ref :: proc(schema: ^SettingsSchema) -> ^SettingsSchema ---
		settings_schema_source_get_default :: proc() -> ^SettingsSchemaSource ---
		settings_schema_source_get_type :: proc() -> gobj.Type ---
		settings_schema_source_get_type :: proc() -> gobj.Type ---
		settings_schema_source_list_schemas :: proc(source: ^SettingsSchemaSource, recursive: glib.boolean, non_relocatable: ^^cstring, relocatable: ^^cstring) ---
		settings_schema_source_lookup :: proc(source: ^SettingsSchemaSource, schema_id: cstring, recursive: glib.boolean) -> ^SettingsSchema ---
		settings_schema_source_new_from_directory :: proc(directory: cstring, parent: ^SettingsSchemaSource, trusted: glib.boolean, error: ^^glib.Error) -> ^SettingsSchemaSource ---
		settings_schema_source_ref :: proc(source: ^SettingsSchemaSource) -> ^SettingsSchemaSource ---
		settings_schema_source_unref :: proc(source: ^SettingsSchemaSource) ---
		settings_schema_unref :: proc(schema: ^SettingsSchema) ---
		settings_set :: proc(settings: ^Settings, key: cstring, format: cstring, #c_vararg var_args: ..any) -> glib.boolean ---
		settings_set_boolean :: proc(settings: ^Settings, key: cstring, value: glib.boolean) -> glib.boolean ---
		settings_set_double :: proc(settings: ^Settings, key: cstring, value: glib.double) -> glib.boolean ---
		settings_set_enum :: proc(settings: ^Settings, key: cstring, value: glib.int_) -> glib.boolean ---
		settings_set_flags :: proc(settings: ^Settings, key: cstring, value: glib.uint_) -> glib.boolean ---
		settings_set_int :: proc(settings: ^Settings, key: cstring, value: glib.int_) -> glib.boolean ---
		settings_set_int64 :: proc(settings: ^Settings, key: cstring, value: glib.int64) -> glib.boolean ---
		settings_set_string :: proc(settings: ^Settings, key: cstring, value: cstring) -> glib.boolean ---
		settings_set_strv :: proc(settings: ^Settings, key: cstring, value: ^cstring) -> glib.boolean ---
		settings_set_uint :: proc(settings: ^Settings, key: cstring, value: glib.uint_) -> glib.boolean ---
		settings_set_uint64 :: proc(settings: ^Settings, key: cstring, value: glib.uint64) -> glib.boolean ---
		settings_set_value :: proc(settings: ^Settings, key: cstring, value: ^glib.Variant) -> glib.boolean ---
		settings_sync :: proc() ---
		settings_unbind :: proc(object: glib.pointer, property: cstring) ---
		simple_action_get_type :: proc() -> gobj.Type ---
		simple_action_get_type :: proc() -> gobj.Type ---
		simple_action_group_add_entries :: proc(simple: ^SimpleActionGroup, entries: [^]ActionEntry, n_entries: glib.int_, user_data: glib.pointer) ---
		simple_action_group_get_type :: proc() -> gobj.Type ---
		simple_action_group_get_type :: proc() -> gobj.Type ---
		simple_action_group_insert :: proc(simple: ^SimpleActionGroup, action: ^Action) ---
		simple_action_group_lookup :: proc(simple: ^SimpleActionGroup, action_name: cstring) -> ^Action ---
		simple_action_group_new :: proc() -> ^SimpleActionGroup ---
		simple_action_group_remove :: proc(simple: ^SimpleActionGroup, action_name: cstring) ---
		simple_action_new :: proc(name: cstring, parameter_type: ^glib.VariantType) -> ^SimpleAction ---
		simple_action_new_stateful :: proc(name: cstring, parameter_type: ^glib.VariantType, state: ^glib.Variant) -> ^SimpleAction ---
		simple_action_set_enabled :: proc(simple: ^SimpleAction, enabled: glib.boolean) ---
		simple_action_set_state :: proc(simple: ^SimpleAction, value: ^glib.Variant) ---
		simple_action_set_state_hint :: proc(simple: ^SimpleAction, state_hint: ^glib.Variant) ---
		simple_async_report_error_in_idle :: proc(object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---
		simple_async_report_gerror_in_idle :: proc(object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, error: ^glib.Error) ---
		simple_async_report_take_gerror_in_idle :: proc(object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, error: ^glib.Error) ---
		simple_async_result_complete :: proc(simple: ^SimpleAsyncResult) ---
		simple_async_result_complete_in_idle :: proc(simple: ^SimpleAsyncResult) ---
		simple_async_result_get_op_res_gboolean :: proc(simple: ^SimpleAsyncResult) -> glib.boolean ---
		simple_async_result_get_op_res_gpointer :: proc(simple: ^SimpleAsyncResult) -> glib.pointer ---
		simple_async_result_get_op_res_gssize :: proc(simple: ^SimpleAsyncResult) -> glib.ssize ---
		simple_async_result_get_source_tag :: proc(simple: ^SimpleAsyncResult) -> glib.pointer ---
		simple_async_result_get_type :: proc() -> gobj.Type ---
		simple_async_result_get_type :: proc() -> gobj.Type ---
		simple_async_result_is_valid :: proc(result: ^AsyncResult, source: ^gobj.Object, source_tag: glib.pointer) -> glib.boolean ---
		simple_async_result_new :: proc(source_object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, source_tag: glib.pointer) -> ^SimpleAsyncResult ---
		simple_async_result_new_error :: proc(source_object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) -> ^SimpleAsyncResult ---
		simple_async_result_new_from_error :: proc(source_object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, error: ^glib.Error) -> ^SimpleAsyncResult ---
		simple_async_result_new_take_error :: proc(source_object: ^gobj.Object, callback: AsyncReadyCallback, user_data: glib.pointer, error: ^glib.Error) -> ^SimpleAsyncResult ---
		simple_async_result_propagate_error :: proc(simple: ^SimpleAsyncResult, dest: ^^glib.Error) -> glib.boolean ---
		simple_async_result_run_in_thread :: proc(simple: ^SimpleAsyncResult, func: SimpleAsyncThreadFunc, io_priority: i32, cancellable: ^Cancellable) ---
		simple_async_result_set_check_cancellable :: proc(simple: ^SimpleAsyncResult, check_cancellable: ^Cancellable) ---
		simple_async_result_set_error :: proc(simple: ^SimpleAsyncResult, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---
		simple_async_result_set_from_error :: proc(simple: ^SimpleAsyncResult, error: ^glib.Error) ---
		simple_async_result_set_handle_cancellation :: proc(simple: ^SimpleAsyncResult, handle_cancellation: glib.boolean) ---
		simple_async_result_set_op_res_gboolean :: proc(simple: ^SimpleAsyncResult, op_res: glib.boolean) ---
		simple_async_result_set_op_res_gpointer :: proc(simple: ^SimpleAsyncResult, op_res: glib.pointer, destroy_op_res: glib.DestroyNotify) ---
		simple_async_result_set_op_res_gssize :: proc(simple: ^SimpleAsyncResult, op_res: glib.ssize) ---
		simple_async_result_take_error :: proc(simple: ^SimpleAsyncResult, error: ^glib.Error) ---
		simple_io_stream_get_type :: proc() -> gobj.Type ---
		simple_io_stream_get_type :: proc() -> gobj.Type ---
		simple_io_stream_new :: proc(input_stream: ^InputStream, output_stream: ^OutputStream) -> ^IOStream ---
		simple_permission_get_type :: proc() -> gobj.Type ---
		simple_permission_get_type :: proc() -> gobj.Type ---
		simple_permission_new :: proc(allowed: glib.boolean) -> ^Permission ---
		simple_proxy_resolver_get_type :: proc() -> gobj.Type ---
		simple_proxy_resolver_get_type :: proc() -> gobj.Type ---
		simple_proxy_resolver_new :: proc(default_proxy: cstring, ignore_hosts: [^]cstring) -> ^ProxyResolver ---
		simple_proxy_resolver_set_default_proxy :: proc(resolver: ^SimpleProxyResolver, default_proxy: cstring) ---
		simple_proxy_resolver_set_ignore_hosts :: proc(resolver: ^SimpleProxyResolver, ignore_hosts: [^]cstring) ---
		simple_proxy_resolver_set_uri_proxy :: proc(resolver: ^SimpleProxyResolver, uri_scheme: cstring, proxy: cstring) ---
		socket_accept :: proc(socket: ^Socket, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Socket ---
		socket_address_enumerator_get_type :: proc() -> gobj.Type ---
		socket_address_enumerator_get_type :: proc() -> gobj.Type ---
		socket_address_enumerator_next :: proc(enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketAddress ---
		socket_address_enumerator_next_async :: proc(enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		socket_address_enumerator_next_finish :: proc(enumerator: ^SocketAddressEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketAddress ---
		socket_address_get_family :: proc(address: ^SocketAddress) -> SocketFamily ---
		socket_address_get_native_size :: proc(address: ^SocketAddress) -> glib.ssize ---
		socket_address_get_type :: proc() -> gobj.Type ---
		socket_address_get_type :: proc() -> gobj.Type ---
		socket_address_new_from_native :: proc(native: glib.pointer, len: glib.size) -> ^SocketAddress ---
		socket_address_to_native :: proc(address: ^SocketAddress, dest: glib.pointer, destlen: glib.size, error: ^^glib.Error) -> glib.boolean ---
		socket_bind :: proc(socket: ^Socket, address: ^SocketAddress, allow_reuse: glib.boolean, error: ^^glib.Error) -> glib.boolean ---
		socket_check_connect_result :: proc(socket: ^Socket, error: ^^glib.Error) -> glib.boolean ---
		socket_client_add_application_proxy :: proc(client: ^SocketClient, protocol: cstring) ---
		socket_client_connect :: proc(client: ^SocketClient, connectable: ^SocketConnectable, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---
		socket_client_connect_async :: proc(client: ^SocketClient, connectable: ^SocketConnectable, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		socket_client_connect_finish :: proc(client: ^SocketClient, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketConnection ---
		socket_client_connect_to_host :: proc(client: ^SocketClient, host_and_port: cstring, default_port: glib.uint16, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---
		socket_client_connect_to_host_async :: proc(client: ^SocketClient, host_and_port: cstring, default_port: glib.uint16, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		socket_client_connect_to_host_finish :: proc(client: ^SocketClient, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketConnection ---
		socket_client_connect_to_service :: proc(client: ^SocketClient, domain: cstring, service: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---
		socket_client_connect_to_service_async :: proc(client: ^SocketClient, domain: cstring, service: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		socket_client_connect_to_service_finish :: proc(client: ^SocketClient, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketConnection ---
		socket_client_connect_to_uri :: proc(client: ^SocketClient, uri: cstring, default_port: glib.uint16, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---
		socket_client_connect_to_uri_async :: proc(client: ^SocketClient, uri: cstring, default_port: glib.uint16, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		socket_client_connect_to_uri_finish :: proc(client: ^SocketClient, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketConnection ---
		socket_client_event_get_type :: proc() -> gobj.Type ---
		socket_client_event_get_type :: proc() -> gobj.Type ---
		socket_client_get_enable_proxy :: proc(client: ^SocketClient) -> glib.boolean ---
		socket_client_get_family :: proc(client: ^SocketClient) -> SocketFamily ---
		socket_client_get_local_address :: proc(client: ^SocketClient) -> ^SocketAddress ---
		socket_client_get_protocol :: proc(client: ^SocketClient) -> SocketProtocol ---
		socket_client_get_proxy_resolver :: proc(client: ^SocketClient) -> ^ProxyResolver ---
		socket_client_get_socket_type :: proc(client: ^SocketClient) -> SocketType ---
		socket_client_get_timeout :: proc(client: ^SocketClient) -> glib.uint_ ---
		socket_client_get_tls :: proc(client: ^SocketClient) -> glib.boolean ---
		socket_client_get_tls_validation_flags :: proc(client: ^SocketClient) -> TlsCertificateFlags ---
		socket_client_get_type :: proc() -> gobj.Type ---
		socket_client_get_type :: proc() -> gobj.Type ---
		socket_client_new :: proc() -> ^SocketClient ---
		socket_client_set_enable_proxy :: proc(client: ^SocketClient, enable: glib.boolean) ---
		socket_client_set_family :: proc(client: ^SocketClient, family: SocketFamily) ---
		socket_client_set_local_address :: proc(client: ^SocketClient, address: ^SocketAddress) ---
		socket_client_set_protocol :: proc(client: ^SocketClient, protocol: SocketProtocol) ---
		socket_client_set_proxy_resolver :: proc(client: ^SocketClient, proxy_resolver: ^ProxyResolver) ---
		socket_client_set_socket_type :: proc(client: ^SocketClient, type: SocketType) ---
		socket_client_set_timeout :: proc(client: ^SocketClient, timeout: glib.uint_) ---
		socket_client_set_tls :: proc(client: ^SocketClient, tls: glib.boolean) ---
		socket_client_set_tls_validation_flags :: proc(client: ^SocketClient, flags: TlsCertificateFlags) ---
		socket_close :: proc(socket: ^Socket, error: ^^glib.Error) -> glib.boolean ---
		socket_condition_check :: proc(socket: ^Socket, condition: glib.IOCondition) -> glib.IOCondition ---
		socket_condition_timed_wait :: proc(socket: ^Socket, condition: glib.IOCondition, timeout_us: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		socket_condition_wait :: proc(socket: ^Socket, condition: glib.IOCondition, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		socket_connect :: proc(socket: ^Socket, address: ^SocketAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		socket_connectable_enumerate :: proc(connectable: ^SocketConnectable) -> ^SocketAddressEnumerator ---
		socket_connectable_get_type :: proc() -> gobj.Type ---
		socket_connectable_get_type :: proc() -> gobj.Type ---
		socket_connectable_proxy_enumerate :: proc(connectable: ^SocketConnectable) -> ^SocketAddressEnumerator ---
		socket_connectable_to_string :: proc(connectable: ^SocketConnectable) -> cstring ---
		socket_connection_connect :: proc(connection: ^SocketConnection, address: ^SocketAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		socket_connection_connect_async :: proc(connection: ^SocketConnection, address: ^SocketAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		socket_connection_connect_finish :: proc(connection: ^SocketConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		socket_connection_factory_create_connection :: proc(socket: ^Socket) -> ^SocketConnection ---
		socket_connection_factory_lookup_type :: proc(family: SocketFamily, type: SocketType, protocol_id: glib.int_) -> gobj.Type ---
		socket_connection_factory_register_type :: proc(g_type: gobj.Type, family: SocketFamily, type: SocketType, protocol: glib.int_) ---
		socket_connection_get_local_address :: proc(connection: ^SocketConnection, error: ^^glib.Error) -> ^SocketAddress ---
		socket_connection_get_remote_address :: proc(connection: ^SocketConnection, error: ^^glib.Error) -> ^SocketAddress ---
		socket_connection_get_socket :: proc(connection: ^SocketConnection) -> ^Socket ---
		socket_connection_get_type :: proc() -> gobj.Type ---
		socket_connection_get_type :: proc() -> gobj.Type ---
		socket_connection_is_connected :: proc(connection: ^SocketConnection) -> glib.boolean ---
		socket_control_message_deserialize :: proc(level: i32, type: i32, size_p: glib.size, data: glib.pointer) -> ^SocketControlMessage ---
		socket_control_message_get_level :: proc(message: ^SocketControlMessage) -> i32 ---
		socket_control_message_get_msg_type :: proc(message: ^SocketControlMessage) -> i32 ---
		socket_control_message_get_size :: proc(message: ^SocketControlMessage) -> glib.size ---
		socket_control_message_get_type :: proc() -> gobj.Type ---
		socket_control_message_get_type :: proc() -> gobj.Type ---
		socket_control_message_serialize :: proc(message: ^SocketControlMessage, data: glib.pointer) ---
		socket_create_source :: proc(socket: ^Socket, condition: glib.IOCondition, cancellable: ^Cancellable) -> ^glib.Source ---
		socket_family_get_type :: proc() -> gobj.Type ---
		socket_family_get_type :: proc() -> gobj.Type ---
		socket_get_available_bytes :: proc(socket: ^Socket) -> glib.ssize ---
		socket_get_blocking :: proc(socket: ^Socket) -> glib.boolean ---
		socket_get_broadcast :: proc(socket: ^Socket) -> glib.boolean ---
		socket_get_credentials :: proc(socket: ^Socket, error: ^^glib.Error) -> ^Credentials ---
		socket_get_family :: proc(socket: ^Socket) -> SocketFamily ---
		socket_get_fd :: proc(socket: ^Socket) -> i32 ---
		socket_get_keepalive :: proc(socket: ^Socket) -> glib.boolean ---
		socket_get_listen_backlog :: proc(socket: ^Socket) -> glib.int_ ---
		socket_get_local_address :: proc(socket: ^Socket, error: ^^glib.Error) -> ^SocketAddress ---
		socket_get_multicast_loopback :: proc(socket: ^Socket) -> glib.boolean ---
		socket_get_multicast_ttl :: proc(socket: ^Socket) -> glib.uint_ ---
		socket_get_option :: proc(socket: ^Socket, level: glib.int_, optname: glib.int_, value: ^glib.int_, error: ^^glib.Error) -> glib.boolean ---
		socket_get_protocol :: proc(socket: ^Socket) -> SocketProtocol ---
		socket_get_remote_address :: proc(socket: ^Socket, error: ^^glib.Error) -> ^SocketAddress ---
		socket_get_socket_type :: proc(socket: ^Socket) -> SocketType ---
		socket_get_timeout :: proc(socket: ^Socket) -> glib.uint_ ---
		socket_get_ttl :: proc(socket: ^Socket) -> glib.uint_ ---
		socket_get_type :: proc() -> gobj.Type ---
		socket_get_type :: proc() -> gobj.Type ---
		socket_is_closed :: proc(socket: ^Socket) -> glib.boolean ---
		socket_is_connected :: proc(socket: ^Socket) -> glib.boolean ---
		socket_join_multicast_group :: proc(socket: ^Socket, group: ^InetAddress, source_specific: glib.boolean, iface: cstring, error: ^^glib.Error) -> glib.boolean ---
		socket_join_multicast_group_ssm :: proc(socket: ^Socket, group: ^InetAddress, source_specific: ^InetAddress, iface: cstring, error: ^^glib.Error) -> glib.boolean ---
		socket_leave_multicast_group :: proc(socket: ^Socket, group: ^InetAddress, source_specific: glib.boolean, iface: cstring, error: ^^glib.Error) -> glib.boolean ---
		socket_leave_multicast_group_ssm :: proc(socket: ^Socket, group: ^InetAddress, source_specific: ^InetAddress, iface: cstring, error: ^^glib.Error) -> glib.boolean ---
		socket_listen :: proc(socket: ^Socket, error: ^^glib.Error) -> glib.boolean ---
		socket_listener_accept :: proc(listener: ^SocketListener, source_object: ^^gobj.Object, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketConnection ---
		socket_listener_accept_async :: proc(listener: ^SocketListener, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		socket_listener_accept_finish :: proc(listener: ^SocketListener, result: ^AsyncResult, source_object: ^^gobj.Object, error: ^^glib.Error) -> ^SocketConnection ---
		socket_listener_accept_socket :: proc(listener: ^SocketListener, source_object: ^^gobj.Object, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Socket ---
		socket_listener_accept_socket_async :: proc(listener: ^SocketListener, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		socket_listener_accept_socket_finish :: proc(listener: ^SocketListener, result: ^AsyncResult, source_object: ^^gobj.Object, error: ^^glib.Error) -> ^Socket ---
		socket_listener_add_address :: proc(listener: ^SocketListener, address: ^SocketAddress, type: SocketType, protocol: SocketProtocol, source_object: ^gobj.Object, effective_address: ^^SocketAddress, error: ^^glib.Error) -> glib.boolean ---
		socket_listener_add_any_inet_port :: proc(listener: ^SocketListener, source_object: ^gobj.Object, error: ^^glib.Error) -> glib.uint16 ---
		socket_listener_add_inet_port :: proc(listener: ^SocketListener, port: glib.uint16, source_object: ^gobj.Object, error: ^^glib.Error) -> glib.boolean ---
		socket_listener_add_socket :: proc(listener: ^SocketListener, socket: ^Socket, source_object: ^gobj.Object, error: ^^glib.Error) -> glib.boolean ---
		socket_listener_close :: proc(listener: ^SocketListener) ---
		socket_listener_event_get_type :: proc() -> gobj.Type ---
		socket_listener_event_get_type :: proc() -> gobj.Type ---
		socket_listener_get_type :: proc() -> gobj.Type ---
		socket_listener_get_type :: proc() -> gobj.Type ---
		socket_listener_new :: proc() -> ^SocketListener ---
		socket_listener_set_backlog :: proc(listener: ^SocketListener, listen_backlog: i32) ---
		socket_msg_flags_get_type :: proc() -> gobj.Type ---
		socket_msg_flags_get_type :: proc() -> gobj.Type ---
		socket_new :: proc(family: SocketFamily, type: SocketType, protocol: SocketProtocol, error: ^^glib.Error) -> ^Socket ---
		socket_new_from_fd :: proc(fd: glib.int_, error: ^^glib.Error) -> ^Socket ---
		socket_protocol_get_type :: proc() -> gobj.Type ---
		socket_protocol_get_type :: proc() -> gobj.Type ---
		socket_receive :: proc(socket: ^Socket, buffer: cstring, size_p: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		socket_receive_bytes :: proc(socket: ^Socket, size_p: glib.size, timeout_us: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Bytes ---
		socket_receive_bytes_from :: proc(socket: ^Socket, address: ^^SocketAddress, size_p: glib.size, timeout_us: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.Bytes ---
		socket_receive_from :: proc(socket: ^Socket, address: ^^SocketAddress, buffer: cstring, size_p: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		socket_receive_message :: proc(socket: ^Socket, address: ^^SocketAddress, vectors: [^]InputVector, num_vectors: glib.int_, messages: ^[^]^SocketControlMessage, num_messages: ^glib.int_, flags: ^glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		socket_receive_messages :: proc(socket: ^Socket, messages: [^]InputMessage, num_messages: glib.uint_, flags: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---
		socket_receive_with_blocking :: proc(socket: ^Socket, buffer: cstring, size_p: glib.size, blocking: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		socket_send :: proc(socket: ^Socket, buffer: cstring, size_p: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		socket_send_message :: proc(socket: ^Socket, address: ^SocketAddress, vectors: [^]OutputVector, num_vectors: glib.int_, messages: [^]^SocketControlMessage, num_messages: glib.int_, flags: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		socket_send_message_with_timeout :: proc(socket: ^Socket, address: ^SocketAddress, vectors: [^]OutputVector, num_vectors: glib.int_, messages: [^]^SocketControlMessage, num_messages: glib.int_, flags: glib.int_, timeout_us: glib.int64, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> PollableReturn ---
		socket_send_messages :: proc(socket: ^Socket, messages: [^]OutputMessage, num_messages: glib.uint_, flags: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---
		socket_send_to :: proc(socket: ^Socket, address: ^SocketAddress, buffer: cstring, size_p: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		socket_send_with_blocking :: proc(socket: ^Socket, buffer: cstring, size_p: glib.size, blocking: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize ---
		socket_service_get_type :: proc() -> gobj.Type ---
		socket_service_get_type :: proc() -> gobj.Type ---
		socket_service_is_active :: proc(service: ^SocketService) -> glib.boolean ---
		socket_service_new :: proc() -> ^SocketService ---
		socket_service_start :: proc(service: ^SocketService) ---
		socket_service_stop :: proc(service: ^SocketService) ---
		socket_set_blocking :: proc(socket: ^Socket, blocking: glib.boolean) ---
		socket_set_broadcast :: proc(socket: ^Socket, broadcast: glib.boolean) ---
		socket_set_keepalive :: proc(socket: ^Socket, keepalive: glib.boolean) ---
		socket_set_listen_backlog :: proc(socket: ^Socket, backlog: glib.int_) ---
		socket_set_multicast_loopback :: proc(socket: ^Socket, loopback: glib.boolean) ---
		socket_set_multicast_ttl :: proc(socket: ^Socket, ttl: glib.uint_) ---
		socket_set_option :: proc(socket: ^Socket, level: glib.int_, optname: glib.int_, value: glib.int_, error: ^^glib.Error) -> glib.boolean ---
		socket_set_timeout :: proc(socket: ^Socket, timeout: glib.uint_) ---
		socket_set_ttl :: proc(socket: ^Socket, ttl: glib.uint_) ---
		socket_shutdown :: proc(socket: ^Socket, shutdown_read: glib.boolean, shutdown_write: glib.boolean, error: ^^glib.Error) -> glib.boolean ---
		socket_speaks_ipv4 :: proc(socket: ^Socket) -> glib.boolean ---
		socket_type_get_type :: proc() -> gobj.Type ---
		socket_type_get_type :: proc() -> gobj.Type ---
		srv_target_copy :: proc(target: ^SrvTarget) -> ^SrvTarget ---
		srv_target_free :: proc(target: ^SrvTarget) ---
		srv_target_get_hostname :: proc(target: ^SrvTarget) -> cstring ---
		srv_target_get_port :: proc(target: ^SrvTarget) -> glib.uint16 ---
		srv_target_get_priority :: proc(target: ^SrvTarget) -> glib.uint16 ---
		srv_target_get_type :: proc() -> gobj.Type ---
		srv_target_get_type :: proc() -> gobj.Type ---
		srv_target_get_weight :: proc(target: ^SrvTarget) -> glib.uint16 ---
		srv_target_list_sort :: proc(targets: ^glib.List) -> ^glib.List ---
		srv_target_new :: proc(hostname: cstring, port: glib.uint16, priority: glib.uint16, weight: glib.uint16) -> ^SrvTarget ---
		static_resource_fini :: proc(static_resource: ^StaticResource) ---
		static_resource_get_resource :: proc(static_resource: ^StaticResource) -> ^Resource ---
		static_resource_init :: proc(static_resource: ^StaticResource) ---
		subprocess_communicate :: proc(subprocess: ^Subprocess, stdin_buf: ^glib.Bytes, cancellable: ^Cancellable, stdout_buf: ^^glib.Bytes, stderr_buf: ^^glib.Bytes, error: ^^glib.Error) -> glib.boolean ---
		subprocess_communicate_async :: proc(subprocess: ^Subprocess, stdin_buf: ^glib.Bytes, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		subprocess_communicate_finish :: proc(subprocess: ^Subprocess, result: ^AsyncResult, stdout_buf: ^^glib.Bytes, stderr_buf: ^^glib.Bytes, error: ^^glib.Error) -> glib.boolean ---
		subprocess_communicate_utf8 :: proc(subprocess: ^Subprocess, stdin_buf: cstring, cancellable: ^Cancellable, stdout_buf: ^cstring, stderr_buf: ^cstring, error: ^^glib.Error) -> glib.boolean ---
		subprocess_communicate_utf8_async :: proc(subprocess: ^Subprocess, stdin_buf: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		subprocess_communicate_utf8_finish :: proc(subprocess: ^Subprocess, result: ^AsyncResult, stdout_buf: ^cstring, stderr_buf: ^cstring, error: ^^glib.Error) -> glib.boolean ---
		subprocess_flags_get_type :: proc() -> gobj.Type ---
		subprocess_flags_get_type :: proc() -> gobj.Type ---
		subprocess_force_exit :: proc(subprocess: ^Subprocess) ---
		subprocess_get_exit_status :: proc(subprocess: ^Subprocess) -> glib.int_ ---
		subprocess_get_identifier :: proc(subprocess: ^Subprocess) -> cstring ---
		subprocess_get_if_exited :: proc(subprocess: ^Subprocess) -> glib.boolean ---
		subprocess_get_if_signaled :: proc(subprocess: ^Subprocess) -> glib.boolean ---
		subprocess_get_status :: proc(subprocess: ^Subprocess) -> glib.int_ ---
		subprocess_get_stderr_pipe :: proc(subprocess: ^Subprocess) -> ^InputStream ---
		subprocess_get_stdin_pipe :: proc(subprocess: ^Subprocess) -> ^OutputStream ---
		subprocess_get_stdout_pipe :: proc(subprocess: ^Subprocess) -> ^InputStream ---
		subprocess_get_successful :: proc(subprocess: ^Subprocess) -> glib.boolean ---
		subprocess_get_term_sig :: proc(subprocess: ^Subprocess) -> glib.int_ ---
		subprocess_get_type :: proc() -> gobj.Type ---
		subprocess_get_type :: proc() -> gobj.Type ---
		subprocess_launcher_close :: proc(self: ^SubprocessLauncher) ---
		subprocess_launcher_get_type :: proc() -> gobj.Type ---
		subprocess_launcher_get_type :: proc() -> gobj.Type ---
		subprocess_launcher_getenv :: proc(self: ^SubprocessLauncher, variable: cstring) -> cstring ---
		subprocess_launcher_new :: proc(flags: SubprocessFlags) -> ^SubprocessLauncher ---
		subprocess_launcher_set_child_setup :: proc(self: ^SubprocessLauncher, child_setup: glib.SpawnChildSetupFunc, user_data: glib.pointer, destroy_notify: glib.DestroyNotify) ---
		subprocess_launcher_set_cwd :: proc(self: ^SubprocessLauncher, cwd: cstring) ---
		subprocess_launcher_set_environ :: proc(self: ^SubprocessLauncher, env: ^cstring) ---
		subprocess_launcher_set_flags :: proc(self: ^SubprocessLauncher, flags: SubprocessFlags) ---
		subprocess_launcher_set_stderr_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---
		subprocess_launcher_set_stdin_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---
		subprocess_launcher_set_stdout_file_path :: proc(self: ^SubprocessLauncher, path: cstring) ---
		subprocess_launcher_setenv :: proc(self: ^SubprocessLauncher, variable: cstring, value: cstring, overwrite: glib.boolean) ---
		subprocess_launcher_spawn :: proc(self: ^SubprocessLauncher, error: ^^glib.Error, argv0: cstring, #c_vararg var_args: ..any) -> ^Subprocess ---
		subprocess_launcher_spawnv :: proc(self: ^SubprocessLauncher, argv: ^cstring, error: ^^glib.Error) -> ^Subprocess ---
		subprocess_launcher_take_fd :: proc(self: ^SubprocessLauncher, source_fd: glib.int_, target_fd: glib.int_) ---
		subprocess_launcher_take_stderr_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---
		subprocess_launcher_take_stdin_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---
		subprocess_launcher_take_stdout_fd :: proc(self: ^SubprocessLauncher, fd: glib.int_) ---
		subprocess_launcher_unsetenv :: proc(self: ^SubprocessLauncher, variable: cstring) ---
		subprocess_new :: proc(flags: SubprocessFlags, error: ^^glib.Error, argv0: cstring, #c_vararg var_args: ..any) -> ^Subprocess ---
		subprocess_newv :: proc(argv: ^cstring, flags: SubprocessFlags, error: ^^glib.Error) -> ^Subprocess ---
		subprocess_send_signal :: proc(subprocess: ^Subprocess, signal_num: glib.int_) ---
		subprocess_wait :: proc(subprocess: ^Subprocess, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		subprocess_wait_async :: proc(subprocess: ^Subprocess, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		subprocess_wait_check :: proc(subprocess: ^Subprocess, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		subprocess_wait_check_async :: proc(subprocess: ^Subprocess, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		subprocess_wait_check_finish :: proc(subprocess: ^Subprocess, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		subprocess_wait_finish :: proc(subprocess: ^Subprocess, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		task_attach_source :: proc(task: ^Task, source: ^glib.Source, callback: glib.SourceFunc) ---
		task_get_cancellable :: proc(task: ^Task) -> ^Cancellable ---
		task_get_check_cancellable :: proc(task: ^Task) -> glib.boolean ---
		task_get_completed :: proc(task: ^Task) -> glib.boolean ---
		task_get_context :: proc(task: ^Task) -> ^glib.MainContext ---
		task_get_name :: proc(task: ^Task) -> cstring ---
		task_get_priority :: proc(task: ^Task) -> glib.int_ ---
		task_get_return_on_cancel :: proc(task: ^Task) -> glib.boolean ---
		task_get_source_object :: proc(task: ^Task) -> glib.pointer ---
		task_get_source_tag :: proc(task: ^Task) -> glib.pointer ---
		task_get_task_data :: proc(task: ^Task) -> glib.pointer ---
		task_get_type :: proc() -> gobj.Type ---
		task_get_type :: proc() -> gobj.Type ---
		task_had_error :: proc(task: ^Task) -> glib.boolean ---
		task_is_valid :: proc(result: glib.pointer, source_object: glib.pointer) -> glib.boolean ---
		task_new :: proc(source_object: glib.pointer, cancellable: ^Cancellable, callback: AsyncReadyCallback, callback_data: glib.pointer) -> ^Task ---
		task_print_alive_tasks :: proc() ---
		task_propagate_boolean :: proc(task: ^Task, error: ^^glib.Error) -> glib.boolean ---
		task_propagate_int :: proc(task: ^Task, error: ^^glib.Error) -> glib.ssize ---
		task_propagate_pointer :: proc(task: ^Task, error: ^^glib.Error) -> glib.pointer ---
		task_propagate_value :: proc(task: ^Task, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean ---
		task_report_error :: proc(source_object: glib.pointer, callback: AsyncReadyCallback, callback_data: glib.pointer, source_tag: glib.pointer, error: ^glib.Error) ---
		task_report_new_error :: proc(source_object: glib.pointer, callback: AsyncReadyCallback, callback_data: glib.pointer, source_tag: glib.pointer, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---
		task_return_boolean :: proc(task: ^Task, result: glib.boolean) ---
		task_return_error :: proc(task: ^Task, error: ^glib.Error) ---
		task_return_error_if_cancelled :: proc(task: ^Task) -> glib.boolean ---
		task_return_int :: proc(task: ^Task, result: glib.ssize) ---
		task_return_new_error :: proc(task: ^Task, domain: glib.Quark, code: glib.int_, format: cstring, #c_vararg var_args: ..any) ---
		task_return_new_error_literal :: proc(task: ^Task, domain: glib.Quark, code: glib.int_, message: cstring) ---
		task_return_pointer :: proc(task: ^Task, result: glib.pointer, result_destroy: glib.DestroyNotify) ---
		task_return_prefixed_error :: proc(task: ^Task, error: ^glib.Error, format: cstring, #c_vararg var_args: ..any) ---
		task_return_value :: proc(task: ^Task, result: ^gobj.Value) ---
		task_run_in_thread :: proc(task: ^Task, task_func: TaskThreadFunc) ---
		task_run_in_thread_sync :: proc(task: ^Task, task_func: TaskThreadFunc) ---
		task_set_check_cancellable :: proc(task: ^Task, check_cancellable: glib.boolean) ---
		task_set_name :: proc(task: ^Task, name: cstring) ---
		task_set_priority :: proc(task: ^Task, priority: glib.int_) ---
		task_set_return_on_cancel :: proc(task: ^Task, return_on_cancel: glib.boolean) -> glib.boolean ---
		task_set_source_tag :: proc(task: ^Task, source_tag: glib.pointer) ---
		task_set_static_name :: proc(task: ^Task, name: cstring) ---
		task_set_task_data :: proc(task: ^Task, task_data: glib.pointer, task_data_destroy: glib.DestroyNotify) ---
		tcp_connection_get_graceful_disconnect :: proc(connection: ^TcpConnection) -> glib.boolean ---
		tcp_connection_get_type :: proc() -> gobj.Type ---
		tcp_connection_get_type :: proc() -> gobj.Type ---
		tcp_connection_set_graceful_disconnect :: proc(connection: ^TcpConnection, graceful_disconnect: glib.boolean) ---
		tcp_wrapper_connection_get_base_io_stream :: proc(conn: ^TcpWrapperConnection) -> ^IOStream ---
		tcp_wrapper_connection_get_type :: proc() -> gobj.Type ---
		tcp_wrapper_connection_get_type :: proc() -> gobj.Type ---
		tcp_wrapper_connection_new :: proc(base_io_stream: ^IOStream, socket: ^Socket) -> ^SocketConnection ---
		test_dbus_add_service_dir :: proc(self: ^TestDBus, path: cstring) ---
		test_dbus_down :: proc(self: ^TestDBus) ---
		test_dbus_flags_get_type :: proc() -> gobj.Type ---
		test_dbus_flags_get_type :: proc() -> gobj.Type ---
		test_dbus_get_bus_address :: proc(self: ^TestDBus) -> cstring ---
		test_dbus_get_flags :: proc(self: ^TestDBus) -> TestDBusFlags ---
		test_dbus_get_type :: proc() -> gobj.Type ---
		test_dbus_get_type :: proc() -> gobj.Type ---
		test_dbus_new :: proc(flags: TestDBusFlags) -> ^TestDBus ---
		test_dbus_stop :: proc(self: ^TestDBus) ---
		test_dbus_unset :: proc() ---
		test_dbus_up :: proc(self: ^TestDBus) ---
		themed_icon_append_name :: proc(icon: ^ThemedIcon, iconname: cstring) ---
		themed_icon_get_names :: proc(icon: ^ThemedIcon) -> ^cstring ---
		themed_icon_get_type :: proc() -> gobj.Type ---
		themed_icon_get_type :: proc() -> gobj.Type ---
		themed_icon_new :: proc(iconname: cstring) -> ^Icon ---
		themed_icon_new_from_names :: proc(iconnames: [^]cstring, len: i32) -> ^Icon ---
		themed_icon_new_with_default_fallbacks :: proc(iconname: cstring) -> ^Icon ---
		themed_icon_prepend_name :: proc(icon: ^ThemedIcon, iconname: cstring) ---
		threaded_socket_service_get_type :: proc() -> gobj.Type ---
		threaded_socket_service_get_type :: proc() -> gobj.Type ---
		threaded_socket_service_new :: proc(max_threads: i32) -> ^SocketService ---
		tls_authentication_mode_get_type :: proc() -> gobj.Type ---
		tls_authentication_mode_get_type :: proc() -> gobj.Type ---
		tls_backend_get_certificate_type :: proc(backend: ^TlsBackend) -> gobj.Type ---
		tls_backend_get_client_connection_type :: proc(backend: ^TlsBackend) -> gobj.Type ---
		tls_backend_get_default :: proc() -> ^TlsBackend ---
		tls_backend_get_default_database :: proc(backend: ^TlsBackend) -> ^TlsDatabase ---
		tls_backend_get_dtls_client_connection_type :: proc(backend: ^TlsBackend) -> gobj.Type ---
		tls_backend_get_dtls_server_connection_type :: proc(backend: ^TlsBackend) -> gobj.Type ---
		tls_backend_get_file_database_type :: proc(backend: ^TlsBackend) -> gobj.Type ---
		tls_backend_get_server_connection_type :: proc(backend: ^TlsBackend) -> gobj.Type ---
		tls_backend_get_type :: proc() -> gobj.Type ---
		tls_backend_get_type :: proc() -> gobj.Type ---
		tls_backend_set_default_database :: proc(backend: ^TlsBackend, database: ^TlsDatabase) ---
		tls_backend_supports_dtls :: proc(backend: ^TlsBackend) -> glib.boolean ---
		tls_backend_supports_tls :: proc(backend: ^TlsBackend) -> glib.boolean ---
		tls_certificate_flags_get_type :: proc() -> gobj.Type ---
		tls_certificate_flags_get_type :: proc() -> gobj.Type ---
		tls_certificate_get_dns_names :: proc(cert: ^TlsCertificate) -> ^glib.PtrArray ---
		tls_certificate_get_ip_addresses :: proc(cert: ^TlsCertificate) -> ^glib.PtrArray ---
		tls_certificate_get_issuer :: proc(cert: ^TlsCertificate) -> ^TlsCertificate ---
		tls_certificate_get_issuer_name :: proc(cert: ^TlsCertificate) -> cstring ---
		tls_certificate_get_not_valid_after :: proc(cert: ^TlsCertificate) -> ^glib.DateTime ---
		tls_certificate_get_not_valid_before :: proc(cert: ^TlsCertificate) -> ^glib.DateTime ---
		tls_certificate_get_subject_name :: proc(cert: ^TlsCertificate) -> cstring ---
		tls_certificate_get_type :: proc() -> gobj.Type ---
		tls_certificate_get_type :: proc() -> gobj.Type ---
		tls_certificate_is_same :: proc(cert_one: ^TlsCertificate, cert_two: ^TlsCertificate) -> glib.boolean ---
		tls_certificate_list_new_from_file :: proc(file: cstring, error: ^^glib.Error) -> ^glib.List ---
		tls_certificate_new_from_file :: proc(file: cstring, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_certificate_new_from_file_with_password :: proc(file: cstring, password: cstring, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_certificate_new_from_files :: proc(cert_file: cstring, key_file: cstring, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_certificate_new_from_pem :: proc(data: cstring, length: glib.ssize, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_certificate_new_from_pkcs11_uris :: proc(pkcs11_uri: cstring, private_key_pkcs11_uri: cstring, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_certificate_new_from_pkcs12 :: proc(data: ^glib.uint8, length: glib.size, password: cstring, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_certificate_request_flags_get_type :: proc() -> gobj.Type ---
		tls_certificate_request_flags_get_type :: proc() -> gobj.Type ---
		tls_certificate_verify :: proc(cert: ^TlsCertificate, identity: ^SocketConnectable, trusted_ca: ^TlsCertificate) -> TlsCertificateFlags ---
		tls_channel_binding_error_get_type :: proc() -> gobj.Type ---
		tls_channel_binding_error_get_type :: proc() -> gobj.Type ---
		tls_channel_binding_error_quark :: proc() -> glib.Quark ---
		tls_channel_binding_error_quark :: proc() -> glib.Quark ---
		tls_channel_binding_type_get_type :: proc() -> gobj.Type ---
		tls_channel_binding_type_get_type :: proc() -> gobj.Type ---
		tls_client_connection_copy_session_state :: proc(conn: ^TlsClientConnection, source: ^TlsClientConnection) ---
		tls_client_connection_get_accepted_cas :: proc(conn: ^TlsClientConnection) -> ^glib.List ---
		tls_client_connection_get_server_identity :: proc(conn: ^TlsClientConnection) -> ^SocketConnectable ---
		tls_client_connection_get_type :: proc() -> gobj.Type ---
		tls_client_connection_get_type :: proc() -> gobj.Type ---
		tls_client_connection_get_use_ssl3 :: proc(conn: ^TlsClientConnection) -> glib.boolean ---
		tls_client_connection_get_validation_flags :: proc(conn: ^TlsClientConnection) -> TlsCertificateFlags ---
		tls_client_connection_new :: proc(base_io_stream: ^IOStream, server_identity: ^SocketConnectable, error: ^^glib.Error) -> ^IOStream ---
		tls_client_connection_set_server_identity :: proc(conn: ^TlsClientConnection, identity: ^SocketConnectable) ---
		tls_client_connection_set_use_ssl3 :: proc(conn: ^TlsClientConnection, use_ssl3: glib.boolean) ---
		tls_client_connection_set_validation_flags :: proc(conn: ^TlsClientConnection, flags: TlsCertificateFlags) ---
		tls_connection_emit_accept_certificate :: proc(conn: ^TlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean ---
		tls_connection_get_certificate :: proc(conn: ^TlsConnection) -> ^TlsCertificate ---
		tls_connection_get_channel_binding_data :: proc(conn: ^TlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean ---
		tls_connection_get_ciphersuite_name :: proc(conn: ^TlsConnection) -> cstring ---
		tls_connection_get_database :: proc(conn: ^TlsConnection) -> ^TlsDatabase ---
		tls_connection_get_interaction :: proc(conn: ^TlsConnection) -> ^TlsInteraction ---
		tls_connection_get_negotiated_protocol :: proc(conn: ^TlsConnection) -> cstring ---
		tls_connection_get_peer_certificate :: proc(conn: ^TlsConnection) -> ^TlsCertificate ---
		tls_connection_get_peer_certificate_errors :: proc(conn: ^TlsConnection) -> TlsCertificateFlags ---
		tls_connection_get_protocol_version :: proc(conn: ^TlsConnection) -> TlsProtocolVersion ---
		tls_connection_get_rehandshake_mode :: proc(conn: ^TlsConnection) -> TlsRehandshakeMode ---
		tls_connection_get_require_close_notify :: proc(conn: ^TlsConnection) -> glib.boolean ---
		tls_connection_get_type :: proc() -> gobj.Type ---
		tls_connection_get_type :: proc() -> gobj.Type ---
		tls_connection_get_use_system_certdb :: proc(conn: ^TlsConnection) -> glib.boolean ---
		tls_connection_handshake :: proc(conn: ^TlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		tls_connection_handshake_async :: proc(conn: ^TlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		tls_connection_handshake_finish :: proc(conn: ^TlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		tls_connection_set_advertised_protocols :: proc(conn: ^TlsConnection, protocols: [^]cstring) ---
		tls_connection_set_certificate :: proc(conn: ^TlsConnection, certificate: ^TlsCertificate) ---
		tls_connection_set_database :: proc(conn: ^TlsConnection, database: ^TlsDatabase) ---
		tls_connection_set_interaction :: proc(conn: ^TlsConnection, interaction: ^TlsInteraction) ---
		tls_connection_set_rehandshake_mode :: proc(conn: ^TlsConnection, mode: TlsRehandshakeMode) ---
		tls_connection_set_require_close_notify :: proc(conn: ^TlsConnection, require_close_notify: glib.boolean) ---
		tls_connection_set_use_system_certdb :: proc(conn: ^TlsConnection, use_system_certdb: glib.boolean) ---
		tls_database_create_certificate_handle :: proc(self: ^TlsDatabase, certificate: ^TlsCertificate) -> cstring ---
		tls_database_get_type :: proc() -> gobj.Type ---
		tls_database_get_type :: proc() -> gobj.Type ---
		tls_database_lookup_certificate_for_handle :: proc(self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_database_lookup_certificate_for_handle_async :: proc(self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		tls_database_lookup_certificate_for_handle_finish :: proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_database_lookup_certificate_issuer :: proc(self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_database_lookup_certificate_issuer_async :: proc(self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		tls_database_lookup_certificate_issuer_finish :: proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate ---
		tls_database_lookup_certificates_issued_by :: proc(self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List ---
		tls_database_lookup_certificates_issued_by_async :: proc(self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		tls_database_lookup_certificates_issued_by_finish :: proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List ---
		tls_database_lookup_flags_get_type :: proc() -> gobj.Type ---
		tls_database_lookup_flags_get_type :: proc() -> gobj.Type ---
		tls_database_verify_chain :: proc(self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsCertificateFlags ---
		tls_database_verify_chain_async :: proc(self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		tls_database_verify_chain_finish :: proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> TlsCertificateFlags ---
		tls_database_verify_flags_get_type :: proc() -> gobj.Type ---
		tls_database_verify_flags_get_type :: proc() -> gobj.Type ---
		tls_error_get_type :: proc() -> gobj.Type ---
		tls_error_get_type :: proc() -> gobj.Type ---
		tls_error_quark :: proc() -> glib.Quark ---
		tls_error_quark :: proc() -> glib.Quark ---
		tls_file_database_get_type :: proc() -> gobj.Type ---
		tls_file_database_get_type :: proc() -> gobj.Type ---
		tls_file_database_new :: proc(anchors: cstring, error: ^^glib.Error) -> ^TlsDatabase ---
		tls_interaction_ask_password :: proc(interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult ---
		tls_interaction_ask_password_async :: proc(interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		tls_interaction_ask_password_finish :: proc(interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult ---
		tls_interaction_get_type :: proc() -> gobj.Type ---
		tls_interaction_get_type :: proc() -> gobj.Type ---
		tls_interaction_invoke_ask_password :: proc(interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult ---
		tls_interaction_invoke_request_certificate :: proc(interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult ---
		tls_interaction_request_certificate :: proc(interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult ---
		tls_interaction_request_certificate_async :: proc(interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		tls_interaction_request_certificate_finish :: proc(interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult ---
		tls_interaction_result_get_type :: proc() -> gobj.Type ---
		tls_interaction_result_get_type :: proc() -> gobj.Type ---
		tls_password_flags_get_type :: proc() -> gobj.Type ---
		tls_password_flags_get_type :: proc() -> gobj.Type ---
		tls_password_get_description :: proc(password: ^TlsPassword) -> cstring ---
		tls_password_get_flags :: proc(password: ^TlsPassword) -> TlsPasswordFlags ---
		tls_password_get_type :: proc() -> gobj.Type ---
		tls_password_get_type :: proc() -> gobj.Type ---
		tls_password_get_value :: proc(password: ^TlsPassword, length: ^glib.size) -> ^glib.uchar ---
		tls_password_get_warning :: proc(password: ^TlsPassword) -> cstring ---
		tls_password_new :: proc(flags: TlsPasswordFlags, description: cstring) -> ^TlsPassword ---
		tls_password_set_description :: proc(password: ^TlsPassword, description: cstring) ---
		tls_password_set_flags :: proc(password: ^TlsPassword, flags: TlsPasswordFlags) ---
		tls_password_set_value :: proc(password: ^TlsPassword, value: ^glib.uchar, length: glib.ssize) ---
		tls_password_set_value_full :: proc(password: ^TlsPassword, value: ^glib.uchar, length: glib.ssize, destroy: glib.DestroyNotify) ---
		tls_password_set_warning :: proc(password: ^TlsPassword, warning: cstring) ---
		tls_protocol_version_get_type :: proc() -> gobj.Type ---
		tls_protocol_version_get_type :: proc() -> gobj.Type ---
		tls_rehandshake_mode_get_type :: proc() -> gobj.Type ---
		tls_rehandshake_mode_get_type :: proc() -> gobj.Type ---
		tls_server_connection_get_type :: proc() -> gobj.Type ---
		tls_server_connection_get_type :: proc() -> gobj.Type ---
		tls_server_connection_new :: proc(base_io_stream: ^IOStream, certificate: ^TlsCertificate, error: ^^glib.Error) -> ^IOStream ---
		unix_connection_get_type :: proc() -> gobj.Type ---
		unix_connection_get_type :: proc() -> gobj.Type ---
		unix_connection_receive_credentials :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Credentials ---
		unix_connection_receive_credentials_async :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		unix_connection_receive_credentials_finish :: proc(connection: ^UnixConnection, result: ^AsyncResult, error: ^^glib.Error) -> ^Credentials ---
		unix_connection_receive_fd :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_ ---
		unix_connection_send_credentials :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		unix_connection_send_credentials_async :: proc(connection: ^UnixConnection, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		unix_connection_send_credentials_finish :: proc(connection: ^UnixConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		unix_connection_send_fd :: proc(connection: ^UnixConnection, fd: glib.int_, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean ---
		unix_credentials_message_get_credentials :: proc(message: ^UnixCredentialsMessage) -> ^Credentials ---
		unix_credentials_message_get_type :: proc() -> gobj.Type ---
		unix_credentials_message_get_type :: proc() -> gobj.Type ---
		unix_credentials_message_is_supported :: proc() -> glib.boolean ---
		unix_credentials_message_new :: proc() -> ^SocketControlMessage ---
		unix_credentials_message_new_with_credentials :: proc(credentials: ^Credentials) -> ^SocketControlMessage ---
		unix_fd_list_append :: proc(list: ^UnixFDList, fd: glib.int_, error: ^^glib.Error) -> glib.int_ ---
		unix_fd_list_get :: proc(list: ^UnixFDList, index_: glib.int_, error: ^^glib.Error) -> glib.int_ ---
		unix_fd_list_get_length :: proc(list: ^UnixFDList) -> glib.int_ ---
		unix_fd_list_get_type :: proc() -> gobj.Type ---
		unix_fd_list_get_type :: proc() -> gobj.Type ---
		unix_fd_list_new :: proc() -> ^UnixFDList ---
		unix_fd_list_new_from_array :: proc(fds: [^]glib.int_, n_fds: glib.int_) -> ^UnixFDList ---
		unix_fd_list_peek_fds :: proc(list: ^UnixFDList, length: ^glib.int_) -> ^glib.int_ ---
		unix_fd_list_steal_fds :: proc(list: ^UnixFDList, length: ^glib.int_) -> ^glib.int_ ---
		unix_socket_address_abstract_names_supported :: proc() -> glib.boolean ---
		unix_socket_address_get_address_type :: proc(address: ^UnixSocketAddress) -> UnixSocketAddressType ---
		unix_socket_address_get_is_abstract :: proc(address: ^UnixSocketAddress) -> glib.boolean ---
		unix_socket_address_get_path :: proc(address: ^UnixSocketAddress) -> cstring ---
		unix_socket_address_get_path_len :: proc(address: ^UnixSocketAddress) -> glib.size ---
		unix_socket_address_get_type :: proc() -> gobj.Type ---
		unix_socket_address_get_type :: proc() -> gobj.Type ---
		unix_socket_address_new :: proc(path: cstring) -> ^SocketAddress ---
		unix_socket_address_new_abstract :: proc(path: cstring, path_len: glib.int_) -> ^SocketAddress ---
		unix_socket_address_new_with_type :: proc(path: cstring, path_len: glib.int_, type: UnixSocketAddressType) -> ^SocketAddress ---
		unix_socket_address_type_get_type :: proc() -> gobj.Type ---
		unix_socket_address_type_get_type :: proc() -> gobj.Type ---
		vfs_get_default :: proc() -> ^Vfs ---
		vfs_get_file_for_path :: proc(vfs: ^Vfs, path: cstring) -> ^File ---
		vfs_get_file_for_uri :: proc(vfs: ^Vfs, uri: cstring) -> ^File ---
		vfs_get_local :: proc() -> ^Vfs ---
		vfs_get_supported_uri_schemes :: proc(vfs: ^Vfs) -> ^cstring ---
		vfs_get_type :: proc() -> gobj.Type ---
		vfs_get_type :: proc() -> gobj.Type ---
		vfs_is_active :: proc(vfs: ^Vfs) -> glib.boolean ---
		vfs_parse_name :: proc(vfs: ^Vfs, parse_name: cstring) -> ^File ---
		vfs_register_uri_scheme :: proc(vfs: ^Vfs, scheme: cstring, uri_func: VfsFileLookupFunc, uri_data: glib.pointer, uri_destroy: glib.DestroyNotify, parse_name_func: VfsFileLookupFunc, parse_name_data: glib.pointer, parse_name_destroy: glib.DestroyNotify) -> glib.boolean ---
		vfs_unregister_uri_scheme :: proc(vfs: ^Vfs, scheme: cstring) -> glib.boolean ---
		volume_can_eject :: proc(volume: ^Volume) -> glib.boolean ---
		volume_can_mount :: proc(volume: ^Volume) -> glib.boolean ---
		volume_eject :: proc(volume: ^Volume, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		volume_eject_finish :: proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		volume_eject_with_operation :: proc(volume: ^Volume, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		volume_eject_with_operation_finish :: proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		volume_enumerate_identifiers :: proc(volume: ^Volume) -> ^cstring ---
		volume_get_activation_root :: proc(volume: ^Volume) -> ^File ---
		volume_get_drive :: proc(volume: ^Volume) -> ^Drive ---
		volume_get_icon :: proc(volume: ^Volume) -> ^Icon ---
		volume_get_identifier :: proc(volume: ^Volume, kind: cstring) -> cstring ---
		volume_get_mount :: proc(volume: ^Volume) -> ^Mount ---
		volume_get_name :: proc(volume: ^Volume) -> cstring ---
		volume_get_sort_key :: proc(volume: ^Volume) -> cstring ---
		volume_get_symbolic_icon :: proc(volume: ^Volume) -> ^Icon ---
		volume_get_type :: proc() -> gobj.Type ---
		volume_get_type :: proc() -> gobj.Type ---
		volume_get_uuid :: proc(volume: ^Volume) -> cstring ---
		volume_monitor_adopt_orphan_mount :: proc(mount: ^Mount) -> ^Volume ---
		volume_monitor_get :: proc() -> ^VolumeMonitor ---
		volume_monitor_get_connected_drives :: proc(volume_monitor: ^VolumeMonitor) -> ^glib.List ---
		volume_monitor_get_mount_for_uuid :: proc(volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Mount ---
		volume_monitor_get_mounts :: proc(volume_monitor: ^VolumeMonitor) -> ^glib.List ---
		volume_monitor_get_type :: proc() -> gobj.Type ---
		volume_monitor_get_type :: proc() -> gobj.Type ---
		volume_monitor_get_volume_for_uuid :: proc(volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Volume ---
		volume_monitor_get_volumes :: proc(volume_monitor: ^VolumeMonitor) -> ^glib.List ---
		volume_mount :: proc(volume: ^Volume, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer) ---
		volume_mount_finish :: proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		volume_should_automount :: proc(volume: ^Volume) -> glib.boolean ---
		zlib_compressor_format_get_type :: proc() -> gobj.Type ---
		zlib_compressor_format_get_type :: proc() -> gobj.Type ---
		zlib_compressor_get_file_info :: proc(compressor: ^ZlibCompressor) -> ^FileInfo ---
		zlib_compressor_get_type :: proc() -> gobj.Type ---
		zlib_compressor_get_type :: proc() -> gobj.Type ---
		zlib_compressor_new :: proc(format: ZlibCompressorFormat, level: i32) -> ^ZlibCompressor ---
		zlib_compressor_set_file_info :: proc(compressor: ^ZlibCompressor, file_info: ^FileInfo) ---
		zlib_decompressor_get_file_info :: proc(decompressor: ^ZlibDecompressor) -> ^FileInfo ---
		zlib_decompressor_get_type :: proc() -> gobj.Type ---
		zlib_decompressor_get_type :: proc() -> gobj.Type ---
		zlib_decompressor_new :: proc(format: ZlibCompressorFormat) -> ^ZlibDecompressor ---

	types
		Action :: struct #packed {}
		ActionEntry :: struct {name: cstring, activate: activate_func_ptr_anon_25, parameter_type: cstring, state: cstring, change_state: change_state_func_ptr_anon_26, padding: [3]glib.size}
		ActionGroup :: struct #packed {}
		ActionGroupInterface :: struct {g_iface: gobj.TypeInterface, has_action: has_action_func_ptr_anon_8, list_actions: list_actions_func_ptr_anon_9, get_action_enabled: et_action_enabled_func_ptr_anon_10, get_action_parameter_type: et_action_parameter_type_func_ptr_anon_11, get_action_state_type: et_action_state_type_func_ptr_anon_12, get_action_state_hint: et_action_state_hint_func_ptr_anon_13, get_action_state: et_action_state_func_ptr_anon_14, change_action_state: change_action_state_func_ptr_anon_15, activate_action: activate_action_func_ptr_anon_16, action_added: action_added_func_ptr_anon_17, action_removed: action_removed_func_ptr_anon_18, action_enabled_changed: action_enabled_changed_func_ptr_anon_19, action_state_changed: action_state_changed_func_ptr_anon_20, query_action: query_action_func_ptr_anon_21}
		ActionInterface :: struct {g_iface: gobj.TypeInterface, get_name: et_name_func_ptr_anon_0, get_parameter_type: et_parameter_type_func_ptr_anon_1, get_state_type: et_state_type_func_ptr_anon_2, get_state_hint: et_state_hint_func_ptr_anon_3, get_enabled: et_enabled_func_ptr_anon_4, get_state: et_state_func_ptr_anon_5, change_state: change_state_func_ptr_anon_6, activate: activate_func_ptr_anon_7}
		ActionMap :: struct #packed {}
		ActionMapInterface :: struct {g_iface: gobj.TypeInterface, lookup_action: lookup_action_func_ptr_anon_22, add_action: add_action_func_ptr_anon_23, remove_action: remove_action_func_ptr_anon_24}
		AppInfo :: struct #packed {}
		AppInfoCreateFlags :: bit_set[AppInfoCreateFlagsBit]
		AppInfoCreateFlagsBit :: enum u32 {NEEDS_TERMINAL = 0, SUPPORTS_URIS = 1, SUPPORTS_STARTUP_NOTIFICATION = 2}
		AppInfoIface :: struct {g_iface: gobj.TypeInterface, dup: dup_func_ptr_anon_27, equal: equal_func_ptr_anon_28, get_id: et_id_func_ptr_anon_29, get_name: et_name_func_ptr_anon_30, get_description: et_description_func_ptr_anon_31, get_executable: et_executable_func_ptr_anon_32, get_icon: et_icon_func_ptr_anon_33, launch: launch_func_ptr_anon_34, supports_uris: supports_uris_func_ptr_anon_35, supports_files: supports_files_func_ptr_anon_36, launch_uris: launch_uris_func_ptr_anon_37, should_show: should_show_func_ptr_anon_38, set_as_default_for_type: set_as_default_for_type_func_ptr_anon_39, set_as_default_for_extension: set_as_default_for_extension_func_ptr_anon_40, add_supports_type: add_supports_type_func_ptr_anon_41, can_remove_supports_type: can_remove_supports_type_func_ptr_anon_42, remove_supports_type: remove_supports_type_func_ptr_anon_43, can_delete: can_delete_func_ptr_anon_44, do_delete: do_delete_func_ptr_anon_45, get_commandline: et_commandline_func_ptr_anon_46, get_display_name: et_display_name_func_ptr_anon_47, set_as_last_used_for_type: set_as_last_used_for_type_func_ptr_anon_48, get_supported_types: et_supported_types_func_ptr_anon_49, launch_uris_async: launch_uris_async_func_ptr_anon_50, launch_uris_finish: launch_uris_finish_func_ptr_anon_51}
		AppInfoMonitor :: struct #packed {}
		AppLaunchContext :: struct {parent_instance: gobj.Object, priv: ^AppLaunchContextPrivate}
		AppLaunchContextClass :: struct {parent_class: gobj.ObjectClass, get_display: et_display_func_ptr_anon_52, get_startup_notify_id: et_startup_notify_id_func_ptr_anon_53, launch_failed: launch_failed_func_ptr_anon_54, launched: launched_func_ptr_anon_55, launch_started: launch_started_func_ptr_anon_56, _g_reserved1: _g_reserved1_func_ptr_anon_57, _g_reserved2: _g_reserved2_func_ptr_anon_58, _g_reserved3: _g_reserved3_func_ptr_anon_59}
		AppLaunchContextPrivate :: struct #packed {}
		Application :: struct {parent_instance: gobj.Object, priv: ^ApplicationPrivate}
		ApplicationClass :: struct {parent_class: gobj.ObjectClass, startup: startup_func_ptr_anon_60, activate: activate_func_ptr_anon_61, open: open_func_ptr_anon_62, command_line: command_line_func_ptr_anon_63, local_command_line: local_command_line_func_ptr_anon_64, before_emit: before_emit_func_ptr_anon_65, after_emit: after_emit_func_ptr_anon_66, add_platform_data: add_platform_data_func_ptr_anon_67, quit_mainloop: quit_mainloop_func_ptr_anon_68, run_mainloop: run_mainloop_func_ptr_anon_69, shutdown: shutdown_func_ptr_anon_70, dbus_register: dbus_register_func_ptr_anon_71, dbus_unregister: dbus_unregister_func_ptr_anon_72, handle_local_options: handle_local_options_func_ptr_anon_73, name_lost: name_lost_func_ptr_anon_74, padding: [7]glib.pointer}
		ApplicationCommandLine :: struct {parent_instance: gobj.Object, priv: ^ApplicationCommandLinePrivate}
		ApplicationCommandLineClass :: struct {parent_class: gobj.ObjectClass, print_literal: print_literal_func_ptr_anon_75, printerr_literal: printerr_literal_func_ptr_anon_76, get_stdin: et_stdin_func_ptr_anon_77, done: done_func_ptr_anon_78, padding: [10]glib.pointer}
		ApplicationCommandLinePrivate :: struct #packed {}
		ApplicationFlags :: bit_set[ApplicationFlagsBit]
		ApplicationFlagsBit :: enum u32 {APPLICATION_IS_SERVICE = 0, APPLICATION_IS_LAUNCHER = 1, APPLICATION_HANDLES_OPEN = 2, APPLICATION_HANDLES_COMMAND_LINE = 3, APPLICATION_SEND_ENVIRONMENT = 4, APPLICATION_NON_UNIQUE = 5, APPLICATION_CAN_OVERRIDE_APP_ID = 6, APPLICATION_ALLOW_REPLACEMENT = 7, APPLICATION_REPLACE = 8}
		ApplicationPrivate :: struct #packed {}
		AskPasswordFlags :: bit_set[AskPasswordFlagsBit]
		AskPasswordFlagsBit :: enum u32 {NEED_PASSWORD = 0, NEED_USERNAME = 1, NEED_DOMAIN = 2, SAVING_SUPPORTED = 3, ANONYMOUS_SUPPORTED = 4, TCRYPT = 5}
		AsyncInitable :: struct #packed {}
		AsyncInitableIface :: struct {g_iface: gobj.TypeInterface, init_async: init_async_func_ptr_anon_80, init_finish: init_finish_func_ptr_anon_81}
		AsyncReadyCallback :: #type proc(source_object: ^gobj.Object, res: ^AsyncResult, data: glib.pointer)
		AsyncResult :: struct #packed {}
		AsyncResultIface :: struct {g_iface: gobj.TypeInterface, get_user_data: et_user_data_func_ptr_anon_82, get_source_object: et_source_object_func_ptr_anon_83, is_tagged: is_tagged_func_ptr_anon_84}
		BufferedInputStream :: struct {parent_instance: FilterInputStream, priv: ^BufferedInputStreamPrivate}
		BufferedInputStreamClass :: struct {parent_class: FilterInputStreamClass, fill: fill_func_ptr_anon_102, fill_async: fill_async_func_ptr_anon_103, fill_finish: fill_finish_func_ptr_anon_104, _g_reserved1: _g_reserved1_func_ptr_anon_105, _g_reserved2: _g_reserved2_func_ptr_anon_106, _g_reserved3: _g_reserved3_func_ptr_anon_107, _g_reserved4: _g_reserved4_func_ptr_anon_108, _g_reserved5: _g_reserved5_func_ptr_anon_109}
		BufferedInputStreamPrivate :: struct #packed {}
		BufferedOutputStream :: struct {parent_instance: FilterOutputStream, priv: ^BufferedOutputStreamPrivate}
		BufferedOutputStreamClass :: struct {parent_class: FilterOutputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_133, _g_reserved2: _g_reserved2_func_ptr_anon_134}
		BufferedOutputStreamPrivate :: struct #packed {}
		BusAcquiredCallback :: #type proc(connection: ^DBusConnection, name: cstring, user_data: glib.pointer)
		BusNameAcquiredCallback :: #type proc(connection: ^DBusConnection, name: cstring, user_data: glib.pointer)
		BusNameAppearedCallback :: #type proc(connection: ^DBusConnection, name: cstring, name_owner: cstring, user_data: glib.pointer)
		BusNameLostCallback :: #type proc(connection: ^DBusConnection, name: cstring, user_data: glib.pointer)
		BusNameOwnerFlags :: bit_set[BusNameOwnerFlagsBit]
		BusNameOwnerFlagsBit :: enum u32 {ALLOW_REPLACEMENT = 0, REPLACE = 1, DO_NOT_QUEUE = 2}
		BusNameVanishedCallback :: #type proc(connection: ^DBusConnection, name: cstring, user_data: glib.pointer)
		BusNameWatcherFlags :: bit_set[BusNameWatcherFlagsBit]
		BusNameWatcherFlagsBit :: enum u32 {AUTO_START = 0}
		BusType :: enum i32 {STARTER = -1, NONE = 0, SYSTEM = 1, SESSION = 2}
		BytesIcon :: struct #packed {}
		Cancellable :: struct {parent_instance: gobj.Object, priv: ^CancellablePrivate}
		CancellableClass :: struct {parent_class: gobj.ObjectClass, cancelled: cancelled_func_ptr_anon_135, _g_reserved1: _g_reserved1_func_ptr_anon_136, _g_reserved2: _g_reserved2_func_ptr_anon_137, _g_reserved3: _g_reserved3_func_ptr_anon_138, _g_reserved4: _g_reserved4_func_ptr_anon_139, _g_reserved5: _g_reserved5_func_ptr_anon_140}
		CancellablePrivate :: struct #packed {}
		CancellableSourceFunc :: #type proc(cancellable: ^Cancellable, data: glib.pointer) -> glib.boolean
		CharsetConverter :: struct #packed {}
		CharsetConverterClass :: struct {parent_class: gobj.ObjectClass}
		Converter :: struct #packed {}
		ConverterFlags :: bit_set[ConverterFlagsBit]
		ConverterFlagsBit :: enum u32 {INPUT_AT_END = 0, FLUSH = 1}
		ConverterIface :: struct {g_iface: gobj.TypeInterface, convert: convert_func_ptr_anon_141, reset: reset_func_ptr_anon_142}
		ConverterInputStream :: struct {parent_instance: FilterInputStream, priv: ^ConverterInputStreamPrivate}
		ConverterInputStreamClass :: struct {parent_class: FilterInputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_143, _g_reserved2: _g_reserved2_func_ptr_anon_144, _g_reserved3: _g_reserved3_func_ptr_anon_145, _g_reserved4: _g_reserved4_func_ptr_anon_146, _g_reserved5: _g_reserved5_func_ptr_anon_147}
		ConverterInputStreamPrivate :: struct #packed {}
		ConverterOutputStream :: struct {parent_instance: FilterOutputStream, priv: ^ConverterOutputStreamPrivate}
		ConverterOutputStreamClass :: struct {parent_class: FilterOutputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_148, _g_reserved2: _g_reserved2_func_ptr_anon_149, _g_reserved3: _g_reserved3_func_ptr_anon_150, _g_reserved4: _g_reserved4_func_ptr_anon_151, _g_reserved5: _g_reserved5_func_ptr_anon_152}
		ConverterOutputStreamPrivate :: struct #packed {}
		ConverterResult :: enum u32 {ERROR = 0, CONVERTED = 1, FINISHED = 2, FLUSHED = 3}
		Credentials :: struct #packed {}
		CredentialsClass :: struct #packed {}
		CredentialsType :: enum u32 {INVALID = 0, LINUX_UCRED = 1, FREEBSD_CMSGCRED = 2, OPENBSD_SOCKPEERCRED = 3, SOLARIS_UCRED = 4, NETBSD_UNPCBID = 5, APPLE_XUCRED = 6, WIN32_PID = 7}
		DBusActionGroup :: struct #packed {}
		DBusAnnotationInfo :: struct {ref_count: glib.int_, key: cstring, value: cstring, annotations: [^]^DBusAnnotationInfo}
		DBusArgInfo :: struct {ref_count: glib.int_, name: cstring, signature: cstring, annotations: [^]^DBusAnnotationInfo}
		DBusAuthObserver :: struct #packed {}
		DBusCallFlags :: bit_set[DBusCallFlagsBit]
		DBusCallFlagsBit :: enum u32 {NO_AUTO_START = 0, ALLOW_INTERACTIVE_AUTHORIZATION = 1}
		DBusCapabilityFlags :: bit_set[DBusCapabilityFlagsBit]
		DBusCapabilityFlagsBit :: enum u32 {UNIX_FD_PASSING = 0}
		DBusConnection :: struct #packed {}
		DBusConnectionFlags :: bit_set[DBusConnectionFlagsBit]
		DBusConnectionFlagsBit :: enum u32 {AUTHENTICATION_CLIENT = 0, AUTHENTICATION_SERVER = 1, AUTHENTICATION_ALLOW_ANONYMOUS = 2, MESSAGE_BUS_CONNECTION = 3, DELAY_MESSAGE_PROCESSING = 4, AUTHENTICATION_REQUIRE_SAME_USER = 5, CROSS_NAMESPACE = 6}
		DBusError :: enum u32 {DBUS_ERROR_FAILED = 0, DBUS_ERROR_NO_MEMORY = 1, DBUS_ERROR_SERVICE_UNKNOWN = 2, DBUS_ERROR_NAME_HAS_NO_OWNER = 3, DBUS_ERROR_NO_REPLY = 4, DBUS_ERROR_IO_ERROR = 5, DBUS_ERROR_BAD_ADDRESS = 6, DBUS_ERROR_NOT_SUPPORTED = 7, DBUS_ERROR_LIMITS_EXCEEDED = 8, DBUS_ERROR_ACCESS_DENIED = 9, DBUS_ERROR_AUTH_FAILED = 10, DBUS_ERROR_NO_SERVER = 11, DBUS_ERROR_TIMEOUT = 12, DBUS_ERROR_NO_NETWORK = 13, DBUS_ERROR_ADDRESS_IN_USE = 14, DBUS_ERROR_DISCONNECTED = 15, DBUS_ERROR_INVALID_ARGS = 16, DBUS_ERROR_FILE_NOT_FOUND = 17, DBUS_ERROR_FILE_EXISTS = 18, DBUS_ERROR_UNKNOWN_METHOD = 19, DBUS_ERROR_TIMED_OUT = 20, DBUS_ERROR_MATCH_RULE_NOT_FOUND = 21, DBUS_ERROR_MATCH_RULE_INVALID = 22, DBUS_ERROR_SPAWN_EXEC_FAILED = 23, DBUS_ERROR_SPAWN_FORK_FAILED = 24, DBUS_ERROR_SPAWN_CHILD_EXITED = 25, DBUS_ERROR_SPAWN_CHILD_SIGNALED = 26, DBUS_ERROR_SPAWN_FAILED = 27, DBUS_ERROR_SPAWN_SETUP_FAILED = 28, DBUS_ERROR_SPAWN_CONFIG_INVALID = 29, DBUS_ERROR_SPAWN_SERVICE_INVALID = 30, DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND = 31, DBUS_ERROR_SPAWN_PERMISSIONS_INVALID = 32, DBUS_ERROR_SPAWN_FILE_INVALID = 33, DBUS_ERROR_SPAWN_NO_MEMORY = 34, DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN = 35, DBUS_ERROR_INVALID_SIGNATURE = 36, DBUS_ERROR_INVALID_FILE_CONTENT = 37, DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN = 38, DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN = 39, DBUS_ERROR_OBJECT_PATH_IN_USE = 40, DBUS_ERROR_UNKNOWN_OBJECT = 41, DBUS_ERROR_UNKNOWN_INTERFACE = 42, DBUS_ERROR_UNKNOWN_PROPERTY = 43, DBUS_ERROR_PROPERTY_READ_ONLY = 44}
		DBusErrorEntry :: struct {error_code: glib.int_, dbus_error_name: cstring}
		DBusInterface :: struct #packed {}
		DBusInterfaceGetPropertyFunc :: #type proc(connection: ^DBusConnection, sender: cstring, object_path: cstring, interface_name: cstring, property_name: cstring, error: ^^glib.Error, user_data: glib.pointer) -> ^glib.Variant
		DBusInterfaceIface :: struct {parent_iface: gobj.TypeInterface, get_info: et_info_func_ptr_anon_168, get_object: et_object_func_ptr_anon_169, set_object: set_object_func_ptr_anon_170, dup_object: dup_object_func_ptr_anon_171}
		DBusInterfaceInfo :: struct {ref_count: glib.int_, name: cstring, methods: [^]^DBusMethodInfo, signals: [^]^DBusSignalInfo, properties: [^]^DBusPropertyInfo, annotations: [^]^DBusAnnotationInfo}
		DBusInterfaceMethodCallFunc :: #type proc(connection: ^DBusConnection, sender: cstring, object_path: cstring, interface_name: cstring, method_name: cstring, parameters: ^glib.Variant, invocation: ^DBusMethodInvocation, user_data: glib.pointer)
		DBusInterfaceSetPropertyFunc :: #type proc(connection: ^DBusConnection, sender: cstring, object_path: cstring, interface_name: cstring, property_name: cstring, value: ^glib.Variant, error: ^^glib.Error, user_data: glib.pointer) -> glib.boolean
		DBusInterfaceSkeleton :: struct {parent_instance: gobj.Object, priv: ^DBusInterfaceSkeletonPrivate}
		DBusInterfaceSkeletonClass :: struct {parent_class: gobj.ObjectClass, get_info: et_info_func_ptr_anon_172, get_vtable: et_vtable_func_ptr_anon_173, get_properties: et_properties_func_ptr_anon_174, flush: flush_func_ptr_anon_175, vfunc_padding: [8]glib.pointer, g_authorize_method: _authorize_method_func_ptr_anon_176, signal_padding: [8]glib.pointer}
		DBusInterfaceSkeletonFlags :: bit_set[DBusInterfaceSkeletonFlagsBit]
		DBusInterfaceSkeletonFlagsBit :: enum u32 {HANDLE_METHOD_INVOCATIONS_IN_THREAD = 0}
		DBusInterfaceSkeletonPrivate :: struct #packed {}
		DBusInterfaceVTable :: struct {method_call: DBusInterfaceMethodCallFunc, get_property: DBusInterfaceGetPropertyFunc, set_property: DBusInterfaceSetPropertyFunc, padding: [8]glib.pointer}
		DBusMenuModel :: struct #packed {}
		DBusMessage :: struct #packed {}
		DBusMessageByteOrder :: enum u32 {DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN = 66, DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN = 108}
		DBusMessageFilterFunction :: #type proc(connection: ^DBusConnection, message: ^DBusMessage, incoming: glib.boolean, user_data: glib.pointer) -> ^DBusMessage
		DBusMessageFlags :: bit_set[DBusMessageFlagsBit]
		DBusMessageFlagsBit :: enum u32 {NO_REPLY_EXPECTED = 0, NO_AUTO_START = 1, ALLOW_INTERACTIVE_AUTHORIZATION = 2}
		DBusMessageHeaderField :: enum u32 {DBUS_MESSAGE_HEADER_FIELD_INVALID = 0, DBUS_MESSAGE_HEADER_FIELD_PATH = 1, DBUS_MESSAGE_HEADER_FIELD_INTERFACE = 2, DBUS_MESSAGE_HEADER_FIELD_MEMBER = 3, DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME = 4, DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL = 5, DBUS_MESSAGE_HEADER_FIELD_DESTINATION = 6, DBUS_MESSAGE_HEADER_FIELD_SENDER = 7, DBUS_MESSAGE_HEADER_FIELD_SIGNATURE = 8, DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS = 9}
		DBusMessageType :: enum u32 {DBUS_MESSAGE_TYPE_INVALID = 0, DBUS_MESSAGE_TYPE_METHOD_CALL = 1, DBUS_MESSAGE_TYPE_METHOD_RETURN = 2, DBUS_MESSAGE_TYPE_ERROR = 3, DBUS_MESSAGE_TYPE_SIGNAL = 4}
		DBusMethodInfo :: struct {ref_count: glib.int_, name: cstring, in_args: [^]^DBusArgInfo, out_args: [^]^DBusArgInfo, annotations: [^]^DBusAnnotationInfo}
		DBusMethodInvocation :: struct #packed {}
		DBusNodeInfo :: struct {ref_count: glib.int_, path: cstring, interfaces: [^]^DBusInterfaceInfo, nodes: [^]^DBusNodeInfo, annotations: [^]^DBusAnnotationInfo}
		DBusObject :: struct #packed {}
		DBusObjectIface :: struct {parent_iface: gobj.TypeInterface, get_object_path: et_object_path_func_ptr_anon_177, get_interfaces: et_interfaces_func_ptr_anon_178, get_interface: et_interface_func_ptr_anon_179, interface_added: interface_added_func_ptr_anon_180, interface_removed: interface_removed_func_ptr_anon_181}
		DBusObjectManager :: struct #packed {}
		DBusObjectManagerClient :: struct {parent_instance: gobj.Object, priv: ^DBusObjectManagerClientPrivate}
		DBusObjectManagerClientClass :: struct {parent_class: gobj.ObjectClass, interface_proxy_signal: interface_proxy_signal_func_ptr_anon_190, interface_proxy_properties_changed: interface_proxy_properties_changed_func_ptr_anon_191, padding: [8]glib.pointer}
		DBusObjectManagerClientFlags :: bit_set[DBusObjectManagerClientFlagsBit]
		DBusObjectManagerClientFlagsBit :: enum u32 {DO_NOT_AUTO_START = 0}
		DBusObjectManagerClientPrivate :: struct #packed {}
		DBusObjectManagerIface :: struct {parent_iface: gobj.TypeInterface, get_object_path: et_object_path_func_ptr_anon_182, get_objects: et_objects_func_ptr_anon_183, get_object: et_object_func_ptr_anon_184, get_interface: et_interface_func_ptr_anon_185, object_added: object_added_func_ptr_anon_186, object_removed: object_removed_func_ptr_anon_187, interface_added: interface_added_func_ptr_anon_188, interface_removed: interface_removed_func_ptr_anon_189}
		DBusObjectManagerServer :: struct {parent_instance: gobj.Object, priv: ^DBusObjectManagerServerPrivate}
		DBusObjectManagerServerClass :: struct {parent_class: gobj.ObjectClass, padding: [8]glib.pointer}
		DBusObjectManagerServerPrivate :: struct #packed {}
		DBusObjectProxy :: struct {parent_instance: gobj.Object, priv: ^DBusObjectProxyPrivate}
		DBusObjectProxyClass :: struct {parent_class: gobj.ObjectClass, padding: [8]glib.pointer}
		DBusObjectProxyPrivate :: struct #packed {}
		DBusObjectSkeleton :: struct {parent_instance: gobj.Object, priv: ^DBusObjectSkeletonPrivate}
		DBusObjectSkeletonClass :: struct {parent_class: gobj.ObjectClass, authorize_method: authorize_method_func_ptr_anon_192, padding: [8]glib.pointer}
		DBusObjectSkeletonPrivate :: struct #packed {}
		DBusPropertyInfo :: struct {ref_count: glib.int_, name: cstring, signature: cstring, flags: DBusPropertyInfoFlags, annotations: [^]^DBusAnnotationInfo}
		DBusPropertyInfoFlags :: bit_set[DBusPropertyInfoFlagsBit]
		DBusPropertyInfoFlagsBit :: enum u32 {READABLE = 0, WRITABLE = 1}
		DBusProxy :: struct {parent_instance: gobj.Object, priv: ^DBusProxyPrivate}
		DBusProxyClass :: struct {parent_class: gobj.ObjectClass, g_properties_changed: _properties_changed_func_ptr_anon_193, g_signal: _signal_func_ptr_anon_194, padding: [32]glib.pointer}
		DBusProxyFlags :: bit_set[DBusProxyFlagsBit]
		DBusProxyFlagsBit :: enum u32 {DO_NOT_LOAD_PROPERTIES = 0, DO_NOT_CONNECT_SIGNALS = 1, DO_NOT_AUTO_START = 2, GET_INVALIDATED_PROPERTIES = 3, DO_NOT_AUTO_START_AT_CONSTRUCTION = 4, NO_MATCH_RULE = 5}
		DBusProxyPrivate :: struct #packed {}
		DBusProxyTypeFunc :: #type proc(manager: ^DBusObjectManagerClient, object_path: cstring, interface_name: cstring, data: glib.pointer) -> gobj.Type
		DBusSendMessageFlags :: bit_set[DBusSendMessageFlagsBit]
		DBusSendMessageFlagsBit :: enum u32 {PRESERVE_SERIAL = 0}
		DBusServer :: struct #packed {}
		DBusServerFlags :: bit_set[DBusServerFlagsBit]
		DBusServerFlagsBit :: enum u32 {RUN_IN_THREAD = 0, AUTHENTICATION_ALLOW_ANONYMOUS = 1, AUTHENTICATION_REQUIRE_SAME_USER = 2}
		DBusSignalCallback :: #type proc(connection: ^DBusConnection, sender_name: cstring, object_path: cstring, interface_name: cstring, signal_name: cstring, parameters: ^glib.Variant, user_data: glib.pointer)
		DBusSignalFlags :: bit_set[DBusSignalFlagsBit]
		DBusSignalFlagsBit :: enum u32 {NO_MATCH_RULE = 0, MATCH_ARG0_NAMESPACE = 1, MATCH_ARG0_PATH = 2}
		DBusSignalInfo :: struct {ref_count: glib.int_, name: cstring, args: [^]^DBusArgInfo, annotations: [^]^DBusAnnotationInfo}
		DBusSubtreeDispatchFunc :: #type proc(connection: ^DBusConnection, sender: cstring, object_path: cstring, interface_name: cstring, node: cstring, out_user_data: ^glib.pointer, user_data: glib.pointer) -> ^DBusInterfaceVTable
		DBusSubtreeEnumerateFunc :: #type proc(connection: ^DBusConnection, sender: cstring, object_path: cstring, user_data: glib.pointer) -> ^cstring
		DBusSubtreeFlags :: bit_set[DBusSubtreeFlagsBit]
		DBusSubtreeFlagsBit :: enum u32 {DISPATCH_TO_UNENUMERATED_NODES = 0}
		DBusSubtreeIntrospectFunc :: #type proc(connection: ^DBusConnection, sender: cstring, object_path: cstring, node: cstring, user_data: glib.pointer) -> ^^DBusInterfaceInfo
		DBusSubtreeVTable :: struct {enumerate: DBusSubtreeEnumerateFunc, introspect: DBusSubtreeIntrospectFunc, dispatch: DBusSubtreeDispatchFunc, padding: [8]glib.pointer}
		DataInputStream :: struct {parent_instance: BufferedInputStream, priv: ^DataInputStreamPrivate}
		DataInputStreamClass :: struct {parent_class: BufferedInputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_158, _g_reserved2: _g_reserved2_func_ptr_anon_159, _g_reserved3: _g_reserved3_func_ptr_anon_160, _g_reserved4: _g_reserved4_func_ptr_anon_161, _g_reserved5: _g_reserved5_func_ptr_anon_162}
		DataInputStreamPrivate :: struct #packed {}
		DataOutputStream :: struct {parent_instance: FilterOutputStream, priv: ^DataOutputStreamPrivate}
		DataOutputStreamClass :: struct {parent_class: FilterOutputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_163, _g_reserved2: _g_reserved2_func_ptr_anon_164, _g_reserved3: _g_reserved3_func_ptr_anon_165, _g_reserved4: _g_reserved4_func_ptr_anon_166, _g_reserved5: _g_reserved5_func_ptr_anon_167}
		DataOutputStreamPrivate :: struct #packed {}
		DataStreamByteOrder :: enum u32 {BIG_ENDIAN = 0, LITTLE_ENDIAN = 1, HOST_ENDIAN = 2}
		DataStreamNewlineType :: enum u32 {LF = 0, CR = 1, CR_LF = 2, ANY = 3}
		DatagramBased :: struct #packed {}
		DatagramBasedInterface :: struct {g_iface: gobj.TypeInterface, receive_messages: receive_messages_func_ptr_anon_153, send_messages: send_messages_func_ptr_anon_154, create_source: create_source_func_ptr_anon_155, condition_check: condition_check_func_ptr_anon_156, condition_wait: condition_wait_func_ptr_anon_157}
		DatagramBasedSourceFunc :: #type proc(datagram_based: ^DatagramBased, condition: glib.IOCondition, data: glib.pointer) -> glib.boolean
		DebugController :: struct #packed {}
		DebugControllerDBus :: struct {parent_instance: gobj.Object}
		DebugControllerDBusClass :: struct {parent_class: gobj.ObjectClass, authorize: authorize_func_ptr_anon_195, padding: [12]glib.pointer}
		DebugControllerInterface :: struct {g_iface: gobj.TypeInterface}
		Drive :: struct #packed {}
		DriveIface :: struct {g_iface: gobj.TypeInterface, changed: changed_func_ptr_anon_196, disconnected: disconnected_func_ptr_anon_197, eject_button: eject_button_func_ptr_anon_198, get_name: et_name_func_ptr_anon_199, get_icon: et_icon_func_ptr_anon_200, has_volumes: has_volumes_func_ptr_anon_201, get_volumes: et_volumes_func_ptr_anon_202, is_media_removable: is_media_removable_func_ptr_anon_203, has_media: has_media_func_ptr_anon_204, is_media_check_automatic: is_media_check_automatic_func_ptr_anon_205, can_eject: can_eject_func_ptr_anon_206, can_poll_for_media: can_poll_for_media_func_ptr_anon_207, eject: eject_func_ptr_anon_208, eject_finish: eject_finish_func_ptr_anon_209, poll_for_media: poll_for_media_func_ptr_anon_210, poll_for_media_finish: poll_for_media_finish_func_ptr_anon_211, get_identifier: et_identifier_func_ptr_anon_212, enumerate_identifiers: enumerate_identifiers_func_ptr_anon_213, get_start_stop_type: et_start_stop_type_func_ptr_anon_214, can_start: can_start_func_ptr_anon_215, can_start_degraded: can_start_degraded_func_ptr_anon_216, start: start_func_ptr_anon_217, start_finish: start_finish_func_ptr_anon_218, can_stop: can_stop_func_ptr_anon_219, stop: stop_func_ptr_anon_220, stop_finish: stop_finish_func_ptr_anon_221, stop_button: stop_button_func_ptr_anon_222, eject_with_operation: eject_with_operation_func_ptr_anon_223, eject_with_operation_finish: eject_with_operation_finish_func_ptr_anon_224, get_sort_key: et_sort_key_func_ptr_anon_225, get_symbolic_icon: et_symbolic_icon_func_ptr_anon_226, is_removable: is_removable_func_ptr_anon_227}
		DriveStartFlags :: enum u32 {NONE = 0}
		DriveStartStopType :: enum u32 {STOP_TYPE_UNKNOWN = 0, STOP_TYPE_SHUTDOWN = 1, STOP_TYPE_NETWORK = 2, STOP_TYPE_MULTIDISK = 3, STOP_TYPE_PASSWORD = 4}
		DtlsClientConnection :: struct #packed {}
		DtlsClientConnectionInterface :: struct {g_iface: gobj.TypeInterface}
		DtlsConnection :: struct #packed {}
		DtlsConnectionInterface :: struct {g_iface: gobj.TypeInterface, accept_certificate: accept_certificate_func_ptr_anon_228, handshake: handshake_func_ptr_anon_229, handshake_async: handshake_async_func_ptr_anon_230, handshake_finish: handshake_finish_func_ptr_anon_231, shutdown: shutdown_func_ptr_anon_232, shutdown_async: shutdown_async_func_ptr_anon_233, shutdown_finish: shutdown_finish_func_ptr_anon_234, set_advertised_protocols: set_advertised_protocols_func_ptr_anon_235, get_negotiated_protocol: et_negotiated_protocol_func_ptr_anon_236, get_binding_data: et_binding_data_func_ptr_anon_237}
		DtlsServerConnection :: struct #packed {}
		DtlsServerConnectionInterface :: struct {g_iface: gobj.TypeInterface}
		Emblem :: struct #packed {}
		EmblemClass :: struct #packed {}
		EmblemOrigin :: enum u32 {UNKNOWN = 0, DEVICE = 1, LIVEMETADATA = 2, TAG = 3}
		EmblemedIcon :: struct {parent_instance: gobj.Object, priv: ^EmblemedIconPrivate}
		EmblemedIconClass :: struct {parent_class: gobj.ObjectClass}
		EmblemedIconPrivate :: struct #packed {}
		File :: struct #packed {}
		FileAttributeInfo :: struct {name: cstring, type: FileAttributeType, flags: FileAttributeInfoFlags}
		FileAttributeInfoFlags :: bit_set[FileAttributeInfoFlagsBit]
		FileAttributeInfoFlagsBit :: enum u32 {COPY_WITH_FILE = 0, COPY_WHEN_MOVED = 1}
		FileAttributeInfoList :: struct {infos: [^]FileAttributeInfo, n_infos: i32}
		FileAttributeMatcher :: struct #packed {}
		FileAttributeStatus :: enum u32 {UNSET = 0, SET = 1, ERROR_SETTING = 2}
		FileAttributeType :: enum u32 {INVALID = 0, STRING = 1, BYTE_STRING = 2, BOOLEAN = 3, UINT32 = 4, INT32 = 5, UINT64 = 6, INT64 = 7, OBJECT = 8, STRINGV = 9}
		FileCopyFlags :: bit_set[FileCopyFlagsBit]
		FileCopyFlagsBit :: enum u32 {OVERWRITE = 0, BACKUP = 1, NOFOLLOW_SYMLINKS = 2, ALL_METADATA = 3, NO_FALLBACK_FOR_MOVE = 4, TARGET_DEFAULT_PERMS = 5, TARGET_DEFAULT_MODIFIED_TIME = 6}
		FileCreateFlags :: bit_set[FileCreateFlagsBit]
		FileCreateFlagsBit :: enum u32 {PRIVATE = 0, REPLACE_DESTINATION = 1}
		FileEnumerator :: struct {parent_instance: gobj.Object, priv: ^FileEnumeratorPrivate}
		FileEnumeratorClass :: struct {parent_class: gobj.ObjectClass, next_file: next_file_func_ptr_anon_345, close_fn: close_fn_func_ptr_anon_346, next_files_async: next_files_async_func_ptr_anon_347, next_files_finish: next_files_finish_func_ptr_anon_348, close_async: close_async_func_ptr_anon_349, close_finish: close_finish_func_ptr_anon_350, _g_reserved1: _g_reserved1_func_ptr_anon_351, _g_reserved2: _g_reserved2_func_ptr_anon_352, _g_reserved3: _g_reserved3_func_ptr_anon_353, _g_reserved4: _g_reserved4_func_ptr_anon_354, _g_reserved5: _g_reserved5_func_ptr_anon_355, _g_reserved6: _g_reserved6_func_ptr_anon_356, _g_reserved7: _g_reserved7_func_ptr_anon_357}
		FileEnumeratorPrivate :: struct #packed {}
		FileIOStream :: struct {parent_instance: IOStream, priv: ^FileIOStreamPrivate}
		FileIOStreamClass :: struct {parent_class: IOStreamClass, tell: tell_func_ptr_anon_384, can_seek: can_seek_func_ptr_anon_385, seek: seek_func_ptr_anon_386, can_truncate: can_truncate_func_ptr_anon_387, truncate_fn: truncate_fn_func_ptr_anon_388, query_info: query_info_func_ptr_anon_389, query_info_async: query_info_async_func_ptr_anon_390, query_info_finish: query_info_finish_func_ptr_anon_391, get_etag: et_etag_func_ptr_anon_392, _g_reserved1: _g_reserved1_func_ptr_anon_393, _g_reserved2: _g_reserved2_func_ptr_anon_394, _g_reserved3: _g_reserved3_func_ptr_anon_395, _g_reserved4: _g_reserved4_func_ptr_anon_396, _g_reserved5: _g_reserved5_func_ptr_anon_397}
		FileIOStreamPrivate :: struct #packed {}
		FileIcon :: struct #packed {}
		FileIconClass :: struct #packed {}
		FileIface :: struct {g_iface: gobj.TypeInterface, dup: dup_func_ptr_anon_243, hash: hash_func_ptr_anon_244, equal: equal_func_ptr_anon_245, is_native: is_native_func_ptr_anon_246, has_uri_scheme: has_uri_scheme_func_ptr_anon_247, get_uri_scheme: et_uri_scheme_func_ptr_anon_248, get_basename: et_basename_func_ptr_anon_249, get_path: et_path_func_ptr_anon_250, get_uri: et_uri_func_ptr_anon_251, get_parse_name: et_parse_name_func_ptr_anon_252, get_parent: et_parent_func_ptr_anon_253, prefix_matches: prefix_matches_func_ptr_anon_254, get_relative_path: et_relative_path_func_ptr_anon_255, resolve_relative_path: resolve_relative_path_func_ptr_anon_256, get_child_for_display_name: et_child_for_display_name_func_ptr_anon_257, enumerate_children: enumerate_children_func_ptr_anon_258, enumerate_children_async: enumerate_children_async_func_ptr_anon_259, enumerate_children_finish: enumerate_children_finish_func_ptr_anon_260, query_info: query_info_func_ptr_anon_261, query_info_async: query_info_async_func_ptr_anon_262, query_info_finish: query_info_finish_func_ptr_anon_263, query_filesystem_info: query_filesystem_info_func_ptr_anon_264, query_filesystem_info_async: query_filesystem_info_async_func_ptr_anon_265, query_filesystem_info_finish: query_filesystem_info_finish_func_ptr_anon_266, find_enclosing_mount: find_enclosing_mount_func_ptr_anon_267, find_enclosing_mount_async: find_enclosing_mount_async_func_ptr_anon_268, find_enclosing_mount_finish: find_enclosing_mount_finish_func_ptr_anon_269, set_display_name: set_display_name_func_ptr_anon_270, set_display_name_async: set_display_name_async_func_ptr_anon_271, set_display_name_finish: set_display_name_finish_func_ptr_anon_272, query_settable_attributes: query_settable_attributes_func_ptr_anon_273, _query_settable_attributes_async: _query_settable_attributes_async_func_ptr_anon_274, _query_settable_attributes_finish: _query_settable_attributes_finish_func_ptr_anon_275, query_writable_namespaces: query_writable_namespaces_func_ptr_anon_276, _query_writable_namespaces_async: _query_writable_namespaces_async_func_ptr_anon_277, _query_writable_namespaces_finish: _query_writable_namespaces_finish_func_ptr_anon_278, set_attribute: set_attribute_func_ptr_anon_279, set_attributes_from_info: set_attributes_from_info_func_ptr_anon_280, set_attributes_async: set_attributes_async_func_ptr_anon_281, set_attributes_finish: set_attributes_finish_func_ptr_anon_282, read_fn: read_fn_func_ptr_anon_283, read_async: read_async_func_ptr_anon_284, read_finish: read_finish_func_ptr_anon_285, append_to: append_to_func_ptr_anon_286, append_to_async: append_to_async_func_ptr_anon_287, append_to_finish: append_to_finish_func_ptr_anon_288, create: create_func_ptr_anon_289, create_async: create_async_func_ptr_anon_290, create_finish: create_finish_func_ptr_anon_291, replace: replace_func_ptr_anon_292, replace_async: replace_async_func_ptr_anon_293, replace_finish: replace_finish_func_ptr_anon_294, delete_file: delete_file_func_ptr_anon_295, delete_file_async: delete_file_async_func_ptr_anon_296, delete_file_finish: delete_file_finish_func_ptr_anon_297, trash: trash_func_ptr_anon_298, trash_async: trash_async_func_ptr_anon_299, trash_finish: trash_finish_func_ptr_anon_300, make_directory: make_directory_func_ptr_anon_301, make_directory_async: make_directory_async_func_ptr_anon_302, make_directory_finish: make_directory_finish_func_ptr_anon_303, make_symbolic_link: make_symbolic_link_func_ptr_anon_304, make_symbolic_link_async: make_symbolic_link_async_func_ptr_anon_305, make_symbolic_link_finish: make_symbolic_link_finish_func_ptr_anon_306, copy: copy_func_ptr_anon_307, copy_async: copy_async_func_ptr_anon_308, copy_finish: copy_finish_func_ptr_anon_309, move: move_func_ptr_anon_310, move_async: move_async_func_ptr_anon_311, move_finish: move_finish_func_ptr_anon_312, mount_mountable: mount_mountable_func_ptr_anon_313, mount_mountable_finish: mount_mountable_finish_func_ptr_anon_314, unmount_mountable: unmount_mountable_func_ptr_anon_315, unmount_mountable_finish: unmount_mountable_finish_func_ptr_anon_316, eject_mountable: eject_mountable_func_ptr_anon_317, eject_mountable_finish: eject_mountable_finish_func_ptr_anon_318, mount_enclosing_volume: mount_enclosing_volume_func_ptr_anon_319, mount_enclosing_volume_finish: mount_enclosing_volume_finish_func_ptr_anon_320, monitor_dir: monitor_dir_func_ptr_anon_321, monitor_file: monitor_file_func_ptr_anon_322, open_readwrite: open_readwrite_func_ptr_anon_323, open_readwrite_async: open_readwrite_async_func_ptr_anon_324, open_readwrite_finish: open_readwrite_finish_func_ptr_anon_325, create_readwrite: create_readwrite_func_ptr_anon_326, create_readwrite_async: create_readwrite_async_func_ptr_anon_327, create_readwrite_finish: create_readwrite_finish_func_ptr_anon_328, replace_readwrite: replace_readwrite_func_ptr_anon_329, replace_readwrite_async: replace_readwrite_async_func_ptr_anon_330, replace_readwrite_finish: replace_readwrite_finish_func_ptr_anon_331, start_mountable: start_mountable_func_ptr_anon_332, start_mountable_finish: start_mountable_finish_func_ptr_anon_333, stop_mountable: stop_mountable_func_ptr_anon_334, stop_mountable_finish: stop_mountable_finish_func_ptr_anon_335, supports_thread_contexts: glib.boolean, unmount_mountable_with_operation: unmount_mountable_with_operation_func_ptr_anon_336, unmount_mountable_with_operation_finish: unmount_mountable_with_operation_finish_func_ptr_anon_337, eject_mountable_with_operation: eject_mountable_with_operation_func_ptr_anon_338, eject_mountable_with_operation_finish: eject_mountable_with_operation_finish_func_ptr_anon_339, poll_mountable: poll_mountable_func_ptr_anon_340, poll_mountable_finish: poll_mountable_finish_func_ptr_anon_341, measure_disk_usage: measure_disk_usage_func_ptr_anon_342, measure_disk_usage_async: measure_disk_usage_async_func_ptr_anon_343, measure_disk_usage_finish: measure_disk_usage_finish_func_ptr_anon_344}
		FileInfo :: struct #packed {}
		FileInfoClass :: struct #packed {}
		FileInputStream :: struct {parent_instance: InputStream, priv: ^FileInputStreamPrivate}
		FileInputStreamClass :: struct {parent_class: InputStreamClass, tell: tell_func_ptr_anon_358, can_seek: can_seek_func_ptr_anon_359, seek: seek_func_ptr_anon_360, query_info: query_info_func_ptr_anon_361, query_info_async: query_info_async_func_ptr_anon_362, query_info_finish: query_info_finish_func_ptr_anon_363, _g_reserved1: _g_reserved1_func_ptr_anon_364, _g_reserved2: _g_reserved2_func_ptr_anon_365, _g_reserved3: _g_reserved3_func_ptr_anon_366, _g_reserved4: _g_reserved4_func_ptr_anon_367, _g_reserved5: _g_reserved5_func_ptr_anon_368}
		FileInputStreamPrivate :: struct #packed {}
		FileMeasureFlags :: bit_set[FileMeasureFlagsBit]
		FileMeasureFlagsBit :: enum u32 {REPORT_ANY_ERROR = 1, APPARENT_SIZE = 2, NO_XDEV = 3}
		FileMeasureProgressCallback :: #type proc(reporting: glib.boolean, current_size: glib.uint64, num_dirs: glib.uint64, num_files: glib.uint64, data: glib.pointer)
		FileMonitor :: struct {parent_instance: gobj.Object, priv: ^FileMonitorPrivate}
		FileMonitorClass :: struct {parent_class: gobj.ObjectClass, changed: changed_func_ptr_anon_398, cancel: cancel_func_ptr_anon_399, _g_reserved1: _g_reserved1_func_ptr_anon_400, _g_reserved2: _g_reserved2_func_ptr_anon_401, _g_reserved3: _g_reserved3_func_ptr_anon_402, _g_reserved4: _g_reserved4_func_ptr_anon_403, _g_reserved5: _g_reserved5_func_ptr_anon_404}
		FileMonitorEvent :: enum u32 {EVENT_CHANGED = 0, EVENT_CHANGES_DONE_HINT = 1, EVENT_DELETED = 2, EVENT_CREATED = 3, EVENT_ATTRIBUTE_CHANGED = 4, EVENT_PRE_UNMOUNT = 5, EVENT_UNMOUNTED = 6, EVENT_MOVED = 7, EVENT_RENAMED = 8, EVENT_MOVED_IN = 9, EVENT_MOVED_OUT = 10}
		FileMonitorFlags :: bit_set[FileMonitorFlagsBit]
		FileMonitorFlagsBit :: enum u32 {WATCH_MOUNTS = 0, SEND_MOVED = 1, WATCH_HARD_LINKS = 2, WATCH_MOVES = 3}
		FileMonitorPrivate :: struct #packed {}
		FileOutputStream :: struct {parent_instance: OutputStream, priv: ^FileOutputStreamPrivate}
		FileOutputStreamClass :: struct {parent_class: OutputStreamClass, tell: tell_func_ptr_anon_409, can_seek: can_seek_func_ptr_anon_410, seek: seek_func_ptr_anon_411, can_truncate: can_truncate_func_ptr_anon_412, truncate_fn: truncate_fn_func_ptr_anon_413, query_info: query_info_func_ptr_anon_414, query_info_async: query_info_async_func_ptr_anon_415, query_info_finish: query_info_finish_func_ptr_anon_416, get_etag: et_etag_func_ptr_anon_417, _g_reserved1: _g_reserved1_func_ptr_anon_418, _g_reserved2: _g_reserved2_func_ptr_anon_419, _g_reserved3: _g_reserved3_func_ptr_anon_420, _g_reserved4: _g_reserved4_func_ptr_anon_421, _g_reserved5: _g_reserved5_func_ptr_anon_422}
		FileOutputStreamPrivate :: struct #packed {}
		FileProgressCallback :: #type proc(current_num_bytes: glib.offset, total_num_bytes: glib.offset, data: glib.pointer)
		FileQueryInfoFlags :: bit_set[FileQueryInfoFlagsBit]
		FileQueryInfoFlagsBit :: enum u32 {NOFOLLOW_SYMLINKS = 0}
		FileReadMoreCallback :: #type proc(file_contents: cstring, file_size: glib.offset, callback_data: glib.pointer) -> glib.boolean
		FileType :: enum u32 {UNKNOWN = 0, REGULAR = 1, DIRECTORY = 2, SYMBOLIC_LINK = 3, SPECIAL = 4, SHORTCUT = 5, MOUNTABLE = 6}
		FilenameCompleter :: struct #packed {}
		FilenameCompleterClass :: struct {parent_class: gobj.ObjectClass, got_completion_data: ot_completion_data_func_ptr_anon_405, _g_reserved1: _g_reserved1_func_ptr_anon_406, _g_reserved2: _g_reserved2_func_ptr_anon_407, _g_reserved3: _g_reserved3_func_ptr_anon_408}
		FilesystemPreviewType :: enum u32 {IF_ALWAYS = 0, IF_LOCAL = 1, NEVER = 2}
		FilterInputStream :: struct {parent_instance: InputStream, base_stream: ^InputStream}
		FilterInputStreamClass :: struct {parent_class: InputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_99, _g_reserved2: _g_reserved2_func_ptr_anon_100, _g_reserved3: _g_reserved3_func_ptr_anon_101}
		FilterOutputStream :: struct {parent_instance: OutputStream, base_stream: ^OutputStream}
		FilterOutputStreamClass :: struct {parent_class: OutputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_130, _g_reserved2: _g_reserved2_func_ptr_anon_131, _g_reserved3: _g_reserved3_func_ptr_anon_132}
		IOErrorEnum :: enum u32 {FAILED = 0, NOT_FOUND = 1, EXISTS = 2, IS_DIRECTORY = 3, NOT_DIRECTORY = 4, NOT_EMPTY = 5, NOT_REGULAR_FILE = 6, NOT_SYMBOLIC_LINK = 7, NOT_MOUNTABLE_FILE = 8, FILENAME_TOO_LONG = 9, INVALID_FILENAME = 10, TOO_MANY_LINKS = 11, NO_SPACE = 12, INVALID_ARGUMENT = 13, PERMISSION_DENIED = 14, NOT_SUPPORTED = 15, NOT_MOUNTED = 16, ALREADY_MOUNTED = 17, CLOSED = 18, CANCELLED = 19, PENDING = 20, READ_ONLY = 21, CANT_CREATE_BACKUP = 22, WRONG_ETAG = 23, TIMED_OUT = 24, WOULD_RECURSE = 25, BUSY = 26, WOULD_BLOCK = 27, HOST_NOT_FOUND = 28, WOULD_MERGE = 29, FAILED_HANDLED = 30, TOO_MANY_OPEN_FILES = 31, NOT_INITIALIZED = 32, ADDRESS_IN_USE = 33, PARTIAL_INPUT = 34, INVALID_DATA = 35, DBUS_ERROR = 36, HOST_UNREACHABLE = 37, NETWORK_UNREACHABLE = 38, CONNECTION_REFUSED = 39, PROXY_FAILED = 40, PROXY_AUTH_FAILED = 41, PROXY_NEED_AUTH = 42, PROXY_NOT_ALLOWED = 43, BROKEN_PIPE = 44, CONNECTION_CLOSED = 44, NOT_CONNECTED = 45, MESSAGE_TOO_LARGE = 46, NO_SUCH_DEVICE = 47, DESTINATION_UNSET = 48}
		IOExtension :: struct #packed {}
		IOExtensionPoint :: struct #packed {}
		IOModule :: struct #packed {}
		IOModuleClass :: struct #packed {}
		IOModuleScope :: struct #packed {}
		IOModuleScopeFlags :: enum u32 {NONE = 0, BLOCK_DUPLICATES = 1}
		IOSchedulerJob :: struct #packed {}
		IOSchedulerJobFunc :: #type proc(job: ^IOSchedulerJob, cancellable: ^Cancellable, data: glib.pointer) -> glib.boolean
		IOStream :: struct {parent_instance: gobj.Object, priv: ^IOStreamPrivate}
		IOStreamAdapter :: struct #packed {}
		IOStreamClass :: struct {parent_class: gobj.ObjectClass, get_input_stream: et_input_stream_func_ptr_anon_369, get_output_stream: et_output_stream_func_ptr_anon_370, close_fn: close_fn_func_ptr_anon_371, close_async: close_async_func_ptr_anon_372, close_finish: close_finish_func_ptr_anon_373, _g_reserved1: _g_reserved1_func_ptr_anon_374, _g_reserved2: _g_reserved2_func_ptr_anon_375, _g_reserved3: _g_reserved3_func_ptr_anon_376, _g_reserved4: _g_reserved4_func_ptr_anon_377, _g_reserved5: _g_reserved5_func_ptr_anon_378, _g_reserved6: _g_reserved6_func_ptr_anon_379, _g_reserved7: _g_reserved7_func_ptr_anon_380, _g_reserved8: _g_reserved8_func_ptr_anon_381, _g_reserved9: _g_reserved9_func_ptr_anon_382, _g_reserved10: _g_reserved10_func_ptr_anon_383}
		IOStreamPrivate :: struct #packed {}
		IOStreamSpliceFlags :: bit_set[IOStreamSpliceFlagsBit]
		IOStreamSpliceFlagsBit :: enum u32 {CLOSE_STREAM1 = 0, CLOSE_STREAM2 = 1, WAIT_FOR_BOTH = 2}
		Icon :: struct #packed {}
		IconIface :: struct {g_iface: gobj.TypeInterface, hash: hash_func_ptr_anon_238, equal: equal_func_ptr_anon_239, to_tokens: to_tokens_func_ptr_anon_240, from_tokens: from_tokens_func_ptr_anon_241, serialize: serialize_func_ptr_anon_242}
		InetAddress :: struct {parent_instance: gobj.Object, priv: ^InetAddressPrivate}
		InetAddressClass :: struct {parent_class: gobj.ObjectClass, to_string: to_string_func_ptr_anon_423, to_bytes: to_bytes_func_ptr_anon_424}
		InetAddressMask :: struct {parent_instance: gobj.Object, priv: ^InetAddressMaskPrivate}
		InetAddressMaskClass :: struct {parent_class: gobj.ObjectClass}
		InetAddressMaskPrivate :: struct #packed {}
		InetAddressPrivate :: struct #packed {}
		InetSocketAddress :: struct {parent_instance: SocketAddress, priv: ^InetSocketAddressPrivate}
		InetSocketAddressClass :: struct {parent_class: SocketAddressClass}
		InetSocketAddressPrivate :: struct #packed {}
		Initable :: struct #packed {}
		InitableIface :: struct {g_iface: gobj.TypeInterface, init: init_func_ptr_anon_79}
		InputMessage :: struct {address: ^^SocketAddress, vectors: [^]InputVector, num_vectors: glib.uint_, bytes_received: glib.size, flags: glib.int_, control_messages: ^[^]^SocketControlMessage, num_control_messages: ^glib.uint_}
		InputStream :: struct {parent_instance: gobj.Object, priv: ^InputStreamPrivate}
		InputStreamClass :: struct {parent_class: gobj.ObjectClass, read_fn: read_fn_func_ptr_anon_85, skip: skip_func_ptr_anon_86, close_fn: close_fn_func_ptr_anon_87, read_async: read_async_func_ptr_anon_88, read_finish: read_finish_func_ptr_anon_89, skip_async: skip_async_func_ptr_anon_90, skip_finish: skip_finish_func_ptr_anon_91, close_async: close_async_func_ptr_anon_92, close_finish: close_finish_func_ptr_anon_93, _g_reserved1: _g_reserved1_func_ptr_anon_94, _g_reserved2: _g_reserved2_func_ptr_anon_95, _g_reserved3: _g_reserved3_func_ptr_anon_96, _g_reserved4: _g_reserved4_func_ptr_anon_97, _g_reserved5: _g_reserved5_func_ptr_anon_98}
		InputStreamPrivate :: struct #packed {}
		InputVector :: struct {buffer: glib.pointer, size_m: glib.size}
		ListModel :: struct #packed {}
		ListModelInterface :: struct {g_iface: gobj.TypeInterface, get_item_type: et_item_type_func_ptr_anon_428, get_n_items: et_n_items_func_ptr_anon_429, get_item: et_item_func_ptr_anon_430}
		ListStore :: struct #packed {}
		ListStoreClass :: struct {parent_class: gobj.ObjectClass}
		LoadableIcon :: struct #packed {}
		LoadableIconIface :: struct {g_iface: gobj.TypeInterface, load: load_func_ptr_anon_431, load_async: load_async_func_ptr_anon_432, load_finish: load_finish_func_ptr_anon_433}
		MemoryInputStream :: struct {parent_instance: InputStream, priv: ^MemoryInputStreamPrivate}
		MemoryInputStreamClass :: struct {parent_class: InputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_434, _g_reserved2: _g_reserved2_func_ptr_anon_435, _g_reserved3: _g_reserved3_func_ptr_anon_436, _g_reserved4: _g_reserved4_func_ptr_anon_437, _g_reserved5: _g_reserved5_func_ptr_anon_438}
		MemoryInputStreamPrivate :: struct #packed {}
		MemoryMonitor :: struct #packed {}
		MemoryMonitorInterface :: struct {g_iface: gobj.TypeInterface, low_memory_warning: low_memory_warning_func_ptr_anon_439}
		MemoryMonitorWarningLevel :: enum u32 {LOW = 50, MEDIUM = 100, CRITICAL = 255}
		MemoryOutputStream :: struct {parent_instance: OutputStream, priv: ^MemoryOutputStreamPrivate}
		MemoryOutputStreamClass :: struct {parent_class: OutputStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_440, _g_reserved2: _g_reserved2_func_ptr_anon_441, _g_reserved3: _g_reserved3_func_ptr_anon_442, _g_reserved4: _g_reserved4_func_ptr_anon_443, _g_reserved5: _g_reserved5_func_ptr_anon_444}
		MemoryOutputStreamPrivate :: struct #packed {}
		Menu :: struct #packed {}
		MenuAttributeIter :: struct {parent_instance: gobj.Object, priv: ^MenuAttributeIterPrivate}
		MenuAttributeIterClass :: struct {parent_class: gobj.ObjectClass, get_next: et_next_func_ptr_anon_453}
		MenuAttributeIterPrivate :: struct #packed {}
		MenuItem :: struct #packed {}
		MenuLinkIter :: struct {parent_instance: gobj.Object, priv: ^MenuLinkIterPrivate}
		MenuLinkIterClass :: struct {parent_class: gobj.ObjectClass, get_next: et_next_func_ptr_anon_454}
		MenuLinkIterPrivate :: struct #packed {}
		MenuModel :: struct {parent_instance: gobj.Object, priv: ^MenuModelPrivate}
		MenuModelClass :: struct {parent_class: gobj.ObjectClass, is_mutable: is_mutable_func_ptr_anon_445, get_n_items: et_n_items_func_ptr_anon_446, get_item_attributes: et_item_attributes_func_ptr_anon_447, iterate_item_attributes: iterate_item_attributes_func_ptr_anon_448, get_item_attribute_value: et_item_attribute_value_func_ptr_anon_449, get_item_links: et_item_links_func_ptr_anon_450, iterate_item_links: iterate_item_links_func_ptr_anon_451, get_item_link: et_item_link_func_ptr_anon_452}
		MenuModelPrivate :: struct #packed {}
		Mount :: struct #packed {}
		MountIface :: struct {g_iface: gobj.TypeInterface, changed: changed_func_ptr_anon_455, unmounted: unmounted_func_ptr_anon_456, get_root: et_root_func_ptr_anon_457, get_name: et_name_func_ptr_anon_458, get_icon: et_icon_func_ptr_anon_459, get_uuid: et_uuid_func_ptr_anon_460, get_volume: et_volume_func_ptr_anon_461, get_drive: et_drive_func_ptr_anon_462, can_unmount: can_unmount_func_ptr_anon_463, can_eject: can_eject_func_ptr_anon_464, unmount: unmount_func_ptr_anon_465, unmount_finish: unmount_finish_func_ptr_anon_466, eject: eject_func_ptr_anon_467, eject_finish: eject_finish_func_ptr_anon_468, remount: remount_func_ptr_anon_469, remount_finish: remount_finish_func_ptr_anon_470, guess_content_type: uess_content_type_func_ptr_anon_471, guess_content_type_finish: uess_content_type_finish_func_ptr_anon_472, guess_content_type_sync: uess_content_type_sync_func_ptr_anon_473, pre_unmount: pre_unmount_func_ptr_anon_474, unmount_with_operation: unmount_with_operation_func_ptr_anon_475, unmount_with_operation_finish: unmount_with_operation_finish_func_ptr_anon_476, eject_with_operation: eject_with_operation_func_ptr_anon_477, eject_with_operation_finish: eject_with_operation_finish_func_ptr_anon_478, get_default_location: et_default_location_func_ptr_anon_479, get_sort_key: et_sort_key_func_ptr_anon_480, get_symbolic_icon: et_symbolic_icon_func_ptr_anon_481}
		MountMountFlags :: enum u32 {NONE = 0}
		MountOperation :: struct {parent_instance: gobj.Object, priv: ^MountOperationPrivate}
		MountOperationClass :: struct {parent_class: gobj.ObjectClass, ask_password: ask_password_func_ptr_anon_482, ask_question: ask_question_func_ptr_anon_483, reply: reply_func_ptr_anon_484, aborted: aborted_func_ptr_anon_485, show_processes: show_processes_func_ptr_anon_486, show_unmount_progress: show_unmount_progress_func_ptr_anon_487, _g_reserved1: _g_reserved1_func_ptr_anon_488, _g_reserved2: _g_reserved2_func_ptr_anon_489, _g_reserved3: _g_reserved3_func_ptr_anon_490, _g_reserved4: _g_reserved4_func_ptr_anon_491, _g_reserved5: _g_reserved5_func_ptr_anon_492, _g_reserved6: _g_reserved6_func_ptr_anon_493, _g_reserved7: _g_reserved7_func_ptr_anon_494, _g_reserved8: _g_reserved8_func_ptr_anon_495, _g_reserved9: _g_reserved9_func_ptr_anon_496}
		MountOperationPrivate :: struct #packed {}
		MountOperationResult :: enum u32 {MOUNT_OPERATION_HANDLED = 0, MOUNT_OPERATION_ABORTED = 1, MOUNT_OPERATION_UNHANDLED = 2}
		MountUnmountFlags :: bit_set[MountUnmountFlagsBit]
		MountUnmountFlagsBit :: enum u32 {FORCE = 0}
		NativeSocketAddress :: struct {parent_instance: SocketAddress, priv: ^NativeSocketAddressPrivate}
		NativeSocketAddressClass :: struct {parent_class: SocketAddressClass}
		NativeSocketAddressPrivate :: struct #packed {}
		NativeVolumeMonitor :: struct {parent_instance: VolumeMonitor}
		NativeVolumeMonitorClass :: struct {parent_class: VolumeMonitorClass, get_mount_for_mount_path: et_mount_for_mount_path_func_ptr_anon_522}
		NetworkAddress :: struct {parent_instance: gobj.Object, priv: ^NetworkAddressPrivate}
		NetworkAddressClass :: struct {parent_class: gobj.ObjectClass}
		NetworkAddressPrivate :: struct #packed {}
		NetworkConnectivity :: enum u32 {LOCAL = 1, LIMITED = 2, PORTAL = 3, FULL = 4}
		NetworkMonitor :: struct #packed {}
		NetworkMonitorInterface :: struct {g_iface: gobj.TypeInterface, network_changed: network_changed_func_ptr_anon_523, can_reach: can_reach_func_ptr_anon_524, can_reach_async: can_reach_async_func_ptr_anon_525, can_reach_finish: can_reach_finish_func_ptr_anon_526}
		NetworkService :: struct {parent_instance: gobj.Object, priv: ^NetworkServicePrivate}
		NetworkServiceClass :: struct {parent_class: gobj.ObjectClass}
		NetworkServicePrivate :: struct #packed {}
		Notification :: struct #packed {}
		NotificationPriority :: enum u32 {NORMAL = 0, LOW = 1, HIGH = 2, URGENT = 3}
		OutputMessage :: struct {address: ^SocketAddress, vectors: [^]OutputVector, num_vectors: glib.uint_, bytes_sent: glib.uint_, control_messages: [^]^SocketControlMessage, num_control_messages: glib.uint_}
		OutputStream :: struct {parent_instance: gobj.Object, priv: ^OutputStreamPrivate}
		OutputStreamClass :: struct {parent_class: gobj.ObjectClass, write_fn: write_fn_func_ptr_anon_110, splice: splice_func_ptr_anon_111, flush: flush_func_ptr_anon_112, close_fn: close_fn_func_ptr_anon_113, write_async: write_async_func_ptr_anon_114, write_finish: write_finish_func_ptr_anon_115, splice_async: splice_async_func_ptr_anon_116, splice_finish: splice_finish_func_ptr_anon_117, flush_async: flush_async_func_ptr_anon_118, flush_finish: flush_finish_func_ptr_anon_119, close_async: close_async_func_ptr_anon_120, close_finish: close_finish_func_ptr_anon_121, writev_fn: writev_fn_func_ptr_anon_122, writev_async: writev_async_func_ptr_anon_123, writev_finish: writev_finish_func_ptr_anon_124, _g_reserved4: _g_reserved4_func_ptr_anon_125, _g_reserved5: _g_reserved5_func_ptr_anon_126, _g_reserved6: _g_reserved6_func_ptr_anon_127, _g_reserved7: _g_reserved7_func_ptr_anon_128, _g_reserved8: _g_reserved8_func_ptr_anon_129}
		OutputStreamPrivate :: struct #packed {}
		OutputStreamSpliceFlags :: bit_set[OutputStreamSpliceFlagsBit]
		OutputStreamSpliceFlagsBit :: enum u32 {CLOSE_SOURCE = 0, CLOSE_TARGET = 1}
		OutputVector :: struct {buffer: glib.constpointer, size_m: glib.size}
		PasswordSave :: enum u32 {NEVER = 0, FOR_SESSION = 1, PERMANENTLY = 2}
		Permission :: struct {parent_instance: gobj.Object, priv: ^PermissionPrivate}
		PermissionClass :: struct {parent_class: gobj.ObjectClass, acquire: acquire_func_ptr_anon_527, acquire_async: acquire_async_func_ptr_anon_528, acquire_finish: acquire_finish_func_ptr_anon_529, release: release_func_ptr_anon_530, release_async: release_async_func_ptr_anon_531, release_finish: release_finish_func_ptr_anon_532, reserved: [16]glib.pointer}
		PermissionPrivate :: struct #packed {}
		PollableInputStream :: struct #packed {}
		PollableInputStreamInterface :: struct {g_iface: gobj.TypeInterface, can_poll: can_poll_func_ptr_anon_533, is_readable: is_readable_func_ptr_anon_534, create_source: create_source_func_ptr_anon_535, read_nonblocking: read_nonblocking_func_ptr_anon_536}
		PollableOutputStream :: struct #packed {}
		PollableOutputStreamInterface :: struct {g_iface: gobj.TypeInterface, can_poll: can_poll_func_ptr_anon_537, is_writable: is_writable_func_ptr_anon_538, create_source: create_source_func_ptr_anon_539, write_nonblocking: write_nonblocking_func_ptr_anon_540, writev_nonblocking: writev_nonblocking_func_ptr_anon_541}
		PollableReturn :: enum i32 {FAILED = 0, OK = 1, WOULD_BLOCK = -27}
		PollableSourceFunc :: #type proc(pollable_stream: ^gobj.Object, data: glib.pointer) -> glib.boolean
		PowerProfileMonitor :: struct #packed {}
		PowerProfileMonitorInterface :: struct {g_iface: gobj.TypeInterface}
		PropertyAction :: struct #packed {}
		Proxy :: struct #packed {}
		ProxyAddress :: struct {parent_instance: InetSocketAddress, priv: ^ProxyAddressPrivate}
		ProxyAddressClass :: struct {parent_class: InetSocketAddressClass}
		ProxyAddressEnumerator :: struct {parent_instance: SocketAddressEnumerator, priv: ^ProxyAddressEnumeratorPrivate}
		ProxyAddressEnumeratorClass :: struct {parent_class: SocketAddressEnumeratorClass, _g_reserved1: _g_reserved1_func_ptr_anon_549, _g_reserved2: _g_reserved2_func_ptr_anon_550, _g_reserved3: _g_reserved3_func_ptr_anon_551, _g_reserved4: _g_reserved4_func_ptr_anon_552, _g_reserved5: _g_reserved5_func_ptr_anon_553, _g_reserved6: _g_reserved6_func_ptr_anon_554, _g_reserved7: _g_reserved7_func_ptr_anon_555}
		ProxyAddressEnumeratorPrivate :: struct #packed {}
		ProxyAddressPrivate :: struct #packed {}
		ProxyInterface :: struct {g_iface: gobj.TypeInterface, connect: connect_func_ptr_anon_542, connect_async: connect_async_func_ptr_anon_543, connect_finish: connect_finish_func_ptr_anon_544, supports_hostname: supports_hostname_func_ptr_anon_545}
		ProxyResolver :: struct #packed {}
		ProxyResolverInterface :: struct {g_iface: gobj.TypeInterface, is_supported: is_supported_func_ptr_anon_556, lookup: lookup_func_ptr_anon_557, lookup_async: lookup_async_func_ptr_anon_558, lookup_finish: lookup_finish_func_ptr_anon_559}
		ReallocFunc :: #type proc(data: glib.pointer, size_p: glib.size) -> glib.pointer
		RemoteActionGroup :: struct #packed {}
		RemoteActionGroupInterface :: struct {g_iface: gobj.TypeInterface, activate_action_full: activate_action_full_func_ptr_anon_560, change_action_state_full: change_action_state_full_func_ptr_anon_561}
		Resolver :: struct {parent_instance: gobj.Object, priv: ^ResolverPrivate}
		ResolverClass :: struct {parent_class: gobj.ObjectClass, reload: reload_func_ptr_anon_562, lookup_by_name: lookup_by_name_func_ptr_anon_563, lookup_by_name_async: lookup_by_name_async_func_ptr_anon_564, lookup_by_name_finish: lookup_by_name_finish_func_ptr_anon_565, lookup_by_address: lookup_by_address_func_ptr_anon_566, lookup_by_address_async: lookup_by_address_async_func_ptr_anon_567, lookup_by_address_finish: lookup_by_address_finish_func_ptr_anon_568, lookup_service: lookup_service_func_ptr_anon_569, lookup_service_async: lookup_service_async_func_ptr_anon_570, lookup_service_finish: lookup_service_finish_func_ptr_anon_571, lookup_records: lookup_records_func_ptr_anon_572, lookup_records_async: lookup_records_async_func_ptr_anon_573, lookup_records_finish: lookup_records_finish_func_ptr_anon_574, lookup_by_name_with_flags_async: lookup_by_name_with_flags_async_func_ptr_anon_575, lookup_by_name_with_flags_finish: lookup_by_name_with_flags_finish_func_ptr_anon_576, lookup_by_name_with_flags: lookup_by_name_with_flags_func_ptr_anon_577}
		ResolverError :: enum u32 {NOT_FOUND = 0, TEMPORARY_FAILURE = 1, INTERNAL = 2}
		ResolverNameLookupFlags :: bit_set[ResolverNameLookupFlagsBit]
		ResolverNameLookupFlagsBit :: enum u32 {IPV4_ONLY = 0, IPV6_ONLY = 1}
		ResolverPrivate :: struct #packed {}
		ResolverRecordType :: enum u32 {RESOLVER_RECORD_SRV = 1, RESOLVER_RECORD_MX = 2, RESOLVER_RECORD_TXT = 3, RESOLVER_RECORD_SOA = 4, RESOLVER_RECORD_NS = 5}
		Resource :: struct #packed {}
		ResourceError :: enum u32 {NOT_FOUND = 0, INTERNAL = 1}
		ResourceFlags :: bit_set[ResourceFlagsBit]
		ResourceFlagsBit :: enum u32 {COMPRESSED = 0}
		ResourceLookupFlags :: enum u32 {NONE = 0}
		Seekable :: struct #packed {}
		SeekableIface :: struct {g_iface: gobj.TypeInterface, tell: tell_func_ptr_anon_578, can_seek: can_seek_func_ptr_anon_579, seek: seek_func_ptr_anon_580, can_truncate: can_truncate_func_ptr_anon_581, truncate_fn: truncate_fn_func_ptr_anon_582}
		Settings :: struct {parent_instance: gobj.Object, priv: ^SettingsPrivate}
		SettingsBackend :: struct #packed {}
		SettingsBindFlags :: bit_set[SettingsBindFlagsBit]
		SettingsBindFlagsBit :: enum u32 {GET = 0, SET = 1, NO_SENSITIVITY = 2, GET_NO_CHANGES = 3, INVERT_BOOLEAN = 4}
		SettingsBindGetMapping :: #type proc(value: ^gobj.Value, variant: ^glib.Variant, user_data: glib.pointer) -> glib.boolean
		SettingsBindSetMapping :: #type proc(value: ^gobj.Value, expected_type: ^glib.VariantType, user_data: glib.pointer) -> ^glib.Variant
		SettingsClass :: struct {parent_class: gobj.ObjectClass, writable_changed: writable_changed_func_ptr_anon_583, changed: changed_func_ptr_anon_584, writable_change_event: writable_change_event_func_ptr_anon_585, change_event: change_event_func_ptr_anon_586, padding: [20]glib.pointer}
		SettingsGetMapping :: #type proc(value: ^glib.Variant, result: ^glib.pointer, user_data: glib.pointer) -> glib.boolean
		SettingsPrivate :: struct #packed {}
		SettingsSchema :: struct #packed {}
		SettingsSchemaKey :: struct #packed {}
		SettingsSchemaSource :: struct #packed {}
		SimpleAction :: struct #packed {}
		SimpleActionGroup :: struct {parent_instance: gobj.Object, priv: ^SimpleActionGroupPrivate}
		SimpleActionGroupClass :: struct {parent_class: gobj.ObjectClass, padding: [12]glib.pointer}
		SimpleActionGroupPrivate :: struct #packed {}
		SimpleAsyncResult :: struct #packed {}
		SimpleAsyncResultClass :: struct #packed {}
		SimpleAsyncThreadFunc :: #type proc(res: ^SimpleAsyncResult, object: ^gobj.Object, cancellable: ^Cancellable)
		SimpleIOStream :: struct #packed {}
		SimplePermission :: struct #packed {}
		SimpleProxyResolver :: struct {parent_instance: gobj.Object, priv: ^SimpleProxyResolverPrivate}
		SimpleProxyResolverClass :: struct {parent_class: gobj.ObjectClass, _g_reserved1: _g_reserved1_func_ptr_anon_587, _g_reserved2: _g_reserved2_func_ptr_anon_588, _g_reserved3: _g_reserved3_func_ptr_anon_589, _g_reserved4: _g_reserved4_func_ptr_anon_590, _g_reserved5: _g_reserved5_func_ptr_anon_591}
		SimpleProxyResolverPrivate :: struct #packed {}
		Socket :: struct {parent_instance: gobj.Object, priv: ^SocketPrivate}
		SocketAddress :: struct {parent_instance: gobj.Object}
		SocketAddressClass :: struct {parent_class: gobj.ObjectClass, get_family: et_family_func_ptr_anon_425, get_native_size: et_native_size_func_ptr_anon_426, to_native: to_native_func_ptr_anon_427}
		SocketAddressEnumerator :: struct {parent_instance: gobj.Object}
		SocketAddressEnumeratorClass :: struct {parent_class: gobj.ObjectClass, next: next_func_ptr_anon_546, next_async: next_async_func_ptr_anon_547, next_finish: next_finish_func_ptr_anon_548}
		SocketClass :: struct {parent_class: gobj.ObjectClass, _g_reserved1: _g_reserved1_func_ptr_anon_592, _g_reserved2: _g_reserved2_func_ptr_anon_593, _g_reserved3: _g_reserved3_func_ptr_anon_594, _g_reserved4: _g_reserved4_func_ptr_anon_595, _g_reserved5: _g_reserved5_func_ptr_anon_596, _g_reserved6: _g_reserved6_func_ptr_anon_597, _g_reserved7: _g_reserved7_func_ptr_anon_598, _g_reserved8: _g_reserved8_func_ptr_anon_599, _g_reserved9: _g_reserved9_func_ptr_anon_600, _g_reserved10: _g_reserved10_func_ptr_anon_601}
		SocketClient :: struct {parent_instance: gobj.Object, priv: ^SocketClientPrivate}
		SocketClientClass :: struct {parent_class: gobj.ObjectClass, event: event_func_ptr_anon_602, _g_reserved1: _g_reserved1_func_ptr_anon_603, _g_reserved2: _g_reserved2_func_ptr_anon_604, _g_reserved3: _g_reserved3_func_ptr_anon_605, _g_reserved4: _g_reserved4_func_ptr_anon_606}
		SocketClientEvent :: enum u32 {SOCKET_CLIENT_RESOLVING = 0, SOCKET_CLIENT_RESOLVED = 1, SOCKET_CLIENT_CONNECTING = 2, SOCKET_CLIENT_CONNECTED = 3, SOCKET_CLIENT_PROXY_NEGOTIATING = 4, SOCKET_CLIENT_PROXY_NEGOTIATED = 5, SOCKET_CLIENT_TLS_HANDSHAKING = 6, SOCKET_CLIENT_TLS_HANDSHAKED = 7, SOCKET_CLIENT_COMPLETE = 8}
		SocketClientPrivate :: struct #packed {}
		SocketConnectable :: struct #packed {}
		SocketConnectableIface :: struct {g_iface: gobj.TypeInterface, enumerate: enumerate_func_ptr_anon_607, proxy_enumerate: proxy_enumerate_func_ptr_anon_608, to_string: to_string_func_ptr_anon_609}
		SocketConnection :: struct {parent_instance: IOStream, priv: ^SocketConnectionPrivate}
		SocketConnectionClass :: struct {parent_class: IOStreamClass, _g_reserved1: _g_reserved1_func_ptr_anon_610, _g_reserved2: _g_reserved2_func_ptr_anon_611, _g_reserved3: _g_reserved3_func_ptr_anon_612, _g_reserved4: _g_reserved4_func_ptr_anon_613, _g_reserved5: _g_reserved5_func_ptr_anon_614, _g_reserved6: _g_reserved6_func_ptr_anon_615}
		SocketConnectionPrivate :: struct #packed {}
		SocketControlMessage :: struct {parent_instance: gobj.Object, priv: ^SocketControlMessagePrivate}
		SocketControlMessageClass :: struct {parent_class: gobj.ObjectClass, get_size: et_size_func_ptr_anon_616, get_level: et_level_func_ptr_anon_617, get_type: et_type_func_ptr_anon_618, serialize: serialize_func_ptr_anon_619, deserialize: deserialize_func_ptr_anon_620, _g_reserved1: _g_reserved1_func_ptr_anon_621, _g_reserved2: _g_reserved2_func_ptr_anon_622, _g_reserved3: _g_reserved3_func_ptr_anon_623, _g_reserved4: _g_reserved4_func_ptr_anon_624, _g_reserved5: _g_reserved5_func_ptr_anon_625}
		SocketControlMessagePrivate :: struct #packed {}
		SocketFamily :: enum u32 {INVALID = 0, UNIX = 1, IPV4 = 2, IPV6 = 10}
		SocketListener :: struct {parent_instance: gobj.Object, priv: ^SocketListenerPrivate}
		SocketListenerClass :: struct {parent_class: gobj.ObjectClass, changed: changed_func_ptr_anon_626, event: event_func_ptr_anon_627, _g_reserved2: _g_reserved2_func_ptr_anon_628, _g_reserved3: _g_reserved3_func_ptr_anon_629, _g_reserved4: _g_reserved4_func_ptr_anon_630, _g_reserved5: _g_reserved5_func_ptr_anon_631, _g_reserved6: _g_reserved6_func_ptr_anon_632}
		SocketListenerEvent :: enum u32 {SOCKET_LISTENER_BINDING = 0, SOCKET_LISTENER_BOUND = 1, SOCKET_LISTENER_LISTENING = 2, SOCKET_LISTENER_LISTENED = 3}
		SocketListenerPrivate :: struct #packed {}
		SocketMsgFlags :: bit_set[SocketMsgFlagsBit]
		SocketMsgFlagsBit :: enum u32 {OOB = 0, PEEK = 1, DONTROUTE = 2}
		SocketPrivate :: struct #packed {}
		SocketProtocol :: enum i32 {UNKNOWN = -1, DEFAULT = 0, TCP = 6, UDP = 17, SCTP = 132}
		SocketService :: struct {parent_instance: SocketListener, priv: ^SocketServicePrivate}
		SocketServiceClass :: struct {parent_class: SocketListenerClass, incoming: incoming_func_ptr_anon_633, _g_reserved1: _g_reserved1_func_ptr_anon_634, _g_reserved2: _g_reserved2_func_ptr_anon_635, _g_reserved3: _g_reserved3_func_ptr_anon_636, _g_reserved4: _g_reserved4_func_ptr_anon_637, _g_reserved5: _g_reserved5_func_ptr_anon_638, _g_reserved6: _g_reserved6_func_ptr_anon_639}
		SocketServicePrivate :: struct #packed {}
		SocketSourceFunc :: #type proc(socket: ^Socket, condition: glib.IOCondition, data: glib.pointer) -> glib.boolean
		SocketType :: enum u32 {INVALID = 0, STREAM = 1, DATAGRAM = 2, SEQPACKET = 3}
		SrvTarget :: struct #packed {}
		StaticResource :: struct {data: ^glib.uint8, data_len: glib.size, resource: ^Resource, next: ^StaticResource, padding: glib.pointer}
		Subprocess :: struct #packed {}
		SubprocessFlags :: bit_set[SubprocessFlagsBit]
		SubprocessFlagsBit :: enum u32 {STDIN_PIPE = 0, STDIN_INHERIT = 1, STDOUT_PIPE = 2, STDOUT_SILENCE = 3, STDERR_PIPE = 4, STDERR_SILENCE = 5, STDERR_MERGE = 6, INHERIT_FDS = 7, SEARCH_PATH_FROM_ENVP = 8}
		SubprocessLauncher :: struct #packed {}
		Task :: struct #packed {}
		TaskClass :: struct #packed {}
		TaskThreadFunc :: #type proc(task: ^Task, source_object: glib.pointer, task_data: glib.pointer, cancellable: ^Cancellable)
		TcpConnection :: struct {parent_instance: SocketConnection, priv: ^TcpConnectionPrivate}
		TcpConnectionClass :: struct {parent_class: SocketConnectionClass}
		TcpConnectionPrivate :: struct #packed {}
		TcpWrapperConnection :: struct {parent_instance: TcpConnection, priv: ^TcpWrapperConnectionPrivate}
		TcpWrapperConnectionClass :: struct {parent_class: TcpConnectionClass}
		TcpWrapperConnectionPrivate :: struct #packed {}
		TestDBus :: struct #packed {}
		TestDBusFlags :: enum u32 {NONE = 0}
		ThemedIcon :: struct #packed {}
		ThemedIconClass :: struct #packed {}
		ThreadedSocketService :: struct {parent_instance: SocketService, priv: ^ThreadedSocketServicePrivate}
		ThreadedSocketServiceClass :: struct {parent_class: SocketServiceClass, run: run_func_ptr_anon_640, _g_reserved1: _g_reserved1_func_ptr_anon_641, _g_reserved2: _g_reserved2_func_ptr_anon_642, _g_reserved3: _g_reserved3_func_ptr_anon_643, _g_reserved4: _g_reserved4_func_ptr_anon_644, _g_reserved5: _g_reserved5_func_ptr_anon_645}
		ThreadedSocketServicePrivate :: struct #packed {}
		TlsAuthenticationMode :: enum u32 {TLS_AUTHENTICATION_NONE = 0, TLS_AUTHENTICATION_REQUESTED = 1, TLS_AUTHENTICATION_REQUIRED = 2}
		TlsBackend :: struct #packed {}
		TlsBackendInterface :: struct {g_iface: gobj.TypeInterface, supports_tls: supports_tls_func_ptr_anon_646, get_certificate_type: et_certificate_type_func_ptr_anon_647, get_client_connection_type: et_client_connection_type_func_ptr_anon_648, get_server_connection_type: et_server_connection_type_func_ptr_anon_649, get_file_database_type: et_file_database_type_func_ptr_anon_650, get_default_database: et_default_database_func_ptr_anon_651, supports_dtls: supports_dtls_func_ptr_anon_652, get_dtls_client_connection_type: et_dtls_client_connection_type_func_ptr_anon_653, get_dtls_server_connection_type: et_dtls_server_connection_type_func_ptr_anon_654}
		TlsCertificate :: struct {parent_instance: gobj.Object, priv: ^TlsCertificatePrivate}
		TlsCertificateClass :: struct {parent_class: gobj.ObjectClass, verify: verify_func_ptr_anon_655, padding: [8]glib.pointer}
		TlsCertificateFlags :: bit_set[TlsCertificateFlagsBit]
		TlsCertificateFlagsBit :: enum u32 {UNKNOWN_CA = 0, BAD_IDENTITY = 1, NOT_ACTIVATED = 2, EXPIRED = 3, REVOKED = 4, INSECURE = 5, GENERIC_ERROR = 6}
		TlsCertificatePrivate :: struct #packed {}
		TlsCertificateRequestFlags :: enum u32 {REQUEST_NONE = 0}
		TlsChannelBindingError :: enum u32 {NOT_IMPLEMENTED = 0, INVALID_STATE = 1, NOT_AVAILABLE = 2, NOT_SUPPORTED = 3, GENERAL_ERROR = 4}
		TlsChannelBindingType :: enum u32 {TLS_CHANNEL_BINDING_TLS_UNIQUE = 0, TLS_CHANNEL_BINDING_TLS_SERVER_END_POINT = 1, TLS_CHANNEL_BINDING_TLS_EXPORTER = 2}
		TlsClientConnection :: struct #packed {}
		TlsClientConnectionInterface :: struct {g_iface: gobj.TypeInterface, copy_session_state: copy_session_state_func_ptr_anon_662}
		TlsConnection :: struct {parent_instance: IOStream, priv: ^TlsConnectionPrivate}
		TlsConnectionClass :: struct {parent_class: IOStreamClass, accept_certificate: accept_certificate_func_ptr_anon_656, handshake: handshake_func_ptr_anon_657, handshake_async: handshake_async_func_ptr_anon_658, handshake_finish: handshake_finish_func_ptr_anon_659, get_binding_data: et_binding_data_func_ptr_anon_660, get_negotiated_protocol: et_negotiated_protocol_func_ptr_anon_661, padding: [6]glib.pointer}
		TlsConnectionPrivate :: struct #packed {}
		TlsDatabase :: struct {parent_instance: gobj.Object, priv: ^TlsDatabasePrivate}
		TlsDatabaseClass :: struct {parent_class: gobj.ObjectClass, verify_chain: verify_chain_func_ptr_anon_663, verify_chain_async: verify_chain_async_func_ptr_anon_664, verify_chain_finish: verify_chain_finish_func_ptr_anon_665, create_certificate_handle: create_certificate_handle_func_ptr_anon_666, lookup_certificate_for_handle: lookup_certificate_for_handle_func_ptr_anon_667, lookup_certificate_for_handle_async: lookup_certificate_for_handle_async_func_ptr_anon_668, lookup_certificate_for_handle_finish: lookup_certificate_for_handle_finish_func_ptr_anon_669, lookup_certificate_issuer: lookup_certificate_issuer_func_ptr_anon_670, lookup_certificate_issuer_async: lookup_certificate_issuer_async_func_ptr_anon_671, lookup_certificate_issuer_finish: lookup_certificate_issuer_finish_func_ptr_anon_672, lookup_certificates_issued_by: lookup_certificates_issued_by_func_ptr_anon_673, lookup_certificates_issued_by_async: lookup_certificates_issued_by_async_func_ptr_anon_674, lookup_certificates_issued_by_finish: lookup_certificates_issued_by_finish_func_ptr_anon_675, padding: [16]glib.pointer}
		TlsDatabaseLookupFlags :: enum u32 {NONE = 0, KEYPAIR = 1}
		TlsDatabasePrivate :: struct #packed {}
		TlsDatabaseVerifyFlags :: enum u32 {NONE = 0}
		TlsError :: enum u32 {UNAVAILABLE = 0, MISC = 1, BAD_CERTIFICATE = 2, NOT_TLS = 3, HANDSHAKE = 4, CERTIFICATE_REQUIRED = 5, EOF = 6, INAPPROPRIATE_FALLBACK = 7, BAD_CERTIFICATE_PASSWORD = 8}
		TlsFileDatabase :: struct #packed {}
		TlsFileDatabaseInterface :: struct {g_iface: gobj.TypeInterface, padding: [8]glib.pointer}
		TlsInteraction :: struct {parent_instance: gobj.Object, priv: ^TlsInteractionPrivate}
		TlsInteractionClass :: struct {parent_class: gobj.ObjectClass, ask_password: ask_password_func_ptr_anon_676, ask_password_async: ask_password_async_func_ptr_anon_677, ask_password_finish: ask_password_finish_func_ptr_anon_678, request_certificate: request_certificate_func_ptr_anon_679, request_certificate_async: request_certificate_async_func_ptr_anon_680, request_certificate_finish: request_certificate_finish_func_ptr_anon_681, padding: [21]glib.pointer}
		TlsInteractionPrivate :: struct #packed {}
		TlsInteractionResult :: enum u32 {TLS_INTERACTION_UNHANDLED = 0, TLS_INTERACTION_HANDLED = 1, TLS_INTERACTION_FAILED = 2}
		TlsPassword :: struct {parent_instance: gobj.Object, priv: ^TlsPasswordPrivate}
		TlsPasswordClass :: struct {parent_class: gobj.ObjectClass, get_value: et_value_func_ptr_anon_682, set_value: set_value_func_ptr_anon_683, get_default_warning: et_default_warning_func_ptr_anon_684, padding: [4]glib.pointer}
		TlsPasswordFlags :: bit_set[TlsPasswordFlagsBit]
		TlsPasswordFlagsBit :: enum u32 {RETRY = 1, MANY_TRIES = 2, FINAL_TRY = 3, PKCS11_USER = 4, PKCS11_SECURITY_OFFICER = 5, PKCS11_CONTEXT_SPECIFIC = 6}
		TlsPasswordPrivate :: struct #packed {}
		TlsProtocolVersion :: enum u32 {UNKNOWN = 0, SSL_3_0 = 1, TLS_1_0 = 2, TLS_1_1 = 3, TLS_1_2 = 4, TLS_1_3 = 5, DTLS_1_0 = 201, DTLS_1_2 = 202}
		TlsRehandshakeMode :: enum u32 {TLS_REHANDSHAKE_NEVER = 0, TLS_REHANDSHAKE_SAFELY = 1, TLS_REHANDSHAKE_UNSAFELY = 2}
		TlsServerConnection :: struct #packed {}
		TlsServerConnectionInterface :: struct {g_iface: gobj.TypeInterface}
		UnixConnection :: struct {parent_instance: SocketConnection, priv: ^UnixConnectionPrivate}
		UnixConnectionClass :: struct {parent_class: SocketConnectionClass}
		UnixConnectionPrivate :: struct #packed {}
		UnixCredentialsMessage :: struct {parent_instance: SocketControlMessage, priv: ^UnixCredentialsMessagePrivate}
		UnixCredentialsMessageClass :: struct {parent_class: SocketControlMessageClass, _g_reserved1: _g_reserved1_func_ptr_anon_685, _g_reserved2: _g_reserved2_func_ptr_anon_686}
		UnixCredentialsMessagePrivate :: struct #packed {}
		UnixFDList :: struct {parent_instance: gobj.Object, priv: ^UnixFDListPrivate}
		UnixFDListClass :: struct {parent_class: gobj.ObjectClass, _g_reserved1: _g_reserved1_func_ptr_anon_687, _g_reserved2: _g_reserved2_func_ptr_anon_688, _g_reserved3: _g_reserved3_func_ptr_anon_689, _g_reserved4: _g_reserved4_func_ptr_anon_690, _g_reserved5: _g_reserved5_func_ptr_anon_691}
		UnixFDListPrivate :: struct #packed {}
		UnixSocketAddress :: struct {parent_instance: SocketAddress, priv: ^UnixSocketAddressPrivate}
		UnixSocketAddressClass :: struct {parent_class: SocketAddressClass}
		UnixSocketAddressPrivate :: struct #packed {}
		UnixSocketAddressType :: enum u32 {UNIX_SOCKET_ADDRESS_INVALID = 0, UNIX_SOCKET_ADDRESS_ANONYMOUS = 1, UNIX_SOCKET_ADDRESS_PATH = 2, UNIX_SOCKET_ADDRESS_ABSTRACT = 3, UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED = 4}
		Vfs :: struct {parent_instance: gobj.Object}
		VfsClass :: struct {parent_class: gobj.ObjectClass, is_active: is_active_func_ptr_anon_692, get_file_for_path: et_file_for_path_func_ptr_anon_693, get_file_for_uri: et_file_for_uri_func_ptr_anon_694, get_supported_uri_schemes: et_supported_uri_schemes_func_ptr_anon_695, parse_name: parse_name_func_ptr_anon_696, local_file_add_info: local_file_add_info_func_ptr_anon_697, add_writable_namespaces: add_writable_namespaces_func_ptr_anon_698, local_file_set_attributes: local_file_set_attributes_func_ptr_anon_699, local_file_removed: local_file_removed_func_ptr_anon_700, local_file_moved: local_file_moved_func_ptr_anon_701, deserialize_icon: deserialize_icon_func_ptr_anon_702, _g_reserved1: _g_reserved1_func_ptr_anon_703, _g_reserved2: _g_reserved2_func_ptr_anon_704, _g_reserved3: _g_reserved3_func_ptr_anon_705, _g_reserved4: _g_reserved4_func_ptr_anon_706, _g_reserved5: _g_reserved5_func_ptr_anon_707, _g_reserved6: _g_reserved6_func_ptr_anon_708}
		VfsFileLookupFunc :: #type proc(vfs: ^Vfs, identifier: cstring, user_data: glib.pointer) -> ^File
		Volume :: struct #packed {}
		VolumeIface :: struct {g_iface: gobj.TypeInterface, changed: changed_func_ptr_anon_709, removed: removed_func_ptr_anon_710, get_name: et_name_func_ptr_anon_711, get_icon: et_icon_func_ptr_anon_712, get_uuid: et_uuid_func_ptr_anon_713, get_drive: et_drive_func_ptr_anon_714, get_mount: et_mount_func_ptr_anon_715, can_mount: can_mount_func_ptr_anon_716, can_eject: can_eject_func_ptr_anon_717, mount_fn: mount_fn_func_ptr_anon_718, mount_finish: mount_finish_func_ptr_anon_719, eject: eject_func_ptr_anon_720, eject_finish: eject_finish_func_ptr_anon_721, get_identifier: et_identifier_func_ptr_anon_722, enumerate_identifiers: enumerate_identifiers_func_ptr_anon_723, should_automount: should_automount_func_ptr_anon_724, get_activation_root: et_activation_root_func_ptr_anon_725, eject_with_operation: eject_with_operation_func_ptr_anon_726, eject_with_operation_finish: eject_with_operation_finish_func_ptr_anon_727, get_sort_key: et_sort_key_func_ptr_anon_728, get_symbolic_icon: et_symbolic_icon_func_ptr_anon_729}
		VolumeMonitor :: struct {parent_instance: gobj.Object, priv: glib.pointer}
		VolumeMonitorClass :: struct {parent_class: gobj.ObjectClass, volume_added: volume_added_func_ptr_anon_497, volume_removed: volume_removed_func_ptr_anon_498, volume_changed: volume_changed_func_ptr_anon_499, mount_added: mount_added_func_ptr_anon_500, mount_removed: mount_removed_func_ptr_anon_501, mount_pre_unmount: mount_pre_unmount_func_ptr_anon_502, mount_changed: mount_changed_func_ptr_anon_503, drive_connected: drive_connected_func_ptr_anon_504, drive_disconnected: drive_disconnected_func_ptr_anon_505, drive_changed: drive_changed_func_ptr_anon_506, is_supported: is_supported_func_ptr_anon_507, get_connected_drives: et_connected_drives_func_ptr_anon_508, get_volumes: et_volumes_func_ptr_anon_509, get_mounts: et_mounts_func_ptr_anon_510, get_volume_for_uuid: et_volume_for_uuid_func_ptr_anon_511, get_mount_for_uuid: et_mount_for_uuid_func_ptr_anon_512, adopt_orphan_mount: adopt_orphan_mount_func_ptr_anon_513, drive_eject_button: drive_eject_button_func_ptr_anon_514, drive_stop_button: drive_stop_button_func_ptr_anon_515, _g_reserved1: _g_reserved1_func_ptr_anon_516, _g_reserved2: _g_reserved2_func_ptr_anon_517, _g_reserved3: _g_reserved3_func_ptr_anon_518, _g_reserved4: _g_reserved4_func_ptr_anon_519, _g_reserved5: _g_reserved5_func_ptr_anon_520, _g_reserved6: _g_reserved6_func_ptr_anon_521}
		ZlibCompressor :: struct #packed {}
		ZlibCompressorClass :: struct {parent_class: gobj.ObjectClass}
		ZlibCompressorFormat :: enum u32 {ZLIB = 0, GZIP = 1, RAW = 2}
		ZlibDecompressor :: struct #packed {}
		ZlibDecompressorClass :: struct {parent_class: gobj.ObjectClass}
		_authorize_method_func_ptr_anon_176 :: #type proc(interface_: ^DBusInterfaceSkeleton, invocation: ^DBusMethodInvocation) -> glib.boolean
		_g_reserved10_func_ptr_anon_383 :: #type proc()
		_g_reserved10_func_ptr_anon_601 :: #type proc()
		_g_reserved1_func_ptr_anon_105 :: #type proc()
		_g_reserved1_func_ptr_anon_130 :: #type proc()
		_g_reserved1_func_ptr_anon_133 :: #type proc()
		_g_reserved1_func_ptr_anon_136 :: #type proc()
		_g_reserved1_func_ptr_anon_143 :: #type proc()
		_g_reserved1_func_ptr_anon_148 :: #type proc()
		_g_reserved1_func_ptr_anon_158 :: #type proc()
		_g_reserved1_func_ptr_anon_163 :: #type proc()
		_g_reserved1_func_ptr_anon_351 :: #type proc()
		_g_reserved1_func_ptr_anon_364 :: #type proc()
		_g_reserved1_func_ptr_anon_374 :: #type proc()
		_g_reserved1_func_ptr_anon_393 :: #type proc()
		_g_reserved1_func_ptr_anon_400 :: #type proc()
		_g_reserved1_func_ptr_anon_406 :: #type proc()
		_g_reserved1_func_ptr_anon_418 :: #type proc()
		_g_reserved1_func_ptr_anon_434 :: #type proc()
		_g_reserved1_func_ptr_anon_440 :: #type proc()
		_g_reserved1_func_ptr_anon_488 :: #type proc()
		_g_reserved1_func_ptr_anon_516 :: #type proc()
		_g_reserved1_func_ptr_anon_549 :: #type proc()
		_g_reserved1_func_ptr_anon_57 :: #type proc()
		_g_reserved1_func_ptr_anon_587 :: #type proc()
		_g_reserved1_func_ptr_anon_592 :: #type proc()
		_g_reserved1_func_ptr_anon_603 :: #type proc()
		_g_reserved1_func_ptr_anon_610 :: #type proc()
		_g_reserved1_func_ptr_anon_621 :: #type proc()
		_g_reserved1_func_ptr_anon_634 :: #type proc()
		_g_reserved1_func_ptr_anon_641 :: #type proc()
		_g_reserved1_func_ptr_anon_685 :: #type proc()
		_g_reserved1_func_ptr_anon_687 :: #type proc()
		_g_reserved1_func_ptr_anon_703 :: #type proc()
		_g_reserved1_func_ptr_anon_94 :: #type proc()
		_g_reserved1_func_ptr_anon_99 :: #type proc()
		_g_reserved2_func_ptr_anon_100 :: #type proc()
		_g_reserved2_func_ptr_anon_106 :: #type proc()
		_g_reserved2_func_ptr_anon_131 :: #type proc()
		_g_reserved2_func_ptr_anon_134 :: #type proc()
		_g_reserved2_func_ptr_anon_137 :: #type proc()
		_g_reserved2_func_ptr_anon_144 :: #type proc()
		_g_reserved2_func_ptr_anon_149 :: #type proc()
		_g_reserved2_func_ptr_anon_159 :: #type proc()
		_g_reserved2_func_ptr_anon_164 :: #type proc()
		_g_reserved2_func_ptr_anon_352 :: #type proc()
		_g_reserved2_func_ptr_anon_365 :: #type proc()
		_g_reserved2_func_ptr_anon_375 :: #type proc()
		_g_reserved2_func_ptr_anon_394 :: #type proc()
		_g_reserved2_func_ptr_anon_401 :: #type proc()
		_g_reserved2_func_ptr_anon_407 :: #type proc()
		_g_reserved2_func_ptr_anon_419 :: #type proc()
		_g_reserved2_func_ptr_anon_435 :: #type proc()
		_g_reserved2_func_ptr_anon_441 :: #type proc()
		_g_reserved2_func_ptr_anon_489 :: #type proc()
		_g_reserved2_func_ptr_anon_517 :: #type proc()
		_g_reserved2_func_ptr_anon_550 :: #type proc()
		_g_reserved2_func_ptr_anon_58 :: #type proc()
		_g_reserved2_func_ptr_anon_588 :: #type proc()
		_g_reserved2_func_ptr_anon_593 :: #type proc()
		_g_reserved2_func_ptr_anon_604 :: #type proc()
		_g_reserved2_func_ptr_anon_611 :: #type proc()
		_g_reserved2_func_ptr_anon_622 :: #type proc()
		_g_reserved2_func_ptr_anon_628 :: #type proc()
		_g_reserved2_func_ptr_anon_635 :: #type proc()
		_g_reserved2_func_ptr_anon_642 :: #type proc()
		_g_reserved2_func_ptr_anon_686 :: #type proc()
		_g_reserved2_func_ptr_anon_688 :: #type proc()
		_g_reserved2_func_ptr_anon_704 :: #type proc()
		_g_reserved2_func_ptr_anon_95 :: #type proc()
		_g_reserved3_func_ptr_anon_101 :: #type proc()
		_g_reserved3_func_ptr_anon_107 :: #type proc()
		_g_reserved3_func_ptr_anon_132 :: #type proc()
		_g_reserved3_func_ptr_anon_138 :: #type proc()
		_g_reserved3_func_ptr_anon_145 :: #type proc()
		_g_reserved3_func_ptr_anon_150 :: #type proc()
		_g_reserved3_func_ptr_anon_160 :: #type proc()
		_g_reserved3_func_ptr_anon_165 :: #type proc()
		_g_reserved3_func_ptr_anon_353 :: #type proc()
		_g_reserved3_func_ptr_anon_366 :: #type proc()
		_g_reserved3_func_ptr_anon_376 :: #type proc()
		_g_reserved3_func_ptr_anon_395 :: #type proc()
		_g_reserved3_func_ptr_anon_402 :: #type proc()
		_g_reserved3_func_ptr_anon_408 :: #type proc()
		_g_reserved3_func_ptr_anon_420 :: #type proc()
		_g_reserved3_func_ptr_anon_436 :: #type proc()
		_g_reserved3_func_ptr_anon_442 :: #type proc()
		_g_reserved3_func_ptr_anon_490 :: #type proc()
		_g_reserved3_func_ptr_anon_518 :: #type proc()
		_g_reserved3_func_ptr_anon_551 :: #type proc()
		_g_reserved3_func_ptr_anon_589 :: #type proc()
		_g_reserved3_func_ptr_anon_59 :: #type proc()
		_g_reserved3_func_ptr_anon_594 :: #type proc()
		_g_reserved3_func_ptr_anon_605 :: #type proc()
		_g_reserved3_func_ptr_anon_612 :: #type proc()
		_g_reserved3_func_ptr_anon_623 :: #type proc()
		_g_reserved3_func_ptr_anon_629 :: #type proc()
		_g_reserved3_func_ptr_anon_636 :: #type proc()
		_g_reserved3_func_ptr_anon_643 :: #type proc()
		_g_reserved3_func_ptr_anon_689 :: #type proc()
		_g_reserved3_func_ptr_anon_705 :: #type proc()
		_g_reserved3_func_ptr_anon_96 :: #type proc()
		_g_reserved4_func_ptr_anon_108 :: #type proc()
		_g_reserved4_func_ptr_anon_125 :: #type proc()
		_g_reserved4_func_ptr_anon_139 :: #type proc()
		_g_reserved4_func_ptr_anon_146 :: #type proc()
		_g_reserved4_func_ptr_anon_151 :: #type proc()
		_g_reserved4_func_ptr_anon_161 :: #type proc()
		_g_reserved4_func_ptr_anon_166 :: #type proc()
		_g_reserved4_func_ptr_anon_354 :: #type proc()
		_g_reserved4_func_ptr_anon_367 :: #type proc()
		_g_reserved4_func_ptr_anon_377 :: #type proc()
		_g_reserved4_func_ptr_anon_396 :: #type proc()
		_g_reserved4_func_ptr_anon_403 :: #type proc()
		_g_reserved4_func_ptr_anon_421 :: #type proc()
		_g_reserved4_func_ptr_anon_437 :: #type proc()
		_g_reserved4_func_ptr_anon_443 :: #type proc()
		_g_reserved4_func_ptr_anon_491 :: #type proc()
		_g_reserved4_func_ptr_anon_519 :: #type proc()
		_g_reserved4_func_ptr_anon_552 :: #type proc()
		_g_reserved4_func_ptr_anon_590 :: #type proc()
		_g_reserved4_func_ptr_anon_595 :: #type proc()
		_g_reserved4_func_ptr_anon_606 :: #type proc()
		_g_reserved4_func_ptr_anon_613 :: #type proc()
		_g_reserved4_func_ptr_anon_624 :: #type proc()
		_g_reserved4_func_ptr_anon_630 :: #type proc()
		_g_reserved4_func_ptr_anon_637 :: #type proc()
		_g_reserved4_func_ptr_anon_644 :: #type proc()
		_g_reserved4_func_ptr_anon_690 :: #type proc()
		_g_reserved4_func_ptr_anon_706 :: #type proc()
		_g_reserved4_func_ptr_anon_97 :: #type proc()
		_g_reserved5_func_ptr_anon_109 :: #type proc()
		_g_reserved5_func_ptr_anon_126 :: #type proc()
		_g_reserved5_func_ptr_anon_140 :: #type proc()
		_g_reserved5_func_ptr_anon_147 :: #type proc()
		_g_reserved5_func_ptr_anon_152 :: #type proc()
		_g_reserved5_func_ptr_anon_162 :: #type proc()
		_g_reserved5_func_ptr_anon_167 :: #type proc()
		_g_reserved5_func_ptr_anon_355 :: #type proc()
		_g_reserved5_func_ptr_anon_368 :: #type proc()
		_g_reserved5_func_ptr_anon_378 :: #type proc()
		_g_reserved5_func_ptr_anon_397 :: #type proc()
		_g_reserved5_func_ptr_anon_404 :: #type proc()
		_g_reserved5_func_ptr_anon_422 :: #type proc()
		_g_reserved5_func_ptr_anon_438 :: #type proc()
		_g_reserved5_func_ptr_anon_444 :: #type proc()
		_g_reserved5_func_ptr_anon_492 :: #type proc()
		_g_reserved5_func_ptr_anon_520 :: #type proc()
		_g_reserved5_func_ptr_anon_553 :: #type proc()
		_g_reserved5_func_ptr_anon_591 :: #type proc()
		_g_reserved5_func_ptr_anon_596 :: #type proc()
		_g_reserved5_func_ptr_anon_614 :: #type proc()
		_g_reserved5_func_ptr_anon_625 :: #type proc()
		_g_reserved5_func_ptr_anon_631 :: #type proc()
		_g_reserved5_func_ptr_anon_638 :: #type proc()
		_g_reserved5_func_ptr_anon_645 :: #type proc()
		_g_reserved5_func_ptr_anon_691 :: #type proc()
		_g_reserved5_func_ptr_anon_707 :: #type proc()
		_g_reserved5_func_ptr_anon_98 :: #type proc()
		_g_reserved6_func_ptr_anon_127 :: #type proc()
		_g_reserved6_func_ptr_anon_356 :: #type proc()
		_g_reserved6_func_ptr_anon_379 :: #type proc()
		_g_reserved6_func_ptr_anon_493 :: #type proc()
		_g_reserved6_func_ptr_anon_521 :: #type proc()
		_g_reserved6_func_ptr_anon_554 :: #type proc()
		_g_reserved6_func_ptr_anon_597 :: #type proc()
		_g_reserved6_func_ptr_anon_615 :: #type proc()
		_g_reserved6_func_ptr_anon_632 :: #type proc()
		_g_reserved6_func_ptr_anon_639 :: #type proc()
		_g_reserved6_func_ptr_anon_708 :: #type proc()
		_g_reserved7_func_ptr_anon_128 :: #type proc()
		_g_reserved7_func_ptr_anon_357 :: #type proc()
		_g_reserved7_func_ptr_anon_380 :: #type proc()
		_g_reserved7_func_ptr_anon_494 :: #type proc()
		_g_reserved7_func_ptr_anon_555 :: #type proc()
		_g_reserved7_func_ptr_anon_598 :: #type proc()
		_g_reserved8_func_ptr_anon_129 :: #type proc()
		_g_reserved8_func_ptr_anon_381 :: #type proc()
		_g_reserved8_func_ptr_anon_495 :: #type proc()
		_g_reserved8_func_ptr_anon_599 :: #type proc()
		_g_reserved9_func_ptr_anon_382 :: #type proc()
		_g_reserved9_func_ptr_anon_496 :: #type proc()
		_g_reserved9_func_ptr_anon_600 :: #type proc()
		_properties_changed_func_ptr_anon_193 :: #type proc(proxy: ^DBusProxy, changed_properties: ^glib.Variant, invalidated_properties: [^]cstring)
		_query_settable_attributes_async_func_ptr_anon_274 :: #type proc()
		_query_settable_attributes_finish_func_ptr_anon_275 :: #type proc()
		_query_writable_namespaces_async_func_ptr_anon_277 :: #type proc()
		_query_writable_namespaces_finish_func_ptr_anon_278 :: #type proc()
		_signal_func_ptr_anon_194 :: #type proc(proxy: ^DBusProxy, sender_name: cstring, signal_name: cstring, parameters: ^glib.Variant)
		aborted_func_ptr_anon_485 :: #type proc(op: ^MountOperation)
		accept_certificate_func_ptr_anon_228 :: #type proc(connection: ^DtlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean
		accept_certificate_func_ptr_anon_656 :: #type proc(connection: ^TlsConnection, peer_cert: ^TlsCertificate, errors: TlsCertificateFlags) -> glib.boolean
		acquire_async_func_ptr_anon_528 :: #type proc(permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		acquire_finish_func_ptr_anon_529 :: #type proc(permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		acquire_func_ptr_anon_527 :: #type proc(permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		action_added_func_ptr_anon_17 :: #type proc(action_group: ^ActionGroup, action_name: cstring)
		action_enabled_changed_func_ptr_anon_19 :: #type proc(action_group: ^ActionGroup, action_name: cstring, enabled: glib.boolean)
		action_removed_func_ptr_anon_18 :: #type proc(action_group: ^ActionGroup, action_name: cstring)
		action_state_changed_func_ptr_anon_20 :: #type proc(action_group: ^ActionGroup, action_name: cstring, state: ^glib.Variant)
		activate_action_full_func_ptr_anon_560 :: #type proc(remote: ^RemoteActionGroup, action_name: cstring, parameter: ^glib.Variant, platform_data: ^glib.Variant)
		activate_action_func_ptr_anon_16 :: #type proc(action_group: ^ActionGroup, action_name: cstring, parameter: ^glib.Variant)
		activate_func_ptr_anon_25 :: #type proc(action: ^SimpleAction, parameter: ^glib.Variant, user_data: glib.pointer)
		activate_func_ptr_anon_61 :: #type proc(application: ^Application)
		activate_func_ptr_anon_7 :: #type proc(action: ^Action, parameter: ^glib.Variant)
		add_action_func_ptr_anon_23 :: #type proc(action_map: ^ActionMap, action: ^Action)
		add_platform_data_func_ptr_anon_67 :: #type proc(application: ^Application, builder: ^glib.VariantBuilder)
		add_supports_type_func_ptr_anon_41 :: #type proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean
		add_writable_namespaces_func_ptr_anon_698 :: #type proc(vfs: ^Vfs, list: ^FileAttributeInfoList)
		adopt_orphan_mount_func_ptr_anon_513 :: #type proc(mount: ^Mount, volume_monitor: ^VolumeMonitor) -> ^Volume
		after_emit_func_ptr_anon_66 :: #type proc(application: ^Application, platform_data: ^glib.Variant)
		append_to_async_func_ptr_anon_287 :: #type proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		append_to_finish_func_ptr_anon_288 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileOutputStream
		append_to_func_ptr_anon_286 :: #type proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream
		ask_password_async_func_ptr_anon_677 :: #type proc(interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		ask_password_finish_func_ptr_anon_678 :: #type proc(interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult
		ask_password_func_ptr_anon_482 :: #type proc(op: ^MountOperation, message: cstring, default_user: cstring, default_domain: cstring, flags: AskPasswordFlags)
		ask_password_func_ptr_anon_676 :: #type proc(interaction: ^TlsInteraction, password: ^TlsPassword, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult
		ask_question_func_ptr_anon_483 :: #type proc(op: ^MountOperation, message: cstring, choices: [^]cstring)
		authorize_func_ptr_anon_195 :: #type proc(controller: ^DebugControllerDBus, invocation: ^DBusMethodInvocation) -> glib.boolean
		authorize_method_func_ptr_anon_192 :: #type proc(object: ^DBusObjectSkeleton, interface_: ^DBusInterfaceSkeleton, invocation: ^DBusMethodInvocation) -> glib.boolean
		before_emit_func_ptr_anon_65 :: #type proc(application: ^Application, platform_data: ^glib.Variant)
		can_delete_func_ptr_anon_44 :: #type proc(appinfo: ^AppInfo) -> glib.boolean
		can_eject_func_ptr_anon_206 :: #type proc(drive: ^Drive) -> glib.boolean
		can_eject_func_ptr_anon_464 :: #type proc(mount: ^Mount) -> glib.boolean
		can_eject_func_ptr_anon_717 :: #type proc(volume: ^Volume) -> glib.boolean
		can_mount_func_ptr_anon_716 :: #type proc(volume: ^Volume) -> glib.boolean
		can_poll_for_media_func_ptr_anon_207 :: #type proc(drive: ^Drive) -> glib.boolean
		can_poll_func_ptr_anon_533 :: #type proc(stream: ^PollableInputStream) -> glib.boolean
		can_poll_func_ptr_anon_537 :: #type proc(stream: ^PollableOutputStream) -> glib.boolean
		can_reach_async_func_ptr_anon_525 :: #type proc(monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		can_reach_finish_func_ptr_anon_526 :: #type proc(monitor: ^NetworkMonitor, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		can_reach_func_ptr_anon_524 :: #type proc(monitor: ^NetworkMonitor, connectable: ^SocketConnectable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		can_remove_supports_type_func_ptr_anon_42 :: #type proc(appinfo: ^AppInfo) -> glib.boolean
		can_seek_func_ptr_anon_359 :: #type proc(stream: ^FileInputStream) -> glib.boolean
		can_seek_func_ptr_anon_385 :: #type proc(stream: ^FileIOStream) -> glib.boolean
		can_seek_func_ptr_anon_410 :: #type proc(stream: ^FileOutputStream) -> glib.boolean
		can_seek_func_ptr_anon_579 :: #type proc(seekable: ^Seekable) -> glib.boolean
		can_start_degraded_func_ptr_anon_216 :: #type proc(drive: ^Drive) -> glib.boolean
		can_start_func_ptr_anon_215 :: #type proc(drive: ^Drive) -> glib.boolean
		can_stop_func_ptr_anon_219 :: #type proc(drive: ^Drive) -> glib.boolean
		can_truncate_func_ptr_anon_387 :: #type proc(stream: ^FileIOStream) -> glib.boolean
		can_truncate_func_ptr_anon_412 :: #type proc(stream: ^FileOutputStream) -> glib.boolean
		can_truncate_func_ptr_anon_581 :: #type proc(seekable: ^Seekable) -> glib.boolean
		can_unmount_func_ptr_anon_463 :: #type proc(mount: ^Mount) -> glib.boolean
		cancel_func_ptr_anon_399 :: #type proc(monitor: ^FileMonitor) -> glib.boolean
		cancelled_func_ptr_anon_135 :: #type proc(cancellable: ^Cancellable)
		change_action_state_full_func_ptr_anon_561 :: #type proc(remote: ^RemoteActionGroup, action_name: cstring, value: ^glib.Variant, platform_data: ^glib.Variant)
		change_action_state_func_ptr_anon_15 :: #type proc(action_group: ^ActionGroup, action_name: cstring, value: ^glib.Variant)
		change_event_func_ptr_anon_586 :: #type proc(settings: ^Settings, keys: [^]glib.Quark, n_keys: glib.int_) -> glib.boolean
		change_state_func_ptr_anon_26 :: #type proc(action: ^SimpleAction, value: ^glib.Variant, user_data: glib.pointer)
		change_state_func_ptr_anon_6 :: #type proc(action: ^Action, value: ^glib.Variant)
		changed_func_ptr_anon_196 :: #type proc(drive: ^Drive)
		changed_func_ptr_anon_398 :: #type proc(monitor: ^FileMonitor, file: ^File, other_file: ^File, event_type: FileMonitorEvent)
		changed_func_ptr_anon_455 :: #type proc(mount: ^Mount)
		changed_func_ptr_anon_584 :: #type proc(settings: ^Settings, key: cstring)
		changed_func_ptr_anon_626 :: #type proc(listener: ^SocketListener)
		changed_func_ptr_anon_709 :: #type proc(volume: ^Volume)
		close_async_func_ptr_anon_120 :: #type proc(stream: ^OutputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		close_async_func_ptr_anon_349 :: #type proc(enumerator: ^FileEnumerator, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		close_async_func_ptr_anon_372 :: #type proc(stream: ^IOStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		close_async_func_ptr_anon_92 :: #type proc(stream: ^InputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		close_finish_func_ptr_anon_121 :: #type proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		close_finish_func_ptr_anon_350 :: #type proc(enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		close_finish_func_ptr_anon_373 :: #type proc(stream: ^IOStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		close_finish_func_ptr_anon_93 :: #type proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		close_fn_func_ptr_anon_113 :: #type proc(stream: ^OutputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		close_fn_func_ptr_anon_346 :: #type proc(enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		close_fn_func_ptr_anon_371 :: #type proc(stream: ^IOStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		close_fn_func_ptr_anon_87 :: #type proc(stream: ^InputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		command_line_func_ptr_anon_63 :: #type proc(application: ^Application, command_line: ^ApplicationCommandLine) -> i32
		condition_check_func_ptr_anon_156 :: #type proc(datagram_based: ^DatagramBased, condition: glib.IOCondition) -> glib.IOCondition
		condition_wait_func_ptr_anon_157 :: #type proc(datagram_based: ^DatagramBased, condition: glib.IOCondition, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		connect_async_func_ptr_anon_543 :: #type proc(proxy: ^Proxy, connection: ^IOStream, proxy_address: ^ProxyAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		connect_finish_func_ptr_anon_544 :: #type proc(proxy: ^Proxy, result: ^AsyncResult, error: ^^glib.Error) -> ^IOStream
		connect_func_ptr_anon_542 :: #type proc(proxy: ^Proxy, connection: ^IOStream, proxy_address: ^ProxyAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> ^IOStream
		convert_func_ptr_anon_141 :: #type proc(converter: ^Converter, inbuf: rawptr, inbuf_size: glib.size, outbuf: rawptr, outbuf_size: glib.size, flags: ConverterFlags, bytes_read: ^glib.size, bytes_written: ^glib.size, error: ^^glib.Error) -> ConverterResult
		copy_async_func_ptr_anon_308 :: #type proc(source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer)
		copy_finish_func_ptr_anon_309 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		copy_func_ptr_anon_307 :: #type proc(source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, error: ^^glib.Error) -> glib.boolean
		copy_session_state_func_ptr_anon_662 :: #type proc(conn: ^TlsClientConnection, source: ^TlsClientConnection)
		create_async_func_ptr_anon_290 :: #type proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		create_certificate_handle_func_ptr_anon_666 :: #type proc(self: ^TlsDatabase, certificate: ^TlsCertificate) -> cstring
		create_finish_func_ptr_anon_291 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileOutputStream
		create_func_ptr_anon_289 :: #type proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream
		create_readwrite_async_func_ptr_anon_327 :: #type proc(file: ^File, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		create_readwrite_finish_func_ptr_anon_328 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileIOStream
		create_readwrite_func_ptr_anon_326 :: #type proc(file: ^File, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream
		create_source_func_ptr_anon_155 :: #type proc(datagram_based: ^DatagramBased, condition: glib.IOCondition, cancellable: ^Cancellable) -> ^glib.Source
		create_source_func_ptr_anon_535 :: #type proc(stream: ^PollableInputStream, cancellable: ^Cancellable) -> ^glib.Source
		create_source_func_ptr_anon_539 :: #type proc(stream: ^PollableOutputStream, cancellable: ^Cancellable) -> ^glib.Source
		dbus_register_func_ptr_anon_71 :: #type proc(application: ^Application, connection: ^DBusConnection, object_path: cstring, error: ^^glib.Error) -> glib.boolean
		dbus_unregister_func_ptr_anon_72 :: #type proc(application: ^Application, connection: ^DBusConnection, object_path: cstring)
		delete_file_async_func_ptr_anon_296 :: #type proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		delete_file_finish_func_ptr_anon_297 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		delete_file_func_ptr_anon_295 :: #type proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		deserialize_func_ptr_anon_620 :: #type proc(level: i32, type: i32, size_p: glib.size, data: glib.pointer) -> ^SocketControlMessage
		deserialize_icon_func_ptr_anon_702 :: #type proc(vfs: ^Vfs, value: ^glib.Variant) -> ^Icon
		disconnected_func_ptr_anon_197 :: #type proc(drive: ^Drive)
		do_delete_func_ptr_anon_45 :: #type proc(appinfo: ^AppInfo) -> glib.boolean
		done_func_ptr_anon_78 :: #type proc(cmdline: ^ApplicationCommandLine)
		drive_changed_func_ptr_anon_506 :: #type proc(volume_monitor: ^VolumeMonitor, drive: ^Drive)
		drive_connected_func_ptr_anon_504 :: #type proc(volume_monitor: ^VolumeMonitor, drive: ^Drive)
		drive_disconnected_func_ptr_anon_505 :: #type proc(volume_monitor: ^VolumeMonitor, drive: ^Drive)
		drive_eject_button_func_ptr_anon_514 :: #type proc(volume_monitor: ^VolumeMonitor, drive: ^Drive)
		drive_stop_button_func_ptr_anon_515 :: #type proc(volume_monitor: ^VolumeMonitor, drive: ^Drive)
		dup_func_ptr_anon_243 :: #type proc(file: ^File) -> ^File
		dup_func_ptr_anon_27 :: #type proc(appinfo: ^AppInfo) -> ^AppInfo
		dup_object_func_ptr_anon_171 :: #type proc(interface_: ^DBusInterface) -> ^DBusObject
		eject_button_func_ptr_anon_198 :: #type proc(drive: ^Drive)
		eject_finish_func_ptr_anon_209 :: #type proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		eject_finish_func_ptr_anon_468 :: #type proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		eject_finish_func_ptr_anon_721 :: #type proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		eject_func_ptr_anon_208 :: #type proc(drive: ^Drive, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		eject_func_ptr_anon_467 :: #type proc(mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		eject_func_ptr_anon_720 :: #type proc(volume: ^Volume, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		eject_mountable_finish_func_ptr_anon_318 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		eject_mountable_func_ptr_anon_317 :: #type proc(file: ^File, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		eject_mountable_with_operation_finish_func_ptr_anon_339 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		eject_mountable_with_operation_func_ptr_anon_338 :: #type proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		eject_with_operation_finish_func_ptr_anon_224 :: #type proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		eject_with_operation_finish_func_ptr_anon_478 :: #type proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		eject_with_operation_finish_func_ptr_anon_727 :: #type proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		eject_with_operation_func_ptr_anon_223 :: #type proc(drive: ^Drive, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		eject_with_operation_func_ptr_anon_477 :: #type proc(mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		eject_with_operation_func_ptr_anon_726 :: #type proc(volume: ^Volume, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		enumerate_children_async_func_ptr_anon_259 :: #type proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		enumerate_children_finish_func_ptr_anon_260 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileEnumerator
		enumerate_children_func_ptr_anon_258 :: #type proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileEnumerator
		enumerate_func_ptr_anon_607 :: #type proc(connectable: ^SocketConnectable) -> ^SocketAddressEnumerator
		enumerate_identifiers_func_ptr_anon_213 :: #type proc(drive: ^Drive) -> ^cstring
		enumerate_identifiers_func_ptr_anon_723 :: #type proc(volume: ^Volume) -> ^cstring
		equal_func_ptr_anon_239 :: #type proc(icon1: ^Icon, icon2: ^Icon) -> glib.boolean
		equal_func_ptr_anon_245 :: #type proc(file1: ^File, file2: ^File) -> glib.boolean
		equal_func_ptr_anon_28 :: #type proc(appinfo1: ^AppInfo, appinfo2: ^AppInfo) -> glib.boolean
		et_action_enabled_func_ptr_anon_10 :: #type proc(action_group: ^ActionGroup, action_name: cstring) -> glib.boolean
		et_action_parameter_type_func_ptr_anon_11 :: #type proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.VariantType
		et_action_state_func_ptr_anon_14 :: #type proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.Variant
		et_action_state_hint_func_ptr_anon_13 :: #type proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.Variant
		et_action_state_type_func_ptr_anon_12 :: #type proc(action_group: ^ActionGroup, action_name: cstring) -> ^glib.VariantType
		et_activation_root_func_ptr_anon_725 :: #type proc(volume: ^Volume) -> ^File
		et_basename_func_ptr_anon_249 :: #type proc(file: ^File) -> cstring
		et_binding_data_func_ptr_anon_237 :: #type proc(conn: ^DtlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean
		et_binding_data_func_ptr_anon_660 :: #type proc(conn: ^TlsConnection, type: TlsChannelBindingType, data: ^glib.ByteArray, error: ^^glib.Error) -> glib.boolean
		et_certificate_type_func_ptr_anon_647 :: #type proc() -> gobj.Type
		et_child_for_display_name_func_ptr_anon_257 :: #type proc(file: ^File, display_name: cstring, error: ^^glib.Error) -> ^File
		et_client_connection_type_func_ptr_anon_648 :: #type proc() -> gobj.Type
		et_commandline_func_ptr_anon_46 :: #type proc(appinfo: ^AppInfo) -> cstring
		et_connected_drives_func_ptr_anon_508 :: #type proc(volume_monitor: ^VolumeMonitor) -> ^glib.List
		et_default_database_func_ptr_anon_651 :: #type proc(backend: ^TlsBackend) -> ^TlsDatabase
		et_default_location_func_ptr_anon_479 :: #type proc(mount: ^Mount) -> ^File
		et_default_warning_func_ptr_anon_684 :: #type proc(password: ^TlsPassword) -> cstring
		et_description_func_ptr_anon_31 :: #type proc(appinfo: ^AppInfo) -> cstring
		et_display_func_ptr_anon_52 :: #type proc(context_p: ^AppLaunchContext, info: ^AppInfo, files: ^glib.List) -> cstring
		et_display_name_func_ptr_anon_47 :: #type proc(appinfo: ^AppInfo) -> cstring
		et_drive_func_ptr_anon_462 :: #type proc(mount: ^Mount) -> ^Drive
		et_drive_func_ptr_anon_714 :: #type proc(volume: ^Volume) -> ^Drive
		et_dtls_client_connection_type_func_ptr_anon_653 :: #type proc() -> gobj.Type
		et_dtls_server_connection_type_func_ptr_anon_654 :: #type proc() -> gobj.Type
		et_enabled_func_ptr_anon_4 :: #type proc(action: ^Action) -> glib.boolean
		et_etag_func_ptr_anon_392 :: #type proc(stream: ^FileIOStream) -> cstring
		et_etag_func_ptr_anon_417 :: #type proc(stream: ^FileOutputStream) -> cstring
		et_executable_func_ptr_anon_32 :: #type proc(appinfo: ^AppInfo) -> cstring
		et_family_func_ptr_anon_425 :: #type proc(address: ^SocketAddress) -> SocketFamily
		et_file_database_type_func_ptr_anon_650 :: #type proc() -> gobj.Type
		et_file_for_path_func_ptr_anon_693 :: #type proc(vfs: ^Vfs, path: cstring) -> ^File
		et_file_for_uri_func_ptr_anon_694 :: #type proc(vfs: ^Vfs, uri: cstring) -> ^File
		et_icon_func_ptr_anon_200 :: #type proc(drive: ^Drive) -> ^Icon
		et_icon_func_ptr_anon_33 :: #type proc(appinfo: ^AppInfo) -> ^Icon
		et_icon_func_ptr_anon_459 :: #type proc(mount: ^Mount) -> ^Icon
		et_icon_func_ptr_anon_712 :: #type proc(volume: ^Volume) -> ^Icon
		et_id_func_ptr_anon_29 :: #type proc(appinfo: ^AppInfo) -> cstring
		et_identifier_func_ptr_anon_212 :: #type proc(drive: ^Drive, kind: cstring) -> cstring
		et_identifier_func_ptr_anon_722 :: #type proc(volume: ^Volume, kind: cstring) -> cstring
		et_info_func_ptr_anon_168 :: #type proc(interface_: ^DBusInterface) -> ^DBusInterfaceInfo
		et_info_func_ptr_anon_172 :: #type proc(interface_: ^DBusInterfaceSkeleton) -> ^DBusInterfaceInfo
		et_input_stream_func_ptr_anon_369 :: #type proc(stream: ^IOStream) -> ^InputStream
		et_interface_func_ptr_anon_179 :: #type proc(object: ^DBusObject, interface_name: cstring) -> ^DBusInterface
		et_interface_func_ptr_anon_185 :: #type proc(manager: ^DBusObjectManager, object_path: cstring, interface_name: cstring) -> ^DBusInterface
		et_interfaces_func_ptr_anon_178 :: #type proc(object: ^DBusObject) -> ^glib.List
		et_item_attribute_value_func_ptr_anon_449 :: #type proc(model: ^MenuModel, item_index: glib.int_, attribute: cstring, expected_type: ^glib.VariantType) -> ^glib.Variant
		et_item_attributes_func_ptr_anon_447 :: #type proc(model: ^MenuModel, item_index: glib.int_, attributes: ^^glib.HashTable)
		et_item_func_ptr_anon_430 :: #type proc(list: ^ListModel, position: glib.uint_) -> glib.pointer
		et_item_link_func_ptr_anon_452 :: #type proc(model: ^MenuModel, item_index: glib.int_, link: cstring) -> ^MenuModel
		et_item_links_func_ptr_anon_450 :: #type proc(model: ^MenuModel, item_index: glib.int_, links: ^^glib.HashTable)
		et_item_type_func_ptr_anon_428 :: #type proc(list: ^ListModel) -> gobj.Type
		et_level_func_ptr_anon_617 :: #type proc(message: ^SocketControlMessage) -> i32
		et_mount_for_mount_path_func_ptr_anon_522 :: #type proc(mount_path: cstring, cancellable: ^Cancellable) -> ^Mount
		et_mount_for_uuid_func_ptr_anon_512 :: #type proc(volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Mount
		et_mount_func_ptr_anon_715 :: #type proc(volume: ^Volume) -> ^Mount
		et_mounts_func_ptr_anon_510 :: #type proc(volume_monitor: ^VolumeMonitor) -> ^glib.List
		et_n_items_func_ptr_anon_429 :: #type proc(list: ^ListModel) -> glib.uint_
		et_n_items_func_ptr_anon_446 :: #type proc(model: ^MenuModel) -> glib.int_
		et_name_func_ptr_anon_0 :: #type proc(action: ^Action) -> cstring
		et_name_func_ptr_anon_199 :: #type proc(drive: ^Drive) -> cstring
		et_name_func_ptr_anon_30 :: #type proc(appinfo: ^AppInfo) -> cstring
		et_name_func_ptr_anon_458 :: #type proc(mount: ^Mount) -> cstring
		et_name_func_ptr_anon_711 :: #type proc(volume: ^Volume) -> cstring
		et_native_size_func_ptr_anon_426 :: #type proc(address: ^SocketAddress) -> glib.ssize
		et_negotiated_protocol_func_ptr_anon_236 :: #type proc(conn: ^DtlsConnection) -> cstring
		et_negotiated_protocol_func_ptr_anon_661 :: #type proc(conn: ^TlsConnection) -> cstring
		et_next_func_ptr_anon_453 :: #type proc(iter: ^MenuAttributeIter, out_name: ^cstring, value: ^^glib.Variant) -> glib.boolean
		et_next_func_ptr_anon_454 :: #type proc(iter: ^MenuLinkIter, out_link: ^cstring, value: ^^MenuModel) -> glib.boolean
		et_object_func_ptr_anon_169 :: #type proc(interface_: ^DBusInterface) -> ^DBusObject
		et_object_func_ptr_anon_184 :: #type proc(manager: ^DBusObjectManager, object_path: cstring) -> ^DBusObject
		et_object_path_func_ptr_anon_177 :: #type proc(object: ^DBusObject) -> cstring
		et_object_path_func_ptr_anon_182 :: #type proc(manager: ^DBusObjectManager) -> cstring
		et_objects_func_ptr_anon_183 :: #type proc(manager: ^DBusObjectManager) -> ^glib.List
		et_output_stream_func_ptr_anon_370 :: #type proc(stream: ^IOStream) -> ^OutputStream
		et_parameter_type_func_ptr_anon_1 :: #type proc(action: ^Action) -> ^glib.VariantType
		et_parent_func_ptr_anon_253 :: #type proc(file: ^File) -> ^File
		et_parse_name_func_ptr_anon_252 :: #type proc(file: ^File) -> cstring
		et_path_func_ptr_anon_250 :: #type proc(file: ^File) -> cstring
		et_properties_func_ptr_anon_174 :: #type proc(interface_: ^DBusInterfaceSkeleton) -> ^glib.Variant
		et_relative_path_func_ptr_anon_255 :: #type proc(parent: ^File, descendant: ^File) -> cstring
		et_root_func_ptr_anon_457 :: #type proc(mount: ^Mount) -> ^File
		et_server_connection_type_func_ptr_anon_649 :: #type proc() -> gobj.Type
		et_size_func_ptr_anon_616 :: #type proc(message: ^SocketControlMessage) -> glib.size
		et_sort_key_func_ptr_anon_225 :: #type proc(drive: ^Drive) -> cstring
		et_sort_key_func_ptr_anon_480 :: #type proc(mount: ^Mount) -> cstring
		et_sort_key_func_ptr_anon_728 :: #type proc(volume: ^Volume) -> cstring
		et_source_object_func_ptr_anon_83 :: #type proc(res: ^AsyncResult) -> ^gobj.Object
		et_start_stop_type_func_ptr_anon_214 :: #type proc(drive: ^Drive) -> DriveStartStopType
		et_startup_notify_id_func_ptr_anon_53 :: #type proc(context_p: ^AppLaunchContext, info: ^AppInfo, files: ^glib.List) -> cstring
		et_state_func_ptr_anon_5 :: #type proc(action: ^Action) -> ^glib.Variant
		et_state_hint_func_ptr_anon_3 :: #type proc(action: ^Action) -> ^glib.Variant
		et_state_type_func_ptr_anon_2 :: #type proc(action: ^Action) -> ^glib.VariantType
		et_stdin_func_ptr_anon_77 :: #type proc(cmdline: ^ApplicationCommandLine) -> ^InputStream
		et_supported_types_func_ptr_anon_49 :: #type proc(appinfo: ^AppInfo) -> ^cstring
		et_supported_uri_schemes_func_ptr_anon_695 :: #type proc(vfs: ^Vfs) -> ^cstring
		et_symbolic_icon_func_ptr_anon_226 :: #type proc(drive: ^Drive) -> ^Icon
		et_symbolic_icon_func_ptr_anon_481 :: #type proc(mount: ^Mount) -> ^Icon
		et_symbolic_icon_func_ptr_anon_729 :: #type proc(volume: ^Volume) -> ^Icon
		et_type_func_ptr_anon_618 :: #type proc(message: ^SocketControlMessage) -> i32
		et_uri_func_ptr_anon_251 :: #type proc(file: ^File) -> cstring
		et_uri_scheme_func_ptr_anon_248 :: #type proc(file: ^File) -> cstring
		et_user_data_func_ptr_anon_82 :: #type proc(res: ^AsyncResult) -> glib.pointer
		et_uuid_func_ptr_anon_460 :: #type proc(mount: ^Mount) -> cstring
		et_uuid_func_ptr_anon_713 :: #type proc(volume: ^Volume) -> cstring
		et_value_func_ptr_anon_682 :: #type proc(password: ^TlsPassword, length: ^glib.size) -> ^glib.uchar
		et_volume_for_uuid_func_ptr_anon_511 :: #type proc(volume_monitor: ^VolumeMonitor, uuid: cstring) -> ^Volume
		et_volume_func_ptr_anon_461 :: #type proc(mount: ^Mount) -> ^Volume
		et_volumes_func_ptr_anon_202 :: #type proc(drive: ^Drive) -> ^glib.List
		et_volumes_func_ptr_anon_509 :: #type proc(volume_monitor: ^VolumeMonitor) -> ^glib.List
		et_vtable_func_ptr_anon_173 :: #type proc(interface_: ^DBusInterfaceSkeleton) -> ^DBusInterfaceVTable
		event_func_ptr_anon_602 :: #type proc(client: ^SocketClient, event: SocketClientEvent, connectable: ^SocketConnectable, connection: ^IOStream)
		event_func_ptr_anon_627 :: #type proc(listener: ^SocketListener, event: SocketListenerEvent, socket: ^Socket)
		fill_async_func_ptr_anon_103 :: #type proc(stream: ^BufferedInputStream, count: glib.ssize, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		fill_finish_func_ptr_anon_104 :: #type proc(stream: ^BufferedInputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
		fill_func_ptr_anon_102 :: #type proc(stream: ^BufferedInputStream, count: glib.ssize, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
		find_enclosing_mount_async_func_ptr_anon_268 :: #type proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		find_enclosing_mount_finish_func_ptr_anon_269 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^Mount
		find_enclosing_mount_func_ptr_anon_267 :: #type proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^Mount
		flush_async_func_ptr_anon_118 :: #type proc(stream: ^OutputStream, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		flush_finish_func_ptr_anon_119 :: #type proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		flush_func_ptr_anon_112 :: #type proc(stream: ^OutputStream, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		flush_func_ptr_anon_175 :: #type proc(interface_: ^DBusInterfaceSkeleton)
		from_tokens_func_ptr_anon_241 :: #type proc(tokens: [^]cstring, num_tokens: glib.int_, version: glib.int_, error: ^^glib.Error) -> ^Icon
		handle_local_options_func_ptr_anon_73 :: #type proc(application: ^Application, options: ^glib.VariantDict) -> glib.int_
		handshake_async_func_ptr_anon_230 :: #type proc(conn: ^DtlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		handshake_async_func_ptr_anon_658 :: #type proc(conn: ^TlsConnection, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		handshake_finish_func_ptr_anon_231 :: #type proc(conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		handshake_finish_func_ptr_anon_659 :: #type proc(conn: ^TlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		handshake_func_ptr_anon_229 :: #type proc(conn: ^DtlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		handshake_func_ptr_anon_657 :: #type proc(conn: ^TlsConnection, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		has_action_func_ptr_anon_8 :: #type proc(action_group: ^ActionGroup, action_name: cstring) -> glib.boolean
		has_media_func_ptr_anon_204 :: #type proc(drive: ^Drive) -> glib.boolean
		has_uri_scheme_func_ptr_anon_247 :: #type proc(file: ^File, uri_scheme: cstring) -> glib.boolean
		has_volumes_func_ptr_anon_201 :: #type proc(drive: ^Drive) -> glib.boolean
		hash_func_ptr_anon_238 :: #type proc(icon: ^Icon) -> glib.uint_
		hash_func_ptr_anon_244 :: #type proc(file: ^File) -> glib.uint_
		incoming_func_ptr_anon_633 :: #type proc(service: ^SocketService, connection: ^SocketConnection, source_object: ^gobj.Object) -> glib.boolean
		init_async_func_ptr_anon_80 :: #type proc(initable: ^AsyncInitable, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		init_finish_func_ptr_anon_81 :: #type proc(initable: ^AsyncInitable, res: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		init_func_ptr_anon_79 :: #type proc(initable: ^Initable, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		interface_added_func_ptr_anon_180 :: #type proc(object: ^DBusObject, interface_: ^DBusInterface)
		interface_added_func_ptr_anon_188 :: #type proc(manager: ^DBusObjectManager, object: ^DBusObject, interface_: ^DBusInterface)
		interface_proxy_properties_changed_func_ptr_anon_191 :: #type proc(manager: ^DBusObjectManagerClient, object_proxy: ^DBusObjectProxy, interface_proxy: ^DBusProxy, changed_properties: ^glib.Variant, invalidated_properties: [^]cstring)
		interface_proxy_signal_func_ptr_anon_190 :: #type proc(manager: ^DBusObjectManagerClient, object_proxy: ^DBusObjectProxy, interface_proxy: ^DBusProxy, sender_name: cstring, signal_name: cstring, parameters: ^glib.Variant)
		interface_removed_func_ptr_anon_181 :: #type proc(object: ^DBusObject, interface_: ^DBusInterface)
		interface_removed_func_ptr_anon_189 :: #type proc(manager: ^DBusObjectManager, object: ^DBusObject, interface_: ^DBusInterface)
		is_active_func_ptr_anon_692 :: #type proc(vfs: ^Vfs) -> glib.boolean
		is_media_check_automatic_func_ptr_anon_205 :: #type proc(drive: ^Drive) -> glib.boolean
		is_media_removable_func_ptr_anon_203 :: #type proc(drive: ^Drive) -> glib.boolean
		is_mutable_func_ptr_anon_445 :: #type proc(model: ^MenuModel) -> glib.boolean
		is_native_func_ptr_anon_246 :: #type proc(file: ^File) -> glib.boolean
		is_readable_func_ptr_anon_534 :: #type proc(stream: ^PollableInputStream) -> glib.boolean
		is_removable_func_ptr_anon_227 :: #type proc(drive: ^Drive) -> glib.boolean
		is_supported_func_ptr_anon_507 :: #type proc() -> glib.boolean
		is_supported_func_ptr_anon_556 :: #type proc(resolver: ^ProxyResolver) -> glib.boolean
		is_tagged_func_ptr_anon_84 :: #type proc(res: ^AsyncResult, source_tag: glib.pointer) -> glib.boolean
		is_writable_func_ptr_anon_538 :: #type proc(stream: ^PollableOutputStream) -> glib.boolean
		iterate_item_attributes_func_ptr_anon_448 :: #type proc(model: ^MenuModel, item_index: glib.int_) -> ^MenuAttributeIter
		iterate_item_links_func_ptr_anon_451 :: #type proc(model: ^MenuModel, item_index: glib.int_) -> ^MenuLinkIter
		launch_failed_func_ptr_anon_54 :: #type proc(context_p: ^AppLaunchContext, startup_notify_id: cstring)
		launch_func_ptr_anon_34 :: #type proc(appinfo: ^AppInfo, files: ^glib.List, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean
		launch_started_func_ptr_anon_56 :: #type proc(context_p: ^AppLaunchContext, info: ^AppInfo, platform_data: ^glib.Variant)
		launch_uris_async_func_ptr_anon_50 :: #type proc(appinfo: ^AppInfo, uris: ^glib.List, context_p: ^AppLaunchContext, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		launch_uris_finish_func_ptr_anon_51 :: #type proc(appinfo: ^AppInfo, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		launch_uris_func_ptr_anon_37 :: #type proc(appinfo: ^AppInfo, uris: ^glib.List, context_p: ^AppLaunchContext, error: ^^glib.Error) -> glib.boolean
		launched_func_ptr_anon_55 :: #type proc(context_p: ^AppLaunchContext, info: ^AppInfo, platform_data: ^glib.Variant)
		list_actions_func_ptr_anon_9 :: #type proc(action_group: ^ActionGroup) -> ^cstring
		load_async_func_ptr_anon_432 :: #type proc(icon: ^LoadableIcon, size_p: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		load_finish_func_ptr_anon_433 :: #type proc(icon: ^LoadableIcon, res: ^AsyncResult, type: ^cstring, error: ^^glib.Error) -> ^InputStream
		load_func_ptr_anon_431 :: #type proc(icon: ^LoadableIcon, size_p: i32, type: ^cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^InputStream
		local_command_line_func_ptr_anon_64 :: #type proc(application: ^Application, arguments: ^[^]cstring, exit_status: ^i32) -> glib.boolean
		local_file_add_info_func_ptr_anon_697 :: #type proc(vfs: ^Vfs, filename: cstring, device: glib.uint64, attribute_matcher: ^FileAttributeMatcher, info: ^FileInfo, cancellable: ^Cancellable, extra_data: ^glib.pointer, free_extra_data: ^glib.DestroyNotify)
		local_file_moved_func_ptr_anon_701 :: #type proc(vfs: ^Vfs, source: cstring, dest: cstring)
		local_file_removed_func_ptr_anon_700 :: #type proc(vfs: ^Vfs, filename: cstring)
		local_file_set_attributes_func_ptr_anon_699 :: #type proc(vfs: ^Vfs, filename: cstring, info: ^FileInfo, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		lookup_action_func_ptr_anon_22 :: #type proc(action_map: ^ActionMap, action_name: cstring) -> ^Action
		lookup_async_func_ptr_anon_558 :: #type proc(resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_by_address_async_func_ptr_anon_567 :: #type proc(resolver: ^Resolver, address: ^InetAddress, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_by_address_finish_func_ptr_anon_568 :: #type proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> cstring
		lookup_by_address_func_ptr_anon_566 :: #type proc(resolver: ^Resolver, address: ^InetAddress, cancellable: ^Cancellable, error: ^^glib.Error) -> cstring
		lookup_by_name_async_func_ptr_anon_564 :: #type proc(resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_by_name_finish_func_ptr_anon_565 :: #type proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
		lookup_by_name_func_ptr_anon_563 :: #type proc(resolver: ^Resolver, hostname: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
		lookup_by_name_with_flags_async_func_ptr_anon_575 :: #type proc(resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_by_name_with_flags_finish_func_ptr_anon_576 :: #type proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
		lookup_by_name_with_flags_func_ptr_anon_577 :: #type proc(resolver: ^Resolver, hostname: cstring, flags: ResolverNameLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
		lookup_certificate_for_handle_async_func_ptr_anon_668 :: #type proc(self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_certificate_for_handle_finish_func_ptr_anon_669 :: #type proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate
		lookup_certificate_for_handle_func_ptr_anon_667 :: #type proc(self: ^TlsDatabase, handle: cstring, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate
		lookup_certificate_issuer_async_func_ptr_anon_671 :: #type proc(self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_certificate_issuer_finish_func_ptr_anon_672 :: #type proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^TlsCertificate
		lookup_certificate_issuer_func_ptr_anon_670 :: #type proc(self: ^TlsDatabase, certificate: ^TlsCertificate, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^TlsCertificate
		lookup_certificates_issued_by_async_func_ptr_anon_674 :: #type proc(self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_certificates_issued_by_finish_func_ptr_anon_675 :: #type proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
		lookup_certificates_issued_by_func_ptr_anon_673 :: #type proc(self: ^TlsDatabase, issuer_raw_dn: ^glib.ByteArray, interaction: ^TlsInteraction, flags: TlsDatabaseLookupFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
		lookup_finish_func_ptr_anon_559 :: #type proc(resolver: ^ProxyResolver, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring
		lookup_func_ptr_anon_557 :: #type proc(resolver: ^ProxyResolver, uri: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring
		lookup_records_async_func_ptr_anon_573 :: #type proc(resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_records_finish_func_ptr_anon_574 :: #type proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
		lookup_records_func_ptr_anon_572 :: #type proc(resolver: ^Resolver, rrname: cstring, record_type: ResolverRecordType, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
		lookup_service_async_func_ptr_anon_570 :: #type proc(resolver: ^Resolver, rrname: cstring, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		lookup_service_finish_func_ptr_anon_571 :: #type proc(resolver: ^Resolver, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
		lookup_service_func_ptr_anon_569 :: #type proc(resolver: ^Resolver, rrname: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^glib.List
		low_memory_warning_func_ptr_anon_439 :: #type proc(monitor: ^MemoryMonitor, level: MemoryMonitorWarningLevel)
		make_directory_async_func_ptr_anon_302 :: #type proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		make_directory_finish_func_ptr_anon_303 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		make_directory_func_ptr_anon_301 :: #type proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		make_symbolic_link_async_func_ptr_anon_305 :: #type proc(file: ^File, symlink_value: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		make_symbolic_link_finish_func_ptr_anon_306 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		make_symbolic_link_func_ptr_anon_304 :: #type proc(file: ^File, symlink_value: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		measure_disk_usage_async_func_ptr_anon_343 :: #type proc(file: ^File, flags: FileMeasureFlags, io_priority: glib.int_, cancellable: ^Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer)
		measure_disk_usage_finish_func_ptr_anon_344 :: #type proc(file: ^File, result: ^AsyncResult, disk_usage: ^glib.uint64, num_dirs: ^glib.uint64, num_files: ^glib.uint64, error: ^^glib.Error) -> glib.boolean
		measure_disk_usage_func_ptr_anon_342 :: #type proc(file: ^File, flags: FileMeasureFlags, cancellable: ^Cancellable, progress_callback: FileMeasureProgressCallback, progress_data: glib.pointer, disk_usage: ^glib.uint64, num_dirs: ^glib.uint64, num_files: ^glib.uint64, error: ^^glib.Error) -> glib.boolean
		monitor_dir_func_ptr_anon_321 :: #type proc(file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor
		monitor_file_func_ptr_anon_322 :: #type proc(file: ^File, flags: FileMonitorFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileMonitor
		mount_added_func_ptr_anon_500 :: #type proc(volume_monitor: ^VolumeMonitor, mount: ^Mount)
		mount_changed_func_ptr_anon_503 :: #type proc(volume_monitor: ^VolumeMonitor, mount: ^Mount)
		mount_enclosing_volume_finish_func_ptr_anon_320 :: #type proc(location: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		mount_enclosing_volume_func_ptr_anon_319 :: #type proc(location: ^File, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		mount_finish_func_ptr_anon_719 :: #type proc(volume: ^Volume, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		mount_fn_func_ptr_anon_718 :: #type proc(volume: ^Volume, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		mount_mountable_finish_func_ptr_anon_314 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> ^File
		mount_mountable_func_ptr_anon_313 :: #type proc(file: ^File, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		mount_pre_unmount_func_ptr_anon_502 :: #type proc(volume_monitor: ^VolumeMonitor, mount: ^Mount)
		mount_removed_func_ptr_anon_501 :: #type proc(volume_monitor: ^VolumeMonitor, mount: ^Mount)
		move_async_func_ptr_anon_311 :: #type proc(source: ^File, destination: ^File, flags: FileCopyFlags, io_priority: i32, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, callback: AsyncReadyCallback, user_data: glib.pointer)
		move_finish_func_ptr_anon_312 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		move_func_ptr_anon_310 :: #type proc(source: ^File, destination: ^File, flags: FileCopyFlags, cancellable: ^Cancellable, progress_callback: FileProgressCallback, progress_callback_data: glib.pointer, error: ^^glib.Error) -> glib.boolean
		name_lost_func_ptr_anon_74 :: #type proc(application: ^Application) -> glib.boolean
		network_changed_func_ptr_anon_523 :: #type proc(monitor: ^NetworkMonitor, network_available: glib.boolean)
		next_async_func_ptr_anon_547 :: #type proc(enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		next_file_func_ptr_anon_345 :: #type proc(enumerator: ^FileEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
		next_files_async_func_ptr_anon_347 :: #type proc(enumerator: ^FileEnumerator, num_files: i32, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		next_files_finish_func_ptr_anon_348 :: #type proc(enumerator: ^FileEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^glib.List
		next_finish_func_ptr_anon_548 :: #type proc(enumerator: ^SocketAddressEnumerator, result: ^AsyncResult, error: ^^glib.Error) -> ^SocketAddress
		next_func_ptr_anon_546 :: #type proc(enumerator: ^SocketAddressEnumerator, cancellable: ^Cancellable, error: ^^glib.Error) -> ^SocketAddress
		object_added_func_ptr_anon_186 :: #type proc(manager: ^DBusObjectManager, object: ^DBusObject)
		object_removed_func_ptr_anon_187 :: #type proc(manager: ^DBusObjectManager, object: ^DBusObject)
		open_func_ptr_anon_62 :: #type proc(application: ^Application, files: [^]^File, n_files: glib.int_, hint: cstring)
		open_readwrite_async_func_ptr_anon_324 :: #type proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		open_readwrite_finish_func_ptr_anon_325 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileIOStream
		open_readwrite_func_ptr_anon_323 :: #type proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream
		ot_completion_data_func_ptr_anon_405 :: #type proc(filename_completer: ^FilenameCompleter)
		parse_name_func_ptr_anon_696 :: #type proc(vfs: ^Vfs, parse_name: cstring) -> ^File
		poll_for_media_finish_func_ptr_anon_211 :: #type proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		poll_for_media_func_ptr_anon_210 :: #type proc(drive: ^Drive, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		poll_mountable_finish_func_ptr_anon_341 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		poll_mountable_func_ptr_anon_340 :: #type proc(file: ^File, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		pre_unmount_func_ptr_anon_474 :: #type proc(mount: ^Mount)
		prefix_matches_func_ptr_anon_254 :: #type proc(prefix: ^File, file: ^File) -> glib.boolean
		print_literal_func_ptr_anon_75 :: #type proc(cmdline: ^ApplicationCommandLine, message: cstring)
		printerr_literal_func_ptr_anon_76 :: #type proc(cmdline: ^ApplicationCommandLine, message: cstring)
		proxy_enumerate_func_ptr_anon_608 :: #type proc(connectable: ^SocketConnectable) -> ^SocketAddressEnumerator
		query_action_func_ptr_anon_21 :: #type proc(action_group: ^ActionGroup, action_name: cstring, enabled: ^glib.boolean, parameter_type: ^^glib.VariantType, state_type: ^^glib.VariantType, state_hint: ^^glib.Variant, state: ^^glib.Variant) -> glib.boolean
		query_filesystem_info_async_func_ptr_anon_265 :: #type proc(file: ^File, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		query_filesystem_info_finish_func_ptr_anon_266 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
		query_filesystem_info_func_ptr_anon_264 :: #type proc(file: ^File, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
		query_info_async_func_ptr_anon_262 :: #type proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		query_info_async_func_ptr_anon_362 :: #type proc(stream: ^FileInputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		query_info_async_func_ptr_anon_390 :: #type proc(stream: ^FileIOStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		query_info_async_func_ptr_anon_415 :: #type proc(stream: ^FileOutputStream, attributes: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		query_info_finish_func_ptr_anon_263 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
		query_info_finish_func_ptr_anon_363 :: #type proc(stream: ^FileInputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
		query_info_finish_func_ptr_anon_391 :: #type proc(stream: ^FileIOStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
		query_info_finish_func_ptr_anon_416 :: #type proc(stream: ^FileOutputStream, result: ^AsyncResult, error: ^^glib.Error) -> ^FileInfo
		query_info_func_ptr_anon_261 :: #type proc(file: ^File, attributes: cstring, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
		query_info_func_ptr_anon_361 :: #type proc(stream: ^FileInputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
		query_info_func_ptr_anon_389 :: #type proc(stream: ^FileIOStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
		query_info_func_ptr_anon_414 :: #type proc(stream: ^FileOutputStream, attributes: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInfo
		query_settable_attributes_func_ptr_anon_273 :: #type proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileAttributeInfoList
		query_writable_namespaces_func_ptr_anon_276 :: #type proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileAttributeInfoList
		quit_mainloop_func_ptr_anon_68 :: #type proc(application: ^Application)
		read_async_func_ptr_anon_284 :: #type proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		read_async_func_ptr_anon_88 :: #type proc(stream: ^InputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		read_finish_func_ptr_anon_285 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileInputStream
		read_finish_func_ptr_anon_89 :: #type proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
		read_fn_func_ptr_anon_283 :: #type proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileInputStream
		read_fn_func_ptr_anon_85 :: #type proc(stream: ^InputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
		read_nonblocking_func_ptr_anon_536 :: #type proc(stream: ^PollableInputStream, buffer: rawptr, count: glib.size, error: ^^glib.Error) -> glib.ssize
		receive_messages_func_ptr_anon_153 :: #type proc(datagram_based: ^DatagramBased, messages: [^]InputMessage, num_messages: glib.uint_, flags: glib.int_, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_
		release_async_func_ptr_anon_531 :: #type proc(permission: ^Permission, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		release_finish_func_ptr_anon_532 :: #type proc(permission: ^Permission, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		release_func_ptr_anon_530 :: #type proc(permission: ^Permission, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		reload_func_ptr_anon_562 :: #type proc(resolver: ^Resolver)
		remount_finish_func_ptr_anon_470 :: #type proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		remount_func_ptr_anon_469 :: #type proc(mount: ^Mount, flags: MountMountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		remove_action_func_ptr_anon_24 :: #type proc(action_map: ^ActionMap, action_name: cstring)
		remove_supports_type_func_ptr_anon_43 :: #type proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean
		removed_func_ptr_anon_710 :: #type proc(volume: ^Volume)
		replace_async_func_ptr_anon_293 :: #type proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		replace_finish_func_ptr_anon_294 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileOutputStream
		replace_func_ptr_anon_292 :: #type proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileOutputStream
		replace_readwrite_async_func_ptr_anon_330 :: #type proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		replace_readwrite_finish_func_ptr_anon_331 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^FileIOStream
		replace_readwrite_func_ptr_anon_329 :: #type proc(file: ^File, etag: cstring, make_backup: glib.boolean, flags: FileCreateFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> ^FileIOStream
		reply_func_ptr_anon_484 :: #type proc(op: ^MountOperation, result: MountOperationResult)
		request_certificate_async_func_ptr_anon_680 :: #type proc(interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		request_certificate_finish_func_ptr_anon_681 :: #type proc(interaction: ^TlsInteraction, result: ^AsyncResult, error: ^^glib.Error) -> TlsInteractionResult
		request_certificate_func_ptr_anon_679 :: #type proc(interaction: ^TlsInteraction, connection: ^TlsConnection, flags: TlsCertificateRequestFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsInteractionResult
		reset_func_ptr_anon_142 :: #type proc(converter: ^Converter)
		resolve_relative_path_func_ptr_anon_256 :: #type proc(file: ^File, relative_path: cstring) -> ^File
		run_func_ptr_anon_640 :: #type proc(service: ^ThreadedSocketService, connection: ^SocketConnection, source_object: ^gobj.Object) -> glib.boolean
		run_mainloop_func_ptr_anon_69 :: #type proc(application: ^Application)
		seek_func_ptr_anon_360 :: #type proc(stream: ^FileInputStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		seek_func_ptr_anon_386 :: #type proc(stream: ^FileIOStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		seek_func_ptr_anon_411 :: #type proc(stream: ^FileOutputStream, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		seek_func_ptr_anon_580 :: #type proc(seekable: ^Seekable, offset_p: glib.offset, type: glib.SeekType, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		send_messages_func_ptr_anon_154 :: #type proc(datagram_based: ^DatagramBased, messages: [^]OutputMessage, num_messages: glib.uint_, flags: glib.int_, timeout: glib.int64, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.int_
		serialize_func_ptr_anon_242 :: #type proc(icon: ^Icon) -> ^glib.Variant
		serialize_func_ptr_anon_619 :: #type proc(message: ^SocketControlMessage, data: glib.pointer)
		set_advertised_protocols_func_ptr_anon_235 :: #type proc(conn: ^DtlsConnection, protocols: [^]cstring)
		set_as_default_for_extension_func_ptr_anon_40 :: #type proc(appinfo: ^AppInfo, extension: cstring, error: ^^glib.Error) -> glib.boolean
		set_as_default_for_type_func_ptr_anon_39 :: #type proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean
		set_as_last_used_for_type_func_ptr_anon_48 :: #type proc(appinfo: ^AppInfo, content_type: cstring, error: ^^glib.Error) -> glib.boolean
		set_attribute_func_ptr_anon_279 :: #type proc(file: ^File, attribute: cstring, type: FileAttributeType, value_p: glib.pointer, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		set_attributes_async_func_ptr_anon_281 :: #type proc(file: ^File, info: ^FileInfo, flags: FileQueryInfoFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		set_attributes_finish_func_ptr_anon_282 :: #type proc(file: ^File, result: ^AsyncResult, info: ^^FileInfo, error: ^^glib.Error) -> glib.boolean
		set_attributes_from_info_func_ptr_anon_280 :: #type proc(file: ^File, info: ^FileInfo, flags: FileQueryInfoFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		set_display_name_async_func_ptr_anon_271 :: #type proc(file: ^File, display_name: cstring, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		set_display_name_finish_func_ptr_anon_272 :: #type proc(file: ^File, res: ^AsyncResult, error: ^^glib.Error) -> ^File
		set_display_name_func_ptr_anon_270 :: #type proc(file: ^File, display_name: cstring, cancellable: ^Cancellable, error: ^^glib.Error) -> ^File
		set_object_func_ptr_anon_170 :: #type proc(interface_: ^DBusInterface, object: ^DBusObject)
		set_value_func_ptr_anon_683 :: #type proc(password: ^TlsPassword, value: ^glib.uchar, length: glib.ssize, destroy: glib.DestroyNotify)
		should_automount_func_ptr_anon_724 :: #type proc(volume: ^Volume) -> glib.boolean
		should_show_func_ptr_anon_38 :: #type proc(appinfo: ^AppInfo) -> glib.boolean
		show_processes_func_ptr_anon_486 :: #type proc(op: ^MountOperation, message: cstring, processes: ^glib.Array, choices: [^]cstring)
		show_unmount_progress_func_ptr_anon_487 :: #type proc(op: ^MountOperation, message: cstring, time_left: glib.int64, bytes_left: glib.int64)
		shutdown_async_func_ptr_anon_233 :: #type proc(conn: ^DtlsConnection, shutdown_read: glib.boolean, shutdown_write: glib.boolean, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		shutdown_finish_func_ptr_anon_234 :: #type proc(conn: ^DtlsConnection, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		shutdown_func_ptr_anon_232 :: #type proc(conn: ^DtlsConnection, shutdown_read: glib.boolean, shutdown_write: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		shutdown_func_ptr_anon_70 :: #type proc(application: ^Application)
		skip_async_func_ptr_anon_90 :: #type proc(stream: ^InputStream, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		skip_finish_func_ptr_anon_91 :: #type proc(stream: ^InputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
		skip_func_ptr_anon_86 :: #type proc(stream: ^InputStream, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
		splice_async_func_ptr_anon_116 :: #type proc(stream: ^OutputStream, source: ^InputStream, flags: OutputStreamSpliceFlags, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		splice_finish_func_ptr_anon_117 :: #type proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
		splice_func_ptr_anon_111 :: #type proc(stream: ^OutputStream, source: ^InputStream, flags: OutputStreamSpliceFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
		start_finish_func_ptr_anon_218 :: #type proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		start_func_ptr_anon_217 :: #type proc(drive: ^Drive, flags: DriveStartFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		start_mountable_finish_func_ptr_anon_333 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		start_mountable_func_ptr_anon_332 :: #type proc(file: ^File, flags: DriveStartFlags, start_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		startup_func_ptr_anon_60 :: #type proc(application: ^Application)
		stop_button_func_ptr_anon_222 :: #type proc(drive: ^Drive)
		stop_finish_func_ptr_anon_221 :: #type proc(drive: ^Drive, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		stop_func_ptr_anon_220 :: #type proc(drive: ^Drive, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		stop_mountable_finish_func_ptr_anon_335 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		stop_mountable_func_ptr_anon_334 :: #type proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		supports_dtls_func_ptr_anon_652 :: #type proc(backend: ^TlsBackend) -> glib.boolean
		supports_files_func_ptr_anon_36 :: #type proc(appinfo: ^AppInfo) -> glib.boolean
		supports_hostname_func_ptr_anon_545 :: #type proc(proxy: ^Proxy) -> glib.boolean
		supports_tls_func_ptr_anon_646 :: #type proc(backend: ^TlsBackend) -> glib.boolean
		supports_uris_func_ptr_anon_35 :: #type proc(appinfo: ^AppInfo) -> glib.boolean
		tell_func_ptr_anon_358 :: #type proc(stream: ^FileInputStream) -> glib.offset
		tell_func_ptr_anon_384 :: #type proc(stream: ^FileIOStream) -> glib.offset
		tell_func_ptr_anon_409 :: #type proc(stream: ^FileOutputStream) -> glib.offset
		tell_func_ptr_anon_578 :: #type proc(seekable: ^Seekable) -> glib.offset
		to_bytes_func_ptr_anon_424 :: #type proc(address: ^InetAddress) -> ^glib.uint8
		to_native_func_ptr_anon_427 :: #type proc(address: ^SocketAddress, dest: glib.pointer, destlen: glib.size, error: ^^glib.Error) -> glib.boolean
		to_string_func_ptr_anon_423 :: #type proc(address: ^InetAddress) -> cstring
		to_string_func_ptr_anon_609 :: #type proc(connectable: ^SocketConnectable) -> cstring
		to_tokens_func_ptr_anon_240 :: #type proc(icon: ^Icon, tokens: ^glib.PtrArray, out_version: ^glib.int_) -> glib.boolean
		trash_async_func_ptr_anon_299 :: #type proc(file: ^File, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		trash_finish_func_ptr_anon_300 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		trash_func_ptr_anon_298 :: #type proc(file: ^File, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		truncate_fn_func_ptr_anon_388 :: #type proc(stream: ^FileIOStream, size_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		truncate_fn_func_ptr_anon_413 :: #type proc(stream: ^FileOutputStream, size_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		truncate_fn_func_ptr_anon_582 :: #type proc(seekable: ^Seekable, offset_p: glib.offset, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		uess_content_type_finish_func_ptr_anon_472 :: #type proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> ^cstring
		uess_content_type_func_ptr_anon_471 :: #type proc(mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		uess_content_type_sync_func_ptr_anon_473 :: #type proc(mount: ^Mount, force_rescan: glib.boolean, cancellable: ^Cancellable, error: ^^glib.Error) -> ^cstring
		unmount_finish_func_ptr_anon_466 :: #type proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		unmount_func_ptr_anon_465 :: #type proc(mount: ^Mount, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		unmount_mountable_finish_func_ptr_anon_316 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		unmount_mountable_func_ptr_anon_315 :: #type proc(file: ^File, flags: MountUnmountFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		unmount_mountable_with_operation_finish_func_ptr_anon_337 :: #type proc(file: ^File, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		unmount_mountable_with_operation_func_ptr_anon_336 :: #type proc(file: ^File, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		unmount_with_operation_finish_func_ptr_anon_476 :: #type proc(mount: ^Mount, result: ^AsyncResult, error: ^^glib.Error) -> glib.boolean
		unmount_with_operation_func_ptr_anon_475 :: #type proc(mount: ^Mount, flags: MountUnmountFlags, mount_operation: ^MountOperation, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		unmounted_func_ptr_anon_456 :: #type proc(mount: ^Mount)
		verify_chain_async_func_ptr_anon_664 :: #type proc(self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		verify_chain_finish_func_ptr_anon_665 :: #type proc(self: ^TlsDatabase, result: ^AsyncResult, error: ^^glib.Error) -> TlsCertificateFlags
		verify_chain_func_ptr_anon_663 :: #type proc(self: ^TlsDatabase, chain: ^TlsCertificate, purpose: cstring, identity: ^SocketConnectable, interaction: ^TlsInteraction, flags: TlsDatabaseVerifyFlags, cancellable: ^Cancellable, error: ^^glib.Error) -> TlsCertificateFlags
		verify_func_ptr_anon_655 :: #type proc(cert: ^TlsCertificate, identity: ^SocketConnectable, trusted_ca: ^TlsCertificate) -> TlsCertificateFlags
		volume_added_func_ptr_anon_497 :: #type proc(volume_monitor: ^VolumeMonitor, volume: ^Volume)
		volume_changed_func_ptr_anon_499 :: #type proc(volume_monitor: ^VolumeMonitor, volume: ^Volume)
		volume_removed_func_ptr_anon_498 :: #type proc(volume_monitor: ^VolumeMonitor, volume: ^Volume)
		writable_change_event_func_ptr_anon_585 :: #type proc(settings: ^Settings, key: glib.Quark) -> glib.boolean
		writable_changed_func_ptr_anon_583 :: #type proc(settings: ^Settings, key: cstring)
		write_async_func_ptr_anon_114 :: #type proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		write_finish_func_ptr_anon_115 :: #type proc(stream: ^OutputStream, result: ^AsyncResult, error: ^^glib.Error) -> glib.ssize
		write_fn_func_ptr_anon_110 :: #type proc(stream: ^OutputStream, buffer: rawptr, count: glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.ssize
		write_nonblocking_func_ptr_anon_540 :: #type proc(stream: ^PollableOutputStream, buffer: rawptr, count: glib.size, error: ^^glib.Error) -> glib.ssize
		writev_async_func_ptr_anon_123 :: #type proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, io_priority: i32, cancellable: ^Cancellable, callback: AsyncReadyCallback, user_data: glib.pointer)
		writev_finish_func_ptr_anon_124 :: #type proc(stream: ^OutputStream, result: ^AsyncResult, bytes_written: ^glib.size, error: ^^glib.Error) -> glib.boolean
		writev_fn_func_ptr_anon_122 :: #type proc(stream: ^OutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, cancellable: ^Cancellable, error: ^^glib.Error) -> glib.boolean
		writev_nonblocking_func_ptr_anon_541 :: #type proc(stream: ^PollableOutputStream, vectors: [^]OutputVector, n_vectors: glib.size, bytes_written: ^glib.size, error: ^^glib.Error) -> PollableReturn

	files:
		gio.odin
		patched.odin
		type_casts.odin
		wrapper.odin

	aliases of procedures: TYPE_FOO class types, error domains

		DBUS_ERROR :: dbus_error_quark
		IO_ERROR :: io_error_quark
		IO_TYPE_MODULE :: io_module_get_type
		TYPE_ACTION :: action_get_type
		TYPE_ACTION_GROUP :: action_group_get_type
		TYPE_ACTION_MAP :: action_map_get_type
		TYPE_APPLICATION :: application_get_type
		TYPE_APPLICATION_COMMAND_LINE :: application_command_line_get_type
		TYPE_APPLICATION_FLAGS :: application_flags_get_type
		TYPE_APP_INFO :: app_info_get_type
		TYPE_APP_INFO_CREATE_FLAGS :: app_info_create_flags_get_type
		TYPE_APP_INFO_MONITOR :: app_info_monitor_get_type
		TYPE_APP_LAUNCH_CONTEXT :: app_launch_context_get_type
		TYPE_ASK_PASSWORD_FLAGS :: ask_password_flags_get_type
		TYPE_ASYNC_INITABLE :: async_initable_get_type
		TYPE_ASYNC_RESULT :: async_result_get_type
		TYPE_BUFFERED_INPUT_STREAM :: buffered_input_stream_get_type
		TYPE_BUFFERED_OUTPUT_STREAM :: buffered_output_stream_get_type
		TYPE_BUS_NAME_OWNER_FLAGS :: bus_name_owner_flags_get_type
		TYPE_BUS_NAME_WATCHER_FLAGS :: bus_name_watcher_flags_get_type
		TYPE_BUS_TYPE :: bus_type_get_type
		TYPE_BYTES_ICON :: bytes_icon_get_type
		TYPE_CANCELLABLE :: cancellable_get_type
		TYPE_CHARSET_CONVERTER :: charset_converter_get_type
		TYPE_CONVERTER :: converter_get_type
		TYPE_CONVERTER_FLAGS :: converter_flags_get_type
		TYPE_CONVERTER_INPUT_STREAM :: converter_input_stream_get_type
		TYPE_CONVERTER_OUTPUT_STREAM :: converter_output_stream_get_type
		TYPE_CONVERTER_RESULT :: converter_result_get_type
		TYPE_CREDENTIALS :: credentials_get_type
		TYPE_CREDENTIALS_TYPE :: credentials_type_get_type
		TYPE_DATAGRAM_BASED :: datagram_based_get_type
		TYPE_DATA_INPUT_STREAM :: data_input_stream_get_type
		TYPE_DATA_OUTPUT_STREAM :: data_output_stream_get_type
		TYPE_DATA_STREAM_BYTE_ORDER :: data_stream_byte_order_get_type
		TYPE_DATA_STREAM_NEWLINE_TYPE :: data_stream_newline_type_get_type
		TYPE_DBUS_ACTION_GROUP :: dbus_action_group_get_type
		TYPE_DBUS_ANNOTATION_INFO :: dbus_annotation_info_get_type
		TYPE_DBUS_ARG_INFO :: dbus_arg_info_get_type
		TYPE_DBUS_AUTH_OBSERVER :: dbus_auth_observer_get_type
		TYPE_DBUS_CALL_FLAGS :: dbus_call_flags_get_type
		TYPE_DBUS_CAPABILITY_FLAGS :: dbus_capability_flags_get_type
		TYPE_DBUS_CONNECTION :: dbus_connection_get_type
		TYPE_DBUS_CONNECTION_FLAGS :: dbus_connection_flags_get_type
		TYPE_DBUS_ERROR :: dbus_error_get_type
		TYPE_DBUS_INTERFACE :: dbus_interface_get_type
		TYPE_DBUS_INTERFACE_INFO :: dbus_interface_info_get_type
		TYPE_DBUS_INTERFACE_SKELETON :: dbus_interface_skeleton_get_type
		TYPE_DBUS_INTERFACE_SKELETON_FLAGS :: dbus_interface_skeleton_flags_get_type
		TYPE_DBUS_MENU_MODEL :: dbus_menu_model_get_type
		TYPE_DBUS_MESSAGE :: dbus_message_get_type
		TYPE_DBUS_MESSAGE_BYTE_ORDER :: dbus_message_byte_order_get_type
		TYPE_DBUS_MESSAGE_FLAGS :: dbus_message_flags_get_type
		TYPE_DBUS_MESSAGE_HEADER_FIELD :: dbus_message_header_field_get_type
		TYPE_DBUS_MESSAGE_TYPE :: dbus_message_type_get_type
		TYPE_DBUS_METHOD_INFO :: dbus_method_info_get_type
		TYPE_DBUS_METHOD_INVOCATION :: dbus_method_invocation_get_type
		TYPE_DBUS_NODE_INFO :: dbus_node_info_get_type
		TYPE_DBUS_OBJECT :: dbus_object_get_type
		TYPE_DBUS_OBJECT_MANAGER :: dbus_object_manager_get_type
		TYPE_DBUS_OBJECT_MANAGER_CLIENT :: dbus_object_manager_client_get_type
		TYPE_DBUS_OBJECT_MANAGER_CLIENT_FLAGS :: dbus_object_manager_client_flags_get_type
		TYPE_DBUS_OBJECT_MANAGER_SERVER :: dbus_object_manager_server_get_type
		TYPE_DBUS_OBJECT_PROXY :: dbus_object_proxy_get_type
		TYPE_DBUS_OBJECT_SKELETON :: dbus_object_skeleton_get_type
		TYPE_DBUS_PROPERTY_INFO :: dbus_property_info_get_type
		TYPE_DBUS_PROPERTY_INFO_FLAGS :: dbus_property_info_flags_get_type
		TYPE_DBUS_PROXY :: dbus_proxy_get_type
		TYPE_DBUS_PROXY_FLAGS :: dbus_proxy_flags_get_type
		TYPE_DBUS_SEND_MESSAGE_FLAGS :: dbus_send_message_flags_get_type
		TYPE_DBUS_SERVER :: dbus_server_get_type
		TYPE_DBUS_SERVER_FLAGS :: dbus_server_flags_get_type
		TYPE_DBUS_SIGNAL_FLAGS :: dbus_signal_flags_get_type
		TYPE_DBUS_SIGNAL_INFO :: dbus_signal_info_get_type
		TYPE_DBUS_SUBTREE_FLAGS :: dbus_subtree_flags_get_type
		TYPE_DEBUG_CONTROLLER :: debug_controller_get_type
		TYPE_DEBUG_CONTROLLER_DBUS :: debug_controller_dbus_get_type
		TYPE_DRIVE :: drive_get_type
		TYPE_DRIVE_START_FLAGS :: drive_start_flags_get_type
		TYPE_DRIVE_START_STOP_TYPE :: drive_start_stop_type_get_type
		TYPE_DTLS_CLIENT_CONNECTION :: dtls_client_connection_get_type
		TYPE_DTLS_CONNECTION :: dtls_connection_get_type
		TYPE_DTLS_SERVER_CONNECTION :: dtls_server_connection_get_type
		TYPE_EMBLEM :: emblem_get_type
		TYPE_EMBLEMED_ICON :: emblemed_icon_get_type
		TYPE_EMBLEM_ORIGIN :: emblem_origin_get_type
		TYPE_FILE :: file_get_type
		TYPE_FILENAME_COMPLETER :: filename_completer_get_type
		TYPE_FILESYSTEM_PREVIEW_TYPE :: filesystem_preview_type_get_type
		TYPE_FILE_ATTRIBUTE_INFO_FLAGS :: file_attribute_info_flags_get_type
		TYPE_FILE_ATTRIBUTE_INFO_LIST :: file_attribute_info_list_get_type
		TYPE_FILE_ATTRIBUTE_MATCHER :: file_attribute_matcher_get_type
		TYPE_FILE_ATTRIBUTE_STATUS :: file_attribute_status_get_type
		TYPE_FILE_ATTRIBUTE_TYPE :: file_attribute_type_get_type
		TYPE_FILE_COPY_FLAGS :: file_copy_flags_get_type
		TYPE_FILE_CREATE_FLAGS :: file_create_flags_get_type
		TYPE_FILE_ENUMERATOR :: file_enumerator_get_type
		TYPE_FILE_ICON :: file_icon_get_type
		TYPE_FILE_INFO :: file_info_get_type
		TYPE_FILE_INPUT_STREAM :: file_input_stream_get_type
		TYPE_FILE_IO_STREAM :: file_io_stream_get_type
		TYPE_FILE_MEASURE_FLAGS :: file_measure_flags_get_type
		TYPE_FILE_MONITOR :: file_monitor_get_type
		TYPE_FILE_MONITOR_EVENT :: file_monitor_event_get_type
		TYPE_FILE_MONITOR_FLAGS :: file_monitor_flags_get_type
		TYPE_FILE_OUTPUT_STREAM :: file_output_stream_get_type
		TYPE_FILE_QUERY_INFO_FLAGS :: file_query_info_flags_get_type
		TYPE_FILE_TYPE :: file_type_get_type
		TYPE_FILTER_INPUT_STREAM :: filter_input_stream_get_type
		TYPE_FILTER_OUTPUT_STREAM :: filter_output_stream_get_type
		TYPE_ICON :: icon_get_type
		TYPE_INET_ADDRESS :: inet_address_get_type
		TYPE_INET_ADDRESS_MASK :: inet_address_mask_get_type
		TYPE_INET_SOCKET_ADDRESS :: inet_socket_address_get_type
		TYPE_INITABLE :: initable_get_type
		TYPE_INPUT_STREAM :: input_stream_get_type
		TYPE_IO_ERROR_ENUM :: io_error_enum_get_type
		TYPE_IO_MODULE_SCOPE_FLAGS :: io_module_scope_flags_get_type
		TYPE_IO_STREAM :: io_stream_get_type
		TYPE_IO_STREAM_SPLICE_FLAGS :: io_stream_splice_flags_get_type
		TYPE_LIST_MODEL :: list_model_get_type
		TYPE_LIST_STORE :: list_store_get_type
		TYPE_LOADABLE_ICON :: loadable_icon_get_type
		TYPE_MEMORY_INPUT_STREAM :: memory_input_stream_get_type
		TYPE_MEMORY_MONITOR :: memory_monitor_get_type
		TYPE_MEMORY_MONITOR_WARNING_LEVEL :: memory_monitor_warning_level_get_type
		TYPE_MEMORY_OUTPUT_STREAM :: memory_output_stream_get_type
		TYPE_MENU :: menu_get_type
		TYPE_MENU_ATTRIBUTE_ITER :: menu_attribute_iter_get_type
		TYPE_MENU_ITEM :: menu_item_get_type
		TYPE_MENU_LINK_ITER :: menu_link_iter_get_type
		TYPE_MENU_MODEL :: menu_model_get_type
		TYPE_MOUNT :: mount_get_type
		TYPE_MOUNT_MOUNT_FLAGS :: mount_mount_flags_get_type
		TYPE_MOUNT_OPERATION :: mount_operation_get_type
		TYPE_MOUNT_OPERATION_RESULT :: mount_operation_result_get_type
		TYPE_MOUNT_UNMOUNT_FLAGS :: mount_unmount_flags_get_type
		TYPE_NATIVE_SOCKET_ADDRESS :: native_socket_address_get_type
		TYPE_NATIVE_VOLUME_MONITOR :: native_volume_monitor_get_type
		TYPE_NETWORK_ADDRESS :: network_address_get_type
		TYPE_NETWORK_CONNECTIVITY :: network_connectivity_get_type
		TYPE_NETWORK_MONITOR :: network_monitor_get_type
		TYPE_NETWORK_SERVICE :: network_service_get_type
		TYPE_NOTIFICATION :: notification_get_type
		TYPE_NOTIFICATION_PRIORITY :: notification_priority_get_type
		TYPE_OUTPUT_STREAM :: output_stream_get_type
		TYPE_OUTPUT_STREAM_SPLICE_FLAGS :: output_stream_splice_flags_get_type
		TYPE_PASSWORD_SAVE :: password_save_get_type
		TYPE_PERMISSION :: permission_get_type
		TYPE_POLLABLE_INPUT_STREAM :: pollable_input_stream_get_type
		TYPE_POLLABLE_OUTPUT_STREAM :: pollable_output_stream_get_type
		TYPE_POLLABLE_RETURN :: pollable_return_get_type
		TYPE_POWER_PROFILE_MONITOR :: power_profile_monitor_get_type
		TYPE_PROPERTY_ACTION :: property_action_get_type
		TYPE_PROXY :: proxy_get_type
		TYPE_PROXY_ADDRESS :: proxy_address_get_type
		TYPE_PROXY_ADDRESS_ENUMERATOR :: proxy_address_enumerator_get_type
		TYPE_PROXY_RESOLVER :: proxy_resolver_get_type
		TYPE_REMOTE_ACTION_GROUP :: remote_action_group_get_type
		TYPE_RESOLVER :: resolver_get_type
		TYPE_RESOLVER_ERROR :: resolver_error_get_type
		TYPE_RESOLVER_NAME_LOOKUP_FLAGS :: resolver_name_lookup_flags_get_type
		TYPE_RESOLVER_RECORD_TYPE :: resolver_record_type_get_type
		TYPE_RESOURCE :: resource_get_type
		TYPE_RESOURCE_ERROR :: resource_error_get_type
		TYPE_RESOURCE_FLAGS :: resource_flags_get_type
		TYPE_RESOURCE_LOOKUP_FLAGS :: resource_lookup_flags_get_type
		TYPE_SEEKABLE :: seekable_get_type
		TYPE_SETTINGS :: settings_get_type
		TYPE_SETTINGS_BIND_FLAGS :: settings_bind_flags_get_type
		TYPE_SETTINGS_SCHEMA :: settings_schema_get_type
		TYPE_SETTINGS_SCHEMA_KEY :: settings_schema_key_get_type
		TYPE_SETTINGS_SCHEMA_SOURCE :: settings_schema_source_get_type
		TYPE_SIMPLE_ACTION :: simple_action_get_type
		TYPE_SIMPLE_ACTION_GROUP :: simple_action_group_get_type
		TYPE_SIMPLE_ASYNC_RESULT :: simple_async_result_get_type
		TYPE_SIMPLE_IO_STREAM :: simple_io_stream_get_type
		TYPE_SIMPLE_PERMISSION :: simple_permission_get_type
		TYPE_SIMPLE_PROXY_RESOLVER :: simple_proxy_resolver_get_type
		TYPE_SOCKET :: socket_get_type
		TYPE_SOCKET_ADDRESS :: socket_address_get_type
		TYPE_SOCKET_ADDRESS_ENUMERATOR :: socket_address_enumerator_get_type
		TYPE_SOCKET_CLIENT :: socket_client_get_type
		TYPE_SOCKET_CLIENT_EVENT :: socket_client_event_get_type
		TYPE_SOCKET_CONNECTABLE :: socket_connectable_get_type
		TYPE_SOCKET_CONNECTION :: socket_connection_get_type
		TYPE_SOCKET_CONTROL_MESSAGE :: socket_control_message_get_type
		TYPE_SOCKET_FAMILY :: socket_family_get_type
		TYPE_SOCKET_LISTENER :: socket_listener_get_type
		TYPE_SOCKET_LISTENER_EVENT :: socket_listener_event_get_type
		TYPE_SOCKET_MSG_FLAGS :: socket_msg_flags_get_type
		TYPE_SOCKET_PROTOCOL :: socket_protocol_get_type
		TYPE_SOCKET_SERVICE :: socket_service_get_type
		TYPE_SOCKET_TYPE :: socket_type_get_type
		TYPE_SRV_TARGET :: srv_target_get_type
		TYPE_SUBPROCESS :: subprocess_get_type
		TYPE_SUBPROCESS_FLAGS :: subprocess_flags_get_type
		TYPE_SUBPROCESS_LAUNCHER :: subprocess_launcher_get_type
		TYPE_TASK :: task_get_type
		TYPE_TCP_CONNECTION :: tcp_connection_get_type
		TYPE_TCP_WRAPPER_CONNECTION :: tcp_wrapper_connection_get_type
		TYPE_TEST_DBUS :: test_dbus_get_type
		TYPE_TEST_DBUS_FLAGS :: test_dbus_flags_get_type
		TYPE_THEMED_ICON :: themed_icon_get_type
		TYPE_THREADED_SOCKET_SERVICE :: threaded_socket_service_get_type
		TYPE_TLS_AUTHENTICATION_MODE :: tls_authentication_mode_get_type
		TYPE_TLS_BACKEND :: tls_backend_get_type
		TYPE_TLS_CERTIFICATE :: tls_certificate_get_type
		TYPE_TLS_CERTIFICATE_FLAGS :: tls_certificate_flags_get_type
		TYPE_TLS_CERTIFICATE_REQUEST_FLAGS :: tls_certificate_request_flags_get_type
		TYPE_TLS_CHANNEL_BINDING_ERROR :: tls_channel_binding_error_get_type
		TYPE_TLS_CHANNEL_BINDING_TYPE :: tls_channel_binding_type_get_type
		TYPE_TLS_CLIENT_CONNECTION :: tls_client_connection_get_type
		TYPE_TLS_CONNECTION :: tls_connection_get_type
		TYPE_TLS_DATABASE :: tls_database_get_type
		TYPE_TLS_DATABASE_LOOKUP_FLAGS :: tls_database_lookup_flags_get_type
		TYPE_TLS_DATABASE_VERIFY_FLAGS :: tls_database_verify_flags_get_type
		TYPE_TLS_ERROR :: tls_error_get_type
		TYPE_TLS_FILE_DATABASE :: tls_file_database_get_type
		TYPE_TLS_INTERACTION :: tls_interaction_get_type
		TYPE_TLS_INTERACTION_RESULT :: tls_interaction_result_get_type
		TYPE_TLS_PASSWORD :: tls_password_get_type
		TYPE_TLS_PASSWORD_FLAGS :: tls_password_flags_get_type
		TYPE_TLS_PROTOCOL_VERSION :: tls_protocol_version_get_type
		TYPE_TLS_REHANDSHAKE_MODE :: tls_rehandshake_mode_get_type
		TYPE_TLS_SERVER_CONNECTION :: tls_server_connection_get_type
		TYPE_UNIX_CONNECTION :: unix_connection_get_type
		TYPE_UNIX_CREDENTIALS_MESSAGE :: unix_credentials_message_get_type
		TYPE_UNIX_FD_LIST :: unix_fd_list_get_type
		TYPE_UNIX_SOCKET_ADDRESS :: unix_socket_address_get_type
		TYPE_UNIX_SOCKET_ADDRESS_TYPE :: unix_socket_address_type_get_type
		TYPE_VFS :: vfs_get_type
		TYPE_VOLUME :: volume_get_type
		TYPE_VOLUME_MONITOR :: volume_monitor_get_type
		TYPE_ZLIB_COMPRESSOR :: zlib_compressor_get_type
		TYPE_ZLIB_COMPRESSOR_FORMAT :: zlib_compressor_format_get_type
		TYPE_ZLIB_DECOMPRESSOR :: zlib_decompressor_get_type
```
