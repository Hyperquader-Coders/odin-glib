# Decisions — odin-glib

Settled choices. An entry that stops being true is rewritten, not appended to.

## 1. Generated, not hand-written

The bindings are generated with runic from the headers Amber ships, so a library bump is a
regeneration. Hand fixes are the exception and are tracked in [PATCHED.md](PATCHED.md).

## 2. runic: Amber's fork, branch amber-patched

The generator is [Hyperquader-Coders/runic](https://github.com/Hyperquader-Coders/runic), a
fork of Samudevv/runic, branch `amber-patched` (commit `ddc6f8f`): upstream 0.8
(`9bd8391be61d3d6d983e00856a8baf95e65af3f4`), a build script and an Odin pin (0.8 does not
compile on newer Odin), and two patches: `to.detect.parameters: declared` with `arrays:`, and
skipping procedures that took a `va_list`. Clone it beside the binding repos as `runic/` and run
`runic/amber-build.sh`; the Makefile takes the binary as `RUNIC ?= ../runic/build/runic`.
The binary prints `runic 0.7`: upstream's `version.odin` was not bumped for the tag.

Newer upstream commits were weighed and rejected: master adds only the fix for the Odin
release and does not touch the type conversion in §3. A new upstream tag moves the pin on
purpose, in the fork, not here.

## 3. Post-processing is part of generation

runic 0.8 turns `gchar *` into `^char` because it recognises a char pointer only when the
pointee is the built-in type, and `gchar` is a typedef. Every string API would otherwise take
`^char`. `scripts/postprocess.sh` rewrites it (and the macro text runic quotes as strings)
with odin-gtk's rules, run by `make generate` after runic, so a regeneration is reproducible
byte for byte. Patching the output by hand, or accepting `^char`, was rejected: either
repeats in every binding built on this one. The rules are in [PATCHED.md](PATCHED.md).

## 4. runic matches path globs relative to the rune file

`from.extern` and `to.extern.sources` globs are compared with the header's path *relative to
the rune file*. An absolute glob (`/usr/include/…`) matches nothing and fails silently: the
dependency's types are declared a second time in the dependent package. The rune files
therefore name headers as `../build/sys/usr/include/…`, where `build/sys` is a symlink to `/`
that `scripts/generate.sh` creates; the paths do not depend on where the checkout lives.

## 5. libc comes from stub headers

runic's libclang cannot find libc's headers (`time_t`, `pthread_t`), so `stdinc/` provides
stubs, as odin-gtk does, and the rune files map them to Odin's `core:c/libc`, `core:sys/posix`
and `core:sys/linux`.

## 6. Linux x86_64 only, system shared libraries

The rune files list one platform and link `system:glib-2.0`, `gobject-2.0` and `gio-2.0`.
Amber ships on Linux; the static, Windows and arm64 variants of odin-gtk's rune files are
not carried.

## 7. GModule and GIRepository are not bound

Nothing in the suite loads modules or reads typelibs.

## 8. Flag enums are bit_sets, chosen by a list

C flag types (`SpawnFlags`, `LogLevelFlags`, `IOCondition`, `ParamFlags`, `ConnectFlags`,
`ApplicationFlags`, `FileCopyFlags`, …) are `bit_set[FooBit; u32]`, so callers write
`{.SPAWN_SEARCH_PATH, .SPAWN_DO_NOT_REAP_CHILD}`. `postprocess.sh` rewrites the enums runic
emits; the members of `FooBit` are bit indices under their generated names, and the type keeps
the C size (4 bytes) and bits, so procedures, callbacks and structs (`ParamSpec.flags`,
`SignalQuery.signal_flags`) take and return it by value unchanged. Members with one value
(`ParamFlags.PRIVATE` and `STATIC_NAME`) both stay in `FooBit`. A zero member is the constant
`Foo{}` and a composite (`TRAVERSE_ALL`, `VALIDATE_ALL`, `PARAM_STATIC_STRINGS`) a constant
set, both under their C names; a composite with a bit that has no member (`LOG_LEVEL_MASK`,
`HOOK_FLAG_MASK`) is a `transmute` of the C value. A zero or composite name with no
underscore (`NONE`, `DEFAULT`, `READWRITE`), or one that two listed enums declare
(`NO_FLAGS` in `ConverterFlags` and `TlsCertificateFlags`), gets the type's name as a prefix
(`APPLICATION_FLAGS_NONE`, `PARAM_FLAGS_READWRITE`, `CONVERTER_FLAGS_NO_FLAGS`), since constants
share one namespace. A negative member is its 32-bit two's complement (`ParamFlags.DEPRECATED`
is bit 31); `LogLevelFlags` and `ParamFlags` are `enum i32` in C and `u32` here, which is the
same 4 bytes. Fields that C declares as `guint` or `gint` are not flag types and stay integers
(`Hook.flags`, `OptionEntry.flags`).

