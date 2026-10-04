#!/usr/bin/env bash
# Fails when one of runic's two faults comes back in the generated files (docs/PATCHED.md):
#  1. a `#c_vararg` procedure bound over a C `va_list` (`*_valist`, `*_vprintf`, `logv`, ...):
#     runic drops the trailing `va_list` and writes `..any`, which is a wrong call. Every such
#     procedure is skipped by the fork of runic (to.detect, DECISIONS §2); the names are listed here, and the generic
#     pattern catches a new one.
#  2. a parameter the header declares as one `T *`, typed `[^]T` again: runic writes `[^]T` for
#     any pointer parameter whose name ends in "s". Each corrected `declaration, parameter` is
#     listed here; a declaration is a procedure, a callback type or a struct.
# Usage: scripts/check-generated.sh
set -euo pipefail
cd "$(dirname "$0")/.."

files=(glib/glib.odin gobject/gobject.odin gio/gio.odin)

# C names of the procedures removed because their last C parameter is a va_list.
removed="g_build_filename_valist g_error_new_valist g_logv g_markup_vprintf_escaped
g_printf_string_upper_bound g_strdup_vprintf g_string_append_vprintf g_string_vprintf
g_variant_get_va g_variant_new_parsed_va g_variant_new_va g_vsnprintf
g_object_get_valist g_object_new_valist g_object_set_valist g_signal_emit_valist
g_signal_new_valist g_dbus_error_set_dbus_error_valist
g_dbus_message_new_method_error_valist g_dbus_method_invocation_return_error_valist
g_output_stream_vprintf g_simple_async_result_set_error_va"

# Link names that mark a va_list binding even when not listed above.
pattern='_valist|_va_list|vprintf|vsnprintf|vsprintf|vasprintf|_vfprintf|_logv|_vscanf'

# Parameters that are real `[^]^T` arrays (counted or NULL-terminated, read against the headers):
# any other `[^]^T` is a `T **` out-parameter that returns one pointer and must be `^^T`.
arrays="pspecs items annotations in_args out_args args methods signals properties interfaces nodes control_messages files messages"

