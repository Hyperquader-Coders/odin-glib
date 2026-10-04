#!/usr/bin/env bash
# Rewrites runic's output where runic gets Odin wrong. Run by `make generate` after runic,
# once per package: scripts/postprocess.sh glib|gobject|gio. Deterministic: the same runic
# output always gives the same file. Every rule is listed in docs/PATCHED.md. Flag enums become
# bit_sets (bit_sets below).
#
# The rules are odin-gtk's (MIT, docs/LICENSE-odin-gtk.md), kept where they still apply to
# runic 0.8 on the system headers.
set -euo pipefail

# The GFlags types, per package. runic emits them as `enum u32` (LogLevelFlags and ParamFlags
# `enum i32`) of the C values; a value rule cannot tell them from sequential enums, so they are
# listed. Each list is the <bitfield> entries of GLib-2.0.gir, GObject-2.0.gir and Gio-2.0.gir
# that the headers declare, minus the types in docs/DECISIONS.md §8 that are not flags or have no
# bit (GIR's IOCondition is declared by glib.h, so it is in the glib list).
glib_flags="AsciiType FileSetContentsFlags FileTest FormatSizeFlags HookFlagMask IOCondition
    IOFlags KeyFileFlags LogLevelFlags MainContextFlags MarkupParseFlags OptionFlags
    RegexCompileFlags RegexMatchFlags SpawnFlags TestSubprocessFlags TestTrapFlags TraverseFlags
    UriFlags UriHideFlags UriParamsFlags"
gobject_flags="BindingFlags ConnectFlags ParamFlags SignalFlags SignalMatchType TypeDebugFlags
    TypeFlags TypeFundamentalFlags"
gio_flags="AppInfoCreateFlags ApplicationFlags AskPasswordFlags BusNameOwnerFlags
    BusNameWatcherFlags ConverterFlags DBusCallFlags DBusCapabilityFlags DBusConnectionFlags
    DBusInterfaceSkeletonFlags DBusMessageFlags DBusObjectManagerClientFlags DBusPropertyInfoFlags
    DBusProxyFlags DBusSendMessageFlags DBusServerFlags DBusSignalFlags DBusSubtreeFlags
    FileAttributeInfoFlags FileCopyFlags FileCreateFlags FileMeasureFlags FileMonitorFlags
    FileQueryInfoFlags IOStreamSpliceFlags MountUnmountFlags OutputStreamSpliceFlags
    ResolverNameLookupFlags ResourceFlags SettingsBindFlags SocketMsgFlags SubprocessFlags
    TlsCertificateFlags TlsPasswordFlags"