The list is the `<bitfield>` entries of `GLib-2.0.gir`, `GObject-2.0.gir` and `Gio-2.0.gir` that
the headers declare. A value rule was rejected: sequential enums are 0, 1, 2 too, and
composites defeat it for the real flags. Generation fails if a listed enum is missing or has
no single-bit member. A new GFlags type in a header bump is added to the list by hand.

Converted: `glib` (21) `AsciiType`, `FileSetContentsFlags`, `FileTest`, `FormatSizeFlags`,
`HookFlagMask`, `IOCondition`, `IOFlags`, `KeyFileFlags`, `LogLevelFlags`, `MainContextFlags`,
`MarkupParseFlags`, `OptionFlags`, `RegexCompileFlags`, `RegexMatchFlags`, `SpawnFlags`,
`TestSubprocessFlags`, `TestTrapFlags`, `TraverseFlags`, `UriFlags`, `UriHideFlags`,
`UriParamsFlags`; `gobject` (8) `BindingFlags`, `ConnectFlags`, `ParamFlags`, `SignalFlags`,
`SignalMatchType`, `TypeDebugFlags`, `TypeFlags`, `TypeFundamentalFlags`; `gio` (34)
`AppInfoCreateFlags`, `ApplicationFlags`, `AskPasswordFlags`, `BusNameOwnerFlags`,
`BusNameWatcherFlags`, `ConverterFlags`, `DBusCallFlags`, `DBusCapabilityFlags`,
`DBusConnectionFlags`, `DBusInterfaceSkeletonFlags`, `DBusMessageFlags`,
`DBusObjectManagerClientFlags`, `DBusPropertyInfoFlags`, `DBusProxyFlags`,
`DBusSendMessageFlags`, `DBusServerFlags`, `DBusSignalFlags`, `DBusSubtreeFlags`,
`FileAttributeInfoFlags`, `FileCopyFlags`, `FileCreateFlags`, `FileMeasureFlags`,
`FileMonitorFlags`, `FileQueryInfoFlags`, `IOStreamSpliceFlags`, `MountUnmountFlags`,
`OutputStreamSpliceFlags`, `ResolverNameLookupFlags`, `ResourceFlags`, `SettingsBindFlags`,
`SocketMsgFlags`, `SubprocessFlags`, `TlsCertificateFlags`, `TlsPasswordFlags`.

Not converted, each a GIR bitfield or flag-named enum:

- `MarkupCollectType`: GIR lists it, but 0 to 4 are type codes (`BOOLEAN` is 3, not
  `STRING | STRDUP`) and only `OPTIONAL` is a flag; its one user, `markup_collect_attributes`,
  is variadic and takes the codes as plain values, so it stays an enum.
- `DriveStartFlags`, `MountMountFlags`, `ResourceLookupFlags`, `TestDBusFlags`,
  `TlsDatabaseVerifyFlags`: GIR bitfields whose only member is zero, so a `bit_set` has no
  element type.
- `TlsDatabaseLookupFlags`, `TlsCertificateRequestFlags`, `IOModuleScopeFlags`: GIR declares
  them as enumerations, not bitfields.
- GIR's `GObject.IOCondition` is `glib.IOCondition`, declared by `glib.h`.

## 9. Macros runic quotes as strings become values of their C type

`SOURCE_REMOVE` and `SOURCE_CONTINUE` are `FALSE` and `TRUE`, and `TRUE` and `FALSE` are
`true` and `false`: untyped Odin booleans convert to `boolean` (`b32`), which an untyped
integer constant does not, so `return glib.SOURCE_REMOVE` compiles in a `SourceFunc`. An
error-domain macro (`FILE_ERROR`, `SPAWN_ERROR`, …) is the quark procedure, as in `gio`;
`HOOK_FLAG_USER_SHIFT` is the integer. `LOG_DOMAIN` is not bound: it is `NULL` in the library
and a program defines its own, which a constant cannot hold.

## 10. Signal handler macros are hand-written

