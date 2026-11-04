package glib

// Hand-written: the gettext calls a program makes to bind its catalogue, which glib/gi18n.h takes
// from libintl.h, part of the C library, so runic does not see them in glib.h. `dgettext`,
// `dngettext` and the other lookups are GLib's own and generated. Regeneration does not touch
// this file.

foreign import libc "system:c"

@(default_calling_convention = "c")
foreign libc {
	// bindtextdomain names the folder holding <lang>/LC_MESSAGES/<domainname>.mo, and answers the
	// folder bound; a nil dirname only asks. The C library keeps its own copy of dirname.
	bindtextdomain :: proc(domainname: cstring, dirname: cstring) -> cstring ---

	// bind_textdomain_codeset names the encoding the domain's translations are answered in, and
	// answers the one bound; a nil codeset only asks, and answers nil when none was bound.
	bind_textdomain_codeset :: proc(domainname: cstring, codeset: cstring) -> cstring ---

	// textdomain makes domainname the one gettext without a domain looks in, and answers it; a
	// nil domainname only asks. GLib's dgettext reads it too, to decide whether a program is
	// translated at all (g_dgettext's documentation), so a program that looks up every word with
	// its domain named does not set it.
	textdomain :: proc(domainname: cstring) -> cstring ---
}