# Corrected parameters: `declaration, parameter`.
read -r -d '' corrected <<'LIST' || true
AsyncReadyCallback, res
Completion, items
DBusInterfaceMethodCallFunc, parameters
DBusSignalCallback, parameters
InputMessage, address
InputMessage, control_messages
InputMessage, num_control_messages
ObjectClass, construct_properties
OutputMessage, address
SimpleAsyncThreadFunc, res
Source, callback_funcs
Source, poll_fds
Source, source_funcs
TestLogBuffer, msgs
g_test_config_vars, g_test_config_vars
TypeModule, interface_infos
TypeModule, type_infos
VfsFileLookupFunc, vfs
WeakNotify, where_the_object_was
_properties_changed_func_ptr_anon_193, changed_properties
_signal_func_ptr_anon_194, parameters
add_writable_namespaces_func_ptr_anon_698, vfs
app_info_launch, files
app_info_launch_uris, uris
app_info_launch_uris_async, uris
app_launch_context_get_display, files
app_launch_context_get_startup_notify_id, files
append_to_finish_func_ptr_anon_288, res
async_initable_init_finish, res
async_initable_new_finish, res
async_result_get_source_object, res
async_result_get_user_data, res
async_result_is_tagged, res
async_result_legacy_propagate_error, res
bit_lock, address
bit_trylock, address
bit_unlock, address
bus_get_finish, res
bytes_get_data, bytes
bytes_get_region, bytes
bytes_get_size, bytes
bytes_icon_new, bytes
bytes_new_from_bytes, bytes
bytes_ref, bytes
bytes_unref, bytes
bytes_unref_to_array, bytes
bytes_unref_to_data, bytes
change_event_func_ptr_anon_586, settings
changed_func_ptr_anon_584, settings
completion_add_items, items
completion_remove_items, items
connect_async_func_ptr_anon_543, proxy_address
connect_func_ptr_anon_542, proxy_address
copy_finish_func_ptr_anon_309, res
create_finish_func_ptr_anon_291, res
create_readwrite_finish_func_ptr_anon_328, res
credentials_get_native, credentials
credentials_get_unix_pid, credentials
credentials_get_unix_user, credentials
credentials_is_same_user, credentials
credentials_is_same_user, other_credentials
credentials_set_native, credentials
credentials_set_unix_user, credentials
credentials_to_string, credentials
data_input_stream_read_until, stop_chars
data_input_stream_read_until_async, stop_chars
data_input_stream_read_upto, stop_chars
data_input_stream_read_upto_async, stop_chars
date_compare, lhs
date_compare, rhs
dbus_address_get_stream, address
dbus_address_get_stream_finish, res
dbus_address_get_stream_sync, address
dbus_auth_observer_authorize_authenticated_peer, credentials
dbus_connection_call, parameters
dbus_connection_call_finish, res
dbus_connection_call_sync, parameters
dbus_connection_call_with_unix_fd_list, parameters
dbus_connection_call_with_unix_fd_list_finish, res
dbus_connection_call_with_unix_fd_list_sync, parameters
dbus_connection_close_finish, res
dbus_connection_emit_signal, parameters
dbus_connection_flush_finish, res
dbus_connection_new_finish, res
dbus_connection_new_for_address, address
dbus_connection_new_for_address_finish, res
dbus_connection_new_for_address_sync, address
dbus_connection_send_message_with_reply_finish, res
dbus_method_invocation_return_value, parameters
dbus_method_invocation_return_value_with_unix_fd_list, parameters
dbus_object_manager_client_new_finish, res
dbus_object_manager_client_new_for_bus_finish, res
dbus_proxy_call, parameters
dbus_proxy_call_finish, res
dbus_proxy_call_sync, parameters
dbus_proxy_call_with_unix_fd_list, parameters
dbus_proxy_call_with_unix_fd_list_finish, res
dbus_proxy_call_with_unix_fd_list_sync, parameters
dbus_proxy_new_finish, res
dbus_proxy_new_for_bus_finish, res
dbus_server_new_sync, address
deserialize_icon_func_ptr_anon_702, vfs
enumerate_children_finish_func_ptr_anon_260, res
et_display_func_ptr_anon_52, files
et_family_func_ptr_anon_425, address
et_file_for_path_func_ptr_anon_693, vfs
et_file_for_uri_func_ptr_anon_694, vfs
et_item_attributes_func_ptr_anon_447, attributes
et_item_links_func_ptr_anon_450, links
et_native_size_func_ptr_anon_426, address
et_source_object_func_ptr_anon_83, res
et_startup_notify_id_func_ptr_anon_53, files
et_supported_uri_schemes_func_ptr_anon_695, vfs
et_user_data_func_ptr_anon_82, res
file_append_to_finish, res
file_copy_finish, res
file_create_finish, res
file_create_readwrite_finish, res
file_enumerate_children_finish, res
file_find_enclosing_mount_finish, res
file_get_contents, contents
file_info_get_attribute_data, status
file_load_contents, contents
file_load_contents_finish, contents
file_load_contents_finish, res
file_load_partial_contents_finish, contents
file_load_partial_contents_finish, res
file_measure_disk_usage, num_dirs
file_measure_disk_usage, num_files
file_measure_disk_usage_finish, num_dirs
file_measure_disk_usage_finish, num_files
file_open_readwrite_finish, res
file_query_filesystem_info_finish, res
file_query_info_finish, res
file_read_finish, res
file_replace_contents_bytes_async, contents
file_replace_contents_finish, res
file_replace_finish, res
file_replace_readwrite_finish, res
file_set_contents, contents
file_set_contents_full, contents
file_set_display_name_finish, res
find_enclosing_mount_finish_func_ptr_anon_269, res
get_filename_charsets, filename_charsets
handle_local_options_func_ptr_anon_73, options
inet_address_equal, address
inet_address_equal, other_address
inet_address_get_family, address
inet_address_get_is_any, address
inet_address_get_is_link_local, address
inet_address_get_is_loopback, address
inet_address_get_is_mc_global, address
inet_address_get_is_mc_link_local, address
inet_address_get_is_mc_node_local, address
inet_address_get_is_mc_org_local, address
inet_address_get_is_mc_site_local, address
inet_address_get_is_multicast, address
inet_address_get_is_site_local, address
inet_address_get_native_size, address
inet_address_mask_matches, address
inet_address_to_bytes, address
inet_address_to_string, address
inet_socket_address_get_address, address
inet_socket_address_get_flowinfo, address
inet_socket_address_get_port, address
inet_socket_address_get_scope_id, address
inet_socket_address_new, address
init_finish_func_ptr_anon_81, res
interface_proxy_properties_changed_func_ptr_anon_191, changed_properties
interface_proxy_signal_func_ptr_anon_190, parameters
io_channel_read_line, terminator_pos
io_channel_read_line_string, terminator_pos
is_active_func_ptr_anon_692, vfs
is_tagged_func_ptr_anon_84, res
key_file_load_from_bytes, bytes
launch_func_ptr_anon_34, files
launch_uris_async_func_ptr_anon_50, uris
launch_uris_func_ptr_anon_37, uris
load_finish_func_ptr_anon_433, res
loadable_icon_load_finish, res
local_command_line_func_ptr_anon_64, arguments
local_command_line_func_ptr_anon_64, exit_status
local_file_add_info_func_ptr_anon_697, vfs
local_file_moved_func_ptr_anon_701, vfs
local_file_removed_func_ptr_anon_700, vfs
local_file_set_attributes_func_ptr_anon_699, vfs
log_variant, fields
lookup_by_address_async_func_ptr_anon_567, address
lookup_by_address_func_ptr_anon_566, address
main_context_find_source_by_funcs_user_data, funcs
match_info_fetch_named_pos, end_pos
match_info_fetch_named_pos, start_pos
match_info_fetch_pos, end_pos
match_info_fetch_pos, start_pos
measure_disk_usage_finish_func_ptr_anon_344, num_dirs
measure_disk_usage_finish_func_ptr_anon_344, num_files
measure_disk_usage_func_ptr_anon_342, num_dirs
measure_disk_usage_func_ptr_anon_342, num_files
memory_input_stream_add_bytes, bytes
memory_input_stream_new_from_bytes, bytes
object_class_list_properties, n_properties
open_readwrite_finish_func_ptr_anon_325, res
option_context_parse_strv, arguments
output_stream_write_bytes, bytes
output_stream_write_bytes_async, bytes
parse_name_func_ptr_anon_696, vfs
proxy_connect, proxy_address
proxy_connect_async, proxy_address
query_filesystem_info_finish_func_ptr_anon_266, res
query_info_finish_func_ptr_anon_263, res
read_finish_func_ptr_anon_285, res
regex_check_replacement, has_references
replace_finish_func_ptr_anon_294, res
replace_readwrite_finish_func_ptr_anon_331, res
resolver_free_addresses, addresses
resolver_free_targets, targets
resolver_lookup_by_address, address
resolver_lookup_by_address_async, address
resource_get_info, flags
resources_get_info, flags
set_display_name_finish_func_ptr_anon_272, res
settings_apply, settings
settings_bind, settings
settings_bind_with_mapping, settings
settings_bind_writable, settings
settings_create_action, settings
settings_delay, settings
settings_get, settings
settings_get_boolean, settings
settings_get_child, settings
settings_get_default_value, settings
settings_get_double, settings
settings_get_enum, settings
settings_get_flags, settings
settings_get_has_unapplied, settings
settings_get_int, settings
settings_get_int64, settings
settings_get_mapped, settings
settings_get_range, settings
settings_get_string, settings
settings_get_strv, settings
settings_get_uint, settings
settings_get_uint64, settings
settings_get_user_value, settings
settings_get_value, settings
settings_is_writable, settings
settings_list_children, settings
settings_list_keys, settings
settings_range_check, settings
settings_reset, settings
settings_revert, settings
settings_set, settings
settings_set_boolean, settings
settings_set_double, settings
settings_set_enum, settings
settings_set_flags, settings
settings_set_int, settings
settings_set_int64, settings
settings_set_string, settings
settings_set_strv, settings
settings_set_uint, settings
settings_set_uint64, settings
settings_set_value, settings
show_processes_func_ptr_anon_486, processes
signal_list_ids, n_ids
slice_get_config_state, n_values
socket_address_get_family, address
socket_address_get_native_size, address
socket_address_to_native, address
socket_bind, address
socket_client_set_local_address, address
socket_connect, address
socket_connection_connect, address
socket_connection_connect_async, address
socket_listener_add_address, address
socket_listener_add_address, effective_address
socket_receive_bytes_from, address
socket_receive_from, address
socket_receive_message, address
socket_receive_message, flags
socket_receive_message, messages
socket_receive_message, num_messages
socket_send_message, address
socket_send_message_with_timeout, address
socket_send_to, address
source_new, source_funcs
source_remove_by_funcs_user_data, funcs
source_set_callback_indirect, callback_funcs
source_set_funcs, funcs
spawn_command_line_sync, wait_status
spawn_sync, wait_status
srv_target_list_sort, targets
str_tokenize_and_fold, ascii_alternates
strcanon, valid_chars
strdelimit, delimiters
strescape, exceptions
strsplit_set, delimiters
subprocess_communicate, subprocess
subprocess_communicate_async, subprocess
subprocess_communicate_finish, subprocess
subprocess_communicate_utf8, subprocess
subprocess_communicate_utf8_async, subprocess
subprocess_communicate_utf8_finish, subprocess
subprocess_force_exit, subprocess
subprocess_get_exit_status, subprocess
subprocess_get_identifier, subprocess
subprocess_get_if_exited, subprocess
subprocess_get_if_signaled, subprocess
subprocess_get_status, subprocess
subprocess_get_stderr_pipe, subprocess
subprocess_get_stdin_pipe, subprocess
subprocess_get_stdout_pipe, subprocess
subprocess_get_successful, subprocess
subprocess_get_term_sig, subprocess
subprocess_send_signal, subprocess
subprocess_wait, subprocess
subprocess_wait_async, subprocess
subprocess_wait_check, subprocess
subprocess_wait_check_async, subprocess
subprocess_wait_check_finish, subprocess
subprocess_wait_finish, subprocess
timer_elapsed, microseconds
tls_file_database_new, anchors
to_bytes_func_ptr_anon_424, address
to_native_func_ptr_anon_427, address
to_string_func_ptr_anon_423, address
to_tokens_func_ptr_anon_240, tokens
tuples_destroy, tuples
tuples_index, tuples
type_class_get_private, klass
type_interface_prerequisites, n_prerequisites
type_interfaces, n_interfaces
unix_credentials_message_new_with_credentials, credentials
unix_socket_address_get_address_type, address
unix_socket_address_get_is_abstract, address
unix_socket_address_get_path, address
unix_socket_address_get_path_len, address
uri_build_with_user, auth_params
uri_join_with_user, auth_params
uri_params_iter_init, params
uri_params_iter_init, separators
uri_parse_params, params
uri_parse_params, separators
uri_split_with_user, auth_params
utf8_pointer_to_offset, pos
variant_get_fixed_array, n_elements
variant_new_from_bytes, bytes
vfs_get_file_for_path, vfs
vfs_get_file_for_uri, vfs
vfs_get_supported_uri_schemes, vfs
vfs_is_active, vfs
vfs_parse_name, vfs
vfs_register_uri_scheme, vfs
vfs_unregister_uri_scheme, vfs
writable_change_event_func_ptr_anon_585, settings
writable_changed_func_ptr_anon_583, settings
LIST