# bit_sets <file> <strip-prefix> <enum>...: `Foo :: enum u32 {A = 1, B = 4, C = 5, NONE = 0}`
# becomes
#   FooBit :: enum u32 {A = 0, B = 2}        bit indices, prefix stripped from the members
#   Foo :: bit_set[FooBit; u32]              same size and bits as the C type
#   C :: Foo{.A, .B}                         composite masks, by their C names
#   NONE :: Foo{}                            zero members, by their C names; a name with no
#                                            underscore (NONE, DEFAULT), or one that another
#                                            listed enum also declares (NO_FLAGS), is prefixed
#                                            FOO_ so it is unique
# Members that are not one bit or zero are composites; a composite with a bit that has no
# member is a transmute of the C value. A negative member (ParamFlags.DEPRECATED, bit 31;
# LogLevelFlags.LOG_LEVEL_MASK) is its 32-bit two's complement; the enum may be `enum i32`.
# Members with the same value (PRIVATE and STATIC_NAME) keep both names in FooBit. Fails if a
# listed enum is missing or has no single-bit member, so a header bump that changes a flag type
# is noticed.
bit_sets() {
    local file=$1 strip=$2
    shift 2
    STRIP=$strip NAMES="$*" perl -i -ne '
        BEGIN {
            $strip = $ENV{STRIP}; %want = map { $_ => 1 } split " ", $ENV{NAMES};
            # a zero or composite name declared by more than one listed enum is ambiguous
            open my $in, "<", $ARGV[0] or die "postprocess: $ARGV[0]: $!\n";
            while (<$in>) {
                next unless /^(\w+) :: enum (?:u32|i32) \{(.*)\}\s*$/ && $want{$1};
                my %seen;
                for my $m (split /,\s*/, $2 =~ s/\s+$//r) {
                    next unless $m =~ /^(\w+) = (-?\d+)$/;
                    my ($id, $v) = ($1, $2); $v += 4294967296 if $v < 0;
                    $cnt{$id}++ if !$seen{$id}++ && ($v == 0 || ($v & ($v - 1)) != 0);
                }
            }
            close $in;
        }
        if (/^(\w+) :: enum (?:u32|i32) \{(.*)\}\s*$/ && $want{$1}) {
            my ($name, $body) = ($1, $2);
            delete $want{$name};
            my (@bits, @zero, @comp, %idx, $mask);
            (my $pre = uc($name =~ s/([a-z0-9])([A-Z])/$1_$2/gr)) .= "_";
            for my $m (split /,\s*/, $body =~ s/\s+$//r) {
                $m =~ /^(\w+) = (-?\d+)$/ or die "postprocess: $name: cannot read member $m\n";
                my ($id, $v) = ($1, $2);
                $v += 4294967296 if $v < 0;
                die "postprocess: $name.$id does not fit 32 bits\n" if $v < 0 || $v > 4294967295;
                if ($v == 0) { push @zero, $id }
                elsif (($v & ($v - 1)) == 0) { push @bits, [$id, $v] }
                else { push @comp, [$id, $v] }
            }
            die "postprocess: $name has no single-bit member\n" unless @bits;
            for (@bits) {
                my $i = 0; $i++ while (1 << $i) != $_->[1];
                ($id = $_->[0]) =~ s/^\Q$strip\E//;
                $idx{$_->[1]} //= $id; $mask |= $_->[1];
                $_ = [$id, $i];
            }
            print "${name}Bit :: enum u32 {", join(", ", map { "$_->[0] = $_->[1]" } @bits), "}\n";
            print "$name :: bit_set[${name}Bit; u32]\n";
            my $cname = sub { ($_[0] =~ /_/ && $cnt{$_[0]} < 2) ? $_[0] : "$pre$_[0]" };
            for (@zero) { print $cname->($_), " :: $name\{}\n" }
            for (@comp) {
                my ($id, $v) = @$_;
                $id = $cname->($id);
                if (($v & ~$mask) == 0) {
                    print "$id :: $name\{", join(", ", map { ".$idx{$_}" } grep { $v & $_ } sort { $a <=> $b } keys %idx), "}\n";
                } else { print "$id :: transmute($name)u32($v)\n" }
            }
        } else { print }
        END { die "postprocess: flag enum(s) not found: " . join(" ", sort keys %want) . "\n" if %want; }
    ' "$file"
}

# `to.detect.parameters: declared` (rune.yml) makes every procedure parameter `^T` unless
# `arrays:` lists it, and skips procedures that took a va_list. It leaves three places to put
# right here, each from a table of `scope|name|from|to` rows. The scope is `member` for a
# struct member or variable (`    name: from,`), else the name of the callback type or
# procedure whose parameter is rewritten.
#  - struct members and variables: runic still writes `[^]T` for a name ending in "s"; the rows
#    are the ones the headers declare as ONE `T *`, so they become `^T`.
#  - parameters of function-pointer types are always `^T` under `declared`; the rows restore
#    the real arrays (`[^]T`) and the `T ***` pointers to one array (`^[^]T`).
#  - `T ***` procedure parameters (a pointer to one array) are `^^^T` under `declared`; the
#    rows write `^[^]^T`.
# scripts/check-generated.sh holds the lists that keep the faults from coming back.

