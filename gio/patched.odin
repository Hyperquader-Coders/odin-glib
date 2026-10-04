package gio

import glib "glib:glib"
import gobj "glib:gobject"

// One typed pin per hand fix (docs/PATCHED.md). A regeneration that drops or changes a
// patched signature fails to compile here.

@(private)
patched_application_run: proc(application: ^Application, args: []string) -> i32 = application_run

#assert(size_of(ApplicationFlags) == 4)
#assert(size_of(TlsCertificateFlags) == 4)

// The single-object rule for a pointer parameter whose name ends in "s" (docs/PATCHED.md):
// `T *settings` is ^T, not the [^]T runic writes. One pin per distinct parameter name and type.
@(private = "file")
patched_app_info_launch: proc "c" (_: ^AppInfo, _: ^glib.List, _: ^AppLaunchContext, _: ^^glib.Error) -> glib.boolean = app_info_launch

@(private = "file")
patched_app_info_launch_uris: proc "c" (_: ^AppInfo, _: ^glib.List, _: ^AppLaunchContext, _: ^^glib.Error) -> glib.boolean = app_info_launch_uris

@(private = "file")
patched_async_initable_init_finish: proc "c" (_: ^AsyncInitable, _: ^AsyncResult, _: ^^glib.Error) -> glib.boolean = async_initable_init_finish

@(private = "file")
patched_output_stream_write_bytes: proc "c" (_: ^OutputStream, _: ^glib.Bytes, _: ^Cancellable, _: ^^glib.Error) -> glib.ssize = output_stream_write_bytes

@(private = "file")
patched_credentials_to_string: proc "c" (_: ^Credentials) -> cstring = credentials_to_string

@(private = "file")
patched_credentials_is_same_user: proc "c" (_: ^Credentials, _: ^Credentials, _: ^^glib.Error) -> glib.boolean = credentials_is_same_user

@(private = "file")
patched_data_input_stream_read_until: proc "c" (_: ^DataInputStream, _: cstring, _: ^glib.size, _: ^Cancellable, _: ^^glib.Error) -> cstring = data_input_stream_read_until

@(private = "file")
patched_dbus_address_get_stream: proc "c" (_: cstring, _: ^Cancellable, _: AsyncReadyCallback, _: glib.pointer) = dbus_address_get_stream

@(private = "file")
patched_dbus_connection_emit_signal: proc "c" (_: ^DBusConnection, _: cstring, _: cstring, _: cstring, _: cstring, _: ^glib.Variant, _: ^^glib.Error) -> glib.boolean = dbus_connection_emit_signal

@(private = "file")
patched_file_measure_disk_usage: proc "c" (_: ^File, _: FileMeasureFlags, _: ^Cancellable, _: FileMeasureProgressCallback, _: glib.pointer, _: ^glib.uint64, _: ^glib.uint64, _: ^glib.uint64, _: ^^glib.Error) -> glib.boolean = file_measure_disk_usage

@(private = "file")
patched_file_load_contents: proc "c" (_: ^File, _: ^Cancellable, _: ^cstring, _: ^glib.size, _: ^cstring, _: ^^glib.Error) -> glib.boolean = file_load_contents

@(private = "file")
patched_file_load_contents_finish: proc "c" (_: ^File, _: ^AsyncResult, _: ^cstring, _: ^glib.size, _: ^cstring, _: ^^glib.Error) -> glib.boolean = file_load_contents_finish

@(private = "file")
patched_file_replace_contents_bytes_async: proc "c" (_: ^File, _: ^glib.Bytes, _: cstring, _: glib.boolean, _: FileCreateFlags, _: ^Cancellable, _: AsyncReadyCallback, _: glib.pointer) = file_replace_contents_bytes_async

@(private = "file")
patched_file_info_get_attribute_data: proc "c" (_: ^FileInfo, _: cstring, _: ^FileAttributeType, _: ^glib.pointer, _: ^FileAttributeStatus) -> glib.boolean = file_info_get_attribute_data

@(private = "file")
patched_inet_address_equal: proc "c" (_: ^InetAddress, _: ^InetAddress) -> glib.boolean = inet_address_equal

@(private = "file")
patched_inet_address_to_string: proc "c" (_: ^InetAddress) -> cstring = inet_address_to_string

@(private = "file")
patched_socket_address_get_family: proc "c" (_: ^SocketAddress) -> SocketFamily = socket_address_get_family

@(private = "file")
patched_inet_socket_address_get_address: proc "c" (_: ^InetSocketAddress) -> ^InetAddress = inet_socket_address_get_address

@(private = "file")
patched_proxy_connect: proc "c" (_: ^Proxy, _: ^IOStream, _: ^ProxyAddress, _: ^Cancellable, _: ^^glib.Error) -> ^IOStream = proxy_connect

@(private = "file")
patched_resolver_free_addresses: proc "c" (_: ^glib.List) = resolver_free_addresses

@(private = "file")
patched_resolver_free_targets: proc "c" (_: ^glib.List) = resolver_free_targets

@(private = "file")
patched_resource_get_info: proc "c" (_: ^Resource, _: cstring, _: ResourceLookupFlags, _: ^glib.size, _: ^glib.uint32, _: ^^glib.Error) -> glib.boolean = resource_get_info

@(private = "file")
patched_settings_list_children: proc "c" (_: ^Settings) -> ^cstring = settings_list_children

@(private = "file")
patched_socket_receive_from: proc "c" (_: ^Socket, _: ^^SocketAddress, _: cstring, _: glib.size, _: ^Cancellable, _: ^^glib.Error) -> glib.ssize = socket_receive_from

@(private = "file")
patched_socket_receive_message: proc "c" (_: ^Socket, _: ^^SocketAddress, _: [^]InputVector, _: glib.int_, _: ^[^]^SocketControlMessage, _: ^glib.int_, _: ^glib.int_, _: ^Cancellable, _: ^^glib.Error) -> glib.ssize = socket_receive_message

@(private = "file")
patched_socket_listener_add_address: proc "c" (_: ^SocketListener, _: ^SocketAddress, _: SocketType, _: SocketProtocol, _: ^gobj.Object, _: ^^SocketAddress, _: ^^glib.Error) -> glib.boolean = socket_listener_add_address

@(private = "file")
patched_subprocess_get_stdin_pipe: proc "c" (_: ^Subprocess) -> ^OutputStream = subprocess_get_stdin_pipe

@(private = "file")
patched_tls_file_database_new: proc "c" (_: cstring, _: ^^glib.Error) -> ^TlsDatabase = tls_file_database_new

@(private = "file")
patched_unix_socket_address_get_path: proc "c" (_: ^UnixSocketAddress) -> cstring = unix_socket_address_get_path

@(private = "file")
patched_vfs_is_active: proc "c" (_: ^Vfs) -> glib.boolean = vfs_is_active


// The same rule for a callback parameter and a struct field.
@(private = "file")
patched_async_ready_callback: AsyncReadyCallback = proc "c" (_: ^gobj.Object, _: ^AsyncResult, _: glib.pointer) {}

#assert(type_of(InputMessage{}.address) == ^^SocketAddress)
#assert(type_of(OutputMessage{}.address) == ^SocketAddress)
#assert(type_of(InputMessage{}.control_messages) == ^[^]^SocketControlMessage)