`g_signal_handlers_disconnect_by_func`, `…_by_data`, `g_signal_handlers_block_by_func` and
`…_unblock_by_func` are C macros over `g_signal_handlers_*_matched`, so runic does not see
them. `gobject/helpers.odin` writes them as typed procedures beside `signal_connect`; the
`_matched` procedures stay available for matching by signal id, detail or closure.

## 11. C-variadic procedures are bound as they come; `va_list` ones are removed

runic writes `...` as `#c_vararg var_args: ..any` and Odin lowers that to a C variadic call
with the default promotions (measured with `snprintf`: `f32`, `i8`, `u16` and `bool` arrive
correctly; an Odin `string` arrives as pointer and length; a struct or array arrives as its
fields). The 79 variadic procedures stay as generated, and `test_variadic_arguments_arrive_with_their_c_types`
pins a `gdouble`, a `gint` and a `gchar *` through `signal_new` and `signal_emit_by_name`.
Safe and unsafe argument types are in SPEC, Variadic procedures. A typed wrapper per procedure
was rejected: there are 79 of them and the format or property list decides the types.

runic (`cpp/codegen/from_types.odin`) drops a trailing `va_list` parameter and marks the
procedure variadic. That is wrong for the 22 procedures whose last C parameter is a
`va_list`: C expects one `va_list`, the call passes the values inline, and a `va_list` cannot
be built from Odin. the fork's runic skips them, leaving a comment where each was, so they are not bound: in `glib`, `build_filename_valist`, `error_new_valist`, `logv`,
`markup_vprintf_escaped`, `printf_string_upper_bound`, `strdup_vprintf`,
`string_append_vprintf`, `string_vprintf`, `variant_get_va`, `variant_new_parsed_va`,
`variant_new_va` and `vsnprintf`; in `gobject`, `object_get_valist`, `object_new_valist`,
`object_set_valist`, `signal_emit_valist` and `signal_new_valist`; in `gio`,
`dbus_error_set_dbus_error_valist`, `dbus_message_new_method_error_valist`,
`dbus_method_invocation_return_error_valist`, `output_stream_vprintf` and
`simple_async_result_set_error_va`. Use the variadic form (`strdup_printf`, `object_new`,
`log`). The first list written here named 18; the headers hold 22. `scripts/check-generated.sh`
holds the names and a link-name pattern, and `make lint` fails when one returns. Where the
`va_list` is not last (`initable_new_valist`, the `*_marshal_*v` closures in `gobject`), runic keeps a
`libc.va_list` parameter and the procedure is not variadic; those stay.

## 12. gobject casts are a list

`OBJECT`, `INITIALLY_UNOWNED`, `BINDING`, `BINDING_GROUP`, `SIGNAL_GROUP`, `TYPE_MODULE` and
`TYPE_PLUGIN` and their `IS_` forms are written by `scripts/type-casts.sh` into
`gobject/type_casts.odin`. Most `TYPE_FOO :: foo_get_type` in `gobject.odin` are boxed types
and enums, which the header does not tell from classes, so the classes are named in the
script; it fails when one is no longer declared. `TYPE_OBJECT` is the fundamental id, a
constant, so `OBJECT` and `IS_OBJECT` use `object_get_type`. A GObject class added in a header
bump is added to the list by hand.

## 13. Parameters are single objects unless declared

runic 0.8 writes `[^]T` for a pointer parameter whose C name ends in `s` (`settings`, `lines`),
however many elements it holds, which lets a caller index past one element, and drops a trailing
`va_list`, binding the procedure as `#c_vararg ..any`. Amber's runic fork (branch `amber-patched`)
has `parameters: declared`: with it every procedure parameter is `^T` (`T **` is `^^T`) unless
`arrays:` in the package's `rune.yml` lists it, chosen against the C headers, and a va_list
procedure is skipped. Struct members, variables and typedefs keep runic's name guess, and the
parameters of function-pointer types are plain `^T`: a limit of the fork, true in every binding.
Where a binding needs it, the `param_rules` table in `postprocess.sh` restores the `[^]` for
those parameters' real arrays, rewrites single-object struct members and corrects `T ***` outs;
a row that matches nothing fails the build. Rejected: rewriting the output in `postprocess.sh`,
which had to be told each parameter, matched `va_list` procedures by name pattern (it deleted
`list_store_insert_with_values` for containing `_va`) and was a second place to keep in step
with the headers. `scripts/check-generated.sh` stays as the guard that any regeneration, with
any runic, keeps the listed parameters right.