# rows_for <pkg>: the rows of one package.
rows_for() {
    case $1 in
    glib)
        printf '%s\n' \
            "LogWriterFunc|fields|^LogField|[^]LogField" \
            "PollFunc|ufds|^PollFD|[^]PollFD" \
            "start_element_func_ptr_anon_21|attribute_names|^cstring|[^]cstring" \
            "start_element_func_ptr_anon_21|attribute_values|^cstring|[^]cstring" \
            "member|callback_funcs|[^]SourceCallbackFuncs|^SourceCallbackFuncs" \
            "member|source_funcs|[^]SourceFuncs|^SourceFuncs" \
            "member|poll_fds|[^]SList|^SList" \
            "member|msgs|[^]SList|^SList" \
            "member|items|[^]List|^List" \
            "member|g_test_config_vars|[^]TestConfig|^TestConfig" \
            "get_filename_charsets|filename_charsets|^^cstring|^[^]cstring" \
            "str_tokenize_and_fold|ascii_alternates|^^cstring|^[^]cstring" \
            "option_context_parse_strv|arguments|^^cstring|^[^]cstring"
        ;;
    gobject)
        printf '%s\n' \
            "ClosureMarshal|param_values|^Value|[^]Value" \
            "SignalEmissionHook|param_values|^Value|[^]Value" \
            "TypeValueCollectFunc|collect_values|^TypeCValue|[^]TypeCValue" \
            "TypeValueLCopyFunc|collect_values|^TypeCValue|[^]TypeCValue" \
            "VaClosureMarshal|param_types|^Type|[^]Type" \
            "constructor_func_ptr_anon_11|construct_properties|^ObjectConstructParam|[^]ObjectConstructParam" \
            "dispatch_properties_changed_func_ptr_anon_16|pspecs|^^ParamSpec|[^]^ParamSpec" \
            "member|construct_properties|[^]glib.SList|^glib.SList" \
            "member|interface_infos|[^]glib.SList|^glib.SList" \
            "member|type_infos|[^]glib.SList|^glib.SList"
        ;;
    gio)
        printf '%s\n' \
            "_properties_changed_func_ptr_anon_193|invalidated_properties|^cstring|[^]cstring" \
            "change_event_func_ptr_anon_586|keys|^glib.Quark|[^]glib.Quark" \
            "from_tokens_func_ptr_anon_241|tokens|^cstring|[^]cstring" \
            "interface_proxy_properties_changed_func_ptr_anon_191|invalidated_properties|^cstring|[^]cstring" \
            "local_command_line_func_ptr_anon_64|arguments|^^cstring|^[^]cstring" \
            "open_func_ptr_anon_62|files|^^File|[^]^File" \
            "receive_messages_func_ptr_anon_153|messages|^InputMessage|[^]InputMessage" \
            "send_messages_func_ptr_anon_154|messages|^OutputMessage|[^]OutputMessage" \
            "set_advertised_protocols_func_ptr_anon_235|protocols|^cstring|[^]cstring" \
            "writev_async_func_ptr_anon_123|vectors|^OutputVector|[^]OutputVector" \
            "writev_fn_func_ptr_anon_122|vectors|^OutputVector|[^]OutputVector" \
            "writev_nonblocking_func_ptr_anon_541|vectors|^OutputVector|[^]OutputVector" \
            "member|address|[^]^SocketAddress|^^SocketAddress" \
            "member|address|[^]SocketAddress|^SocketAddress" \
            "member|control_messages|[^]^^SocketControlMessage|^[^]^SocketControlMessage" \
            "member|num_control_messages|[^]glib.uint_|^glib.uint_" \
            "socket_receive_message|messages|^^^SocketControlMessage|^[^]^SocketControlMessage"
        ;;
    esac
}

