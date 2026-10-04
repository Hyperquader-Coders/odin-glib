# odin-glib cheat sheet

The idioms a program needs, in the order it uses them. This is not a reference: the binding
declares every public name of GLib, GObject and GIO, listed in [API.md](API.md), and the C
documentation says what each one does. Every `pkg.name` below is declared there, and `make lint`
fails when one is not. The reasons are in the [README](../README.md) and [SPEC](SPEC.md).

Conventions that hold everywhere: the collection is `glib` (`-collection:glib=../odin-glib`); the
three packages are imported as `glib`, `gobj` (package `gobject`) and `gio`; a program links one
GLib, so no other binding declares these types; the `g_` and `G` prefixes are gone
(`g_file_new_for_path` is `gio.file_new_for_path`); a C callback is a `proc "c"` and starts with
`context = app_ctx`; a call that can fail takes a `^^glib.Error` last
([SPEC](SPEC.md#naming)).

## glib:glib — main loop, sources, errors, memory

```odin
import "base:runtime"
import "core:log"
import glib "glib:glib"

app_ctx: runtime.Context                       // C enters Odin with no context: save one in main

on_tick :: proc "c" (data: glib.pointer) -> glib.boolean {
	context = app_ctx
	app := cast(^App)data                      // the data argument is whatever pointer was passed in
	return glib.SOURCE_CONTINUE                // SOURCE_REMOVE ends the source
}

app_ctx = context
id := glib.timeout_add(250, on_tick, &app)     // milliseconds; timeout_add_seconds lets GLib batch wakeups
glib.idle_add(on_tick, &app)                   // runs when nothing more urgent is pending
loop := glib.main_loop_new(nil, false)
defer glib.main_loop_unref(loop)
glib.main_loop_run(loop)                       // main_loop_quit(loop), from a callback, returns from it
_ = glib.source_remove(id)                     // only a source still alive; one that returned SOURCE_REMOVE is gone

err: ^glib.Error                               // nil in, set on failure
text: cstring
n: glib.size
if !glib.file_get_contents("/etc/hostname", &text, &n, &err) {
	if glib.error_matches(err, glib.file_error_quark(), i32(glib.FileError.NOENT)) {}
	log.errorf("%s", err.message)              // err is non-nil exactly when the call failed
	glib.error_free(err)
	return
}
defer glib.free(glib.pointer(text))            // the buffer is the caller's; string(text) only borrows it

ok := bool(glib.utf8_validate(text, -1, nil))  // glib.boolean (b32) to bool
flag := glib.boolean(ok)                       // and back
flags := glib.SpawnFlags{.SPAWN_SEARCH_PATH}   // a GFlags type is a bit_set; glib.SPAWN_DEFAULT is {}
```

| remember | |
|---|---|
| A `proc "c"` callback has no `context` | assign the saved one before any `fmt`, `log`, `make` or `append`; the temp arena belongs to that context |
| A `SourceFunc` returns `glib.boolean` | `glib.SOURCE_CONTINUE` is `TRUE`, `glib.SOURCE_REMOVE` is `FALSE`; `source_remove` on a removed id logs a critical |
| Free what the call allocated with `glib.free` | not Odin's `delete`; strings from `glib.strdup`, `file_get_contents` and `gio.file_get_path` are the caller's, a `cstring` from a getter is borrowed |
| `err` is read and freed only on failure | pass `nil` for the error when the reason does not matter; a set error that is not freed leaks |
| `glib.boolean` is `b32`, `glib.pointer` is `rawptr` | convert with `glib.boolean(x)` and `bool(x)`; a small integer rides in data as `glib.pointer(uintptr(i))` |
| A GFlags type is `FooBit` plus `bit_set` | members keep their group word (`.SPAWN_SEARCH_PATH`); the C zero member is a constant or `{}` ([SPEC](SPEC.md#flags)) |

## glib:gobject — signals, references, casts

```odin
import glib "glib:glib"
import gobj "glib:gobject"

on_clicked :: proc "c" (button: ^gobj.Object, data: glib.pointer) {
	context = app_ctx
}

id := gobj.signal_connect(btn, "clicked", on_clicked, &app)    // btn: any object pointer; returns the handler id
gobj.signal_connect_after(btn, "clicked", on_clicked, &app)    // runs after the default handler
gobj.signal_connect_swapped(btn, "clicked", on_swapped, &app)  // data comes first: the C "swapped" form
gobj.signal_handler_block(btn, id)
gobj.signal_handler_unblock(btn, id)
gobj.signal_handler_disconnect(btn, id)
gobj.signal_handlers_disconnect_by_func(btn, on_clicked, &app) // the C macros, as procedures
gobj.signal_handlers_disconnect_by_data(btn, &app)             // do this before freeing &app

gobj.object_ref(obj)                           // +1: keep an object another owner may drop
defer gobj.object_unref(obj)                   // -1: pair it with the ref you own
gobj.object_ref_sink(obj)                      // turns a floating reference into an owned one
gobj.object_set_data(obj, "key", &app)         // a pointer hung on the object
p := cast(^App)gobj.object_get_data(obj, "key")

g_type := gobj.type_from_name("GtkButton")     // 0 when unregistered
name := string(gobj.type_name(g_type))         // borrowed
fine := bool(gobj.type_is(obj, gio.TYPE_APPLICATION))   // IS_FOO is the same check, named
cast_ := gobj.type_cast(gio.Application, obj, gio.TYPE_APPLICATION)   // what gio.APPLICATION(obj) calls
```

| remember | |
|---|---|
| A handler's parameters are the signal's | instance first, `data` last, then written as the C documentation lists them; the binding does not check that they match |
| Pass the handler itself | `signal_connect` is generic over the proc type and casts it to `gobj.Callback`; no `cast(gobj.Callback)` is needed at the call |
| `FOO(ptr)` is `gobj.type_cast` | with `gobj.GTK_SAFE_CAST` (on unless built with `-o:speed` or higher) a wrong cast logs a GLib critical and still returns the pointer (`G_DEBUG=fatal-criticals` makes it abort); otherwise it reinterprets silently. `gobj.OBJECT` and `gobj.IS_OBJECT` exist too ([SPEC](SPEC.md#casts)) |
| A constructor that returns a plain object is yours to unref | `file_new_for_path`, `cancellable_new`, `bus_get_sync`; a getter returns borrowed (`transfer none`) |
| Disconnect, or outlive, before freeing the data | a handler left connected to a freed `data` is a use after free on the next emission |
| `signal_emit_by_name`, `object_new` and `object_get` are C-variadic | pass each argument as the exact C type: `i32`, `u32`, `f64`, `cstring("x")`, `glib.boolean`, pointers; `nil` ends a property list. Never an Odin `string`, slice, array or struct: it becomes several C arguments. The `*_valist` and `*_vprintf` procedures are not bound ([SPEC](SPEC.md#variadic-procedures)) |

## glib:gio — application, files, async, D-Bus

```odin
import glib "glib:glib"
import gobj "glib:gobject"
import gio "glib:gio"

app := gio.application_new("org.example.App", {.APPLICATION_NON_UNIQUE})   // ApplicationFlags is a bit_set
defer gobj.object_unref(app)
gobj.signal_connect(app, "activate", on_activate, nil)
status := gio.application_run(app)             // args default to os.args; returns the exit status

act := gio.simple_action_new("quit", nil)      // nil parameter type: no argument
gobj.signal_connect(act, "activate", on_quit, nil)
gio.action_map_add_action(gio.ACTION_MAP(app), gio.ACTION(act))

f := gio.file_new_for_path("/etc/hostname")
defer gobj.object_unref(f)                     // the GFile is ours
path := gio.file_get_path(f)                   // a copy: glib.free it
defer glib.free(glib.pointer(path))
err: ^glib.Error
data: cstring
len: glib.size
if !gio.file_load_contents(f, nil, &data, &len, nil, &err) {   // blocks; nil is the Cancellable
	glib.error_free(err)
}
defer glib.free(glib.pointer(data))

cancel := gio.cancellable_new()
defer gobj.object_unref(cancel)
gio.file_load_contents_async(f, cancel, on_loaded, &app)       // returns at once; on_loaded runs in the main loop

on_loaded :: proc "c" (source: ^gobj.Object, res: [^]gio.AsyncResult, data: glib.pointer) {
	context = app_ctx
	e: ^glib.Error
	text: cstring
	if gio.file_load_contents_finish(gio.FILE(source), res, &text, nil, nil, &e) {   // every _async has its _finish
		defer glib.free(glib.pointer(text))
	} else if e != nil {
		glib.error_free(e)
	}
}

conn := gio.bus_get_sync(.SESSION, nil, &err)  // nil and an error when there is no bus
defer if conn != nil {gobj.object_unref(conn)}
```

| remember | |
|---|---|
| `application_run` is the binding's wrapper | it builds `argv` from `os.args` and frees it; the C `g_application_run` is declared too, as `g_application_run` ([PATCHED](PATCHED.md)) |
| `FOO(ptr)` and `IS_FOO(ptr)` exist for every `TYPE_FOO` | generated by `scripts/type-casts.sh`; `gio.APPLICATION`, `gio.FILE`, `gio.LIST_MODEL`, `gio.ACTION_MAP` |
| An `_async` call hands its result to the callback | call the matching `_finish` once, with the same `res`, and only then free the user data; a cancelled call still calls back with an error |
| A dismissed or cancelled operation is an error too | `glib.error_matches(err, gio.io_error_quark(), i32(gio.IOErrorEnum.CANCELLED))` tells it from a failure |
| `glib.free` the path, contents and strings a getter returns by value | `gio.file_get_path` and `file_load_contents` do; `file_get_basename` does too; `gobj.object_unref` the objects |
| A callback runs in the main context of the thread that made the call | from another thread, `glib.main_context_invoke(nil, fn, data)` hops onto the default context |