REMOVED="$removed" PATTERN="$pattern" CORRECTED="$corrected" ARRAYS="$arrays" perl -e '
    my %removed = map { $_ => 1 } split " ", $ENV{REMOVED};
    my $pattern = qr/$ENV{PATTERN}/;
    my (%decl, @bad, %seen);
    my %arrays = map { $_ => 1 } split " ", $ENV{ARRAYS};
    for my $f (@ARGV) {
        open my $in, "<", $f or die "check-generated: $f: $!\n";
        my ($prev, $struct) = ("", undef);
        while (<$in>) {
            chomp;
            while (/\b(\w+): \[\^\]\^/g) {
                push @bad, "$f: parameter $1 is [^]^T; a T ** out-parameter must be ^^T (list real arrays in \$arrays)" unless $arrays{$1};
            }
            if (/^\s*\@\(link_name = "(\w+)"\)/) { $prev = $1; }
            elsif (/^\s*(\w+) :: proc\((.*)\)/) {
                my ($name, $args) = ($1, $2);
                $decl{$name} .= "$args\n";
                push @bad, "$f: $name is #c_vararg over $prev, a va_list binding"
                    if $args =~ /#c_vararg/ && ($removed{$prev} || $prev =~ $pattern);
                $prev = "";
            }
            elsif (/^(\w+) :: #type proc\s*(?:"c"\s*)?\((.*)\)/) { $decl{$1} .= "$2\n"; }
            elsif (/^(\w+) :: struct\b(.*)$/) { my ($n, $rest) = ($1, $2); $struct = $rest =~ /\}\s*$/ ? undef : $n; $decl{$n} .= "$rest\n"; }
            elsif (/^\}/) { $struct = undef; }
            elsif (defined $struct) { $decl{$struct} .= "$_\n"; }
            elsif (/^\s+(\w+): /) { $decl{$1} .= "$_\n"; }
            push @bad, "$f: $1 is bound again (removed va_list procedure)"
                if /^\s*\@\(link_name = "(\w+)"\)/ && $removed{$1};
        }
    }
    for my $line (split /\n/, $ENV{CORRECTED}) {
        next unless $line =~ /^(\w+), (\w+)$/;
        my ($d, $p) = ($1, $2);
        next if $seen{$line}++;
        if (!exists $decl{$d}) { push @bad, "$d, $p: declaration not found (stale entry)"; next; }
        push @bad, "$d: parameter $p is [^]T again" if $decl{$d} =~ /(?:^|[(, ])\Q$p\E: \[\^\]/m;
    }
    if (@bad) { print STDERR "check-generated: $_\n" for @bad; exit 1; }
' -- "${files[@]}"
echo "check-generated: no va_list binding, no corrected parameter back to [^], no unlisted [^]^T"