# param_rules <file> <row>...: applies the rows; fails when one matched nothing, so a header
# bump that changes a declaration is noticed. A row is `scope|name|from|to`.
param_rules() {
    local file=$1
    shift
    [ $# -gt 0 ] || return 0
    RULES=$(printf '%s\n' "$@") perl -i -ne '
        BEGIN { @r = map { [split /\|/, $_, 4] } split /\n/, $ENV{RULES}; @hit = (0) x @r }
        for my $i (0..$#r) {
            my ($scope, $n, $from, $to) = @{$r[$i]};
            if ($scope eq "member") {
                $hit[$i]++ if s/^(\s+\Q$n\E: )\Q$from\E(,?\s*)$/$1$to$2/;
            } elsif (/^(?:    )?\Q$scope\E :: /) {
                $hit[$i]++ if s/\b\Q$n\E: \Q$from\E(?![\w.])/$n: $to/;
            }
        }
        print;
        END { my $bad = 0; for my $i (0..$#r) { next if $hit[$i]; print STDERR "postprocess: row matched nothing: @{$r[$i]}[0..3]\n"; $bad = 1 } exit $bad }
    ' "$file"
}

pkg=${1:?usage: postprocess.sh glib|gobject|gio}
file="$pkg/$pkg.odin"
[ -f "$file" ] || { echo "postprocess: $file not found" >&2; exit 2; }

# `typedef struct _GFoo GFoo` comes out as `Foo :: _GFoo` plus `_GFoo :: ...`: drop the alias, rename the struct.
common=(
    -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_G\1$##'
    -e 's#\b_G\([A-Z]\)#\1#g'
)

case "$pkg" in
glib)
    # gchar * is a typedef'd char pointer, which runic 0.8 leaves as ^char. Byte buffers go back
    # to ^byte. Macro constants that runic emits as backtick strings become Odin expressions.
    sed -i "$file" \
        -e 's/\^char/cstring/g' \
        -e 's/data: cstring/data: ^byte/g' \
        -e 's/buf: cstring/buf: ^byte/g' \
        -e 's/buffer: cstring/buffer: ^byte/g' \
        -e 's/contents: cstring/contents: ^byte/g' \
        -e 's/inbuf: \^cstring/inbuf: \^^byte/g' \
        -e 's/outbuf: \^cstring/outbuf: \^^byte/g' \
        -e '/\(MINOFFSET\|MAXOFFSET\|LOG_2_BASE_10\|IEEE754\|TIME_SPAN\|ASCII_DTOSTR_BUF_SIZE\|VARIANT_TYPE_\|LOG_LEVEL_USER_SHIFT\|LOG_FATAL_MASK\)/{s/`//g; s/\\//g}' \
        -e 's/\(MINFLOAT :: \).*/\1min(float)/' \
        -e 's/\(MAXFLOAT :: \).*/\1max(float)/' \
        -e 's/\(MINDOUBLE :: \).*/\1min(double)/' \
        -e 's/\(MAXDOUBLE :: \).*/\1max(double)/' \
        -e 's/\(MINSHORT :: \).*/\1min(short)/' \
        -e 's/\(MAXSHORT :: \).*/\1max(short)/' \
        -e 's/\(MAXUSHORT :: \).*/\1max(ushort)/' \
        -e 's/\(MININT :: \).*/\1min(int_)/' \
        -e 's/\(MAXINT :: \).*/\1max(int_)/' \
        -e 's/\(MAXUINT :: \).*/\1max(uint_)/' \
        -e 's/\(MINLONG :: \).*/\1min(long)/' \
        -e 's/\(MAXLONG :: \).*/\1max(long)/' \
        -e 's/\(MAXULONG :: \).*/\1max(ulong)/' \
        -e 's/\(MAXSIZE :: \).*/\1max(size)/' \
        -e 's/\(MINSSIZE :: \).*/\1min(ssize)/' \
        -e 's/\(MAXSSIZE :: \).*/\1max(ssize)/' \
        -e '/^\(MINOFFSET\|MAXOFFSET\|TIME_SPAN\)/ {s/(gint64)//g; s/\([0-9a-fA-F]\)[LU]\+\b/\1/g}' \
        -e 's/\(MININT8 :: \).*/\1min(int8)/' \
        -e 's/\(MAXINT8 :: \).*/\1max(int8)/' \
        -e 's/\(MAXUINT8 :: \).*/\1max(uint8)/' \
        -e 's/\(MININT16 :: \).*/\1min(int16)/' \
        -e 's/\(MAXINT16 :: \).*/\1max(int16)/' \
        -e 's/\(MAXUINT16 :: \).*/\1max(uint16)/' \
        -e 's/\(MININT32 :: \).*/\1min(int32)/' \
        -e 's/\(MAXINT32 :: \).*/\1max(int32)/' \
        -e 's/\(MAXUINT32 :: \).*/\1max(uint32)/' \
        -e 's/\(MININT64 :: \).*/\1min(int64)/' \
        -e 's/\(MAXINT64 :: \).*/\1max(int64)/' \
        -e 's/\(MAXUINT64 :: \).*/\1max(uint64)/' \
        -e '/^VARIANT_TYPE_/s/(const GVariantType \*)//g' \
        -e '/^LOG_FATAL_MASK/ {s/G_LOG_/.LOG_/g; s/ *| */, /g; s/:: (\(.*\))$/:: LogLevelFlags{\1}/}' \
        -e '/^LOG_DOMAIN ::/d' \
        -e 's/^FALSE :: 0$/FALSE :: false/' \
        -e 's/^TRUE :: 1$/TRUE :: true/' \
        -e 's/^SOURCE_REMOVE :: .*/SOURCE_REMOVE :: FALSE/' \
        -e 's/^SOURCE_CONTINUE :: .*/SOURCE_CONTINUE :: TRUE/' \
        -e 's/^\(HOOK_FLAG_USER_SHIFT :: \)`(\([0-9]*\))`$/\1\2/' \
        -e 's/^\([A-Z_]*_ERROR :: \)`(\?g_\([a-z_0-9]*\) \?())\?`$/\1\2/' \
        -e '/^URI_/s/\\" \\"//g' \
        "${common[@]}" \
        -e '/^NSEC_PER_SEC/ {s#`##g; s#(##g; s#)##g; s#0[^0-9]\+#0#}' \
        -e 's#\(^\s\+[p]*data:\s*\)^#\1[^]#'
    # shellcheck disable=SC2086
    bit_sets "$file" "" $glib_flags
    ;;
gobject)
    sed -i "$file" \
        -e 's/\^glib.char/cstring/g' \
        -e '/^\(TYPE_\|VALUE_\|SIGNAL_\|PARAM_\)/s/`//g' \
        -e '/^\(TYPE_\|SIGNAL_\)/s/(GType)//g' \
        -e '/^PARAM_STATIC_STRINGS/ {s/G_PARAM_/./g; s/ *| */, /g; s/:: (\(.*\))$/:: ParamFlags{\1}/}' \
        -e 's/GLIB_DEPRECATED_MACRO//g' \
        -e 's/_FOR ((g_array_get_type ()))//g' \
        -e '/^TYPE_/s/(g_//g' \
        -e '/^TYPE_/s/())//g' \
        -e '/^TYPE_/s/])/]/g' \
        -e '/^TYPE_/s/param/#force_inline proc "c" () -> Type { return param/g' \
        -e '/^TYPE_/s/\]/\] }/g' \
        -e 's/class: \[\^\]/class: ^/g' \
        -e '/^ParamFlags/s/PARAM_//g' \
        "${common[@]}"
    # shellcheck disable=SC2086
    bit_sets "$file" "" $gobject_flags
    ;;
gio)
    # SC2016: the backticks are literal text in the generated file.
    # shellcheck disable=SC2016
    sed -i "$file" \
        -e 's/\^glib.char/cstring/g' \
        -e '/^\(FILE_ATTRIBUTE_\|DEBUG_CONTROLLER_\|DRIVE_IDENTIFIER_\|MEMORY_MONITOR_\|MENU_ATTRIBUTE_\|MENU_LINK_\|VOLUME_MONITOR_\|NATIVE_VOLUME_MONITOR_\|NETWORK_MONITOR_\|POWER_PROFILE_MONITOR_\|PROXY_\|TLS_BACKEND_\|TLS_DATABASE_\|VFS_EXTENSION_\|VOLUME_IDENTIFIER_\)/ {s/`//g; s/\\//g}' \
        -e '/^\(TYPE_\|IO_TYPE_MODULE\)/ {s/`//g; s/(g_//g; s/())//g}' \
        -e '/^\(DBUS_ERROR\|IO_ERROR\|TYPE_LIST_MODEL\|RESOLVER_ERROR\|RESOURCE_ERROR\|TLS_ERROR\|TLS_CHANNEL_BINDING_ERROR\)/ {s/`//g; s/g_//g; s/()//g}' \
        -e 's/`TRUE`/glib.TRUE/g' \
        -e 's/`FALSE`/glib.FALSE/g' \
        -e '/^VOLUME_IDENTIFIER_KIND_HAL_UDI/s/GLIB_DEPRECATED_MACRO//g' \
        -e '/^TLS_CHANNEL_BINDING_ERROR/s/bindinerror/binding_error/g' \
        "${common[@]}"
    # shellcheck disable=SC2086
    bit_sets "$file" "" $gio_flags
    ;;
*)
    echo "postprocess: unknown package $pkg" >&2
    exit 2
    ;;
esac

mapfile -t rules < <(rows_for "$pkg")
param_rules "$file" "${rules[@]}"
