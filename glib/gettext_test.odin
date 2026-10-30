#+test
package glib

import "core:testing"

// A domain of the test's own, which nothing else in the process binds.
@(private = "file")
DOMAIN :: "odin-glib-gettext-test"

@(test)
test_bindtextdomain_keeps_the_folder :: proc(t: ^testing.T) {
	testing.expect_value(t, string(bindtextdomain(DOMAIN, "/nonexistent/locale")), "/nonexistent/locale")
	testing.expect_value(t, string(bindtextdomain(DOMAIN, nil)), "/nonexistent/locale")
}

@(test)
test_bind_textdomain_codeset_keeps_the_encoding :: proc(t: ^testing.T) {
	domain :: DOMAIN + "-codeset"
	testing.expect(t, bind_textdomain_codeset(domain, nil) == nil, "a fresh domain has a codeset")
	testing.expect_value(t, string(bind_textdomain_codeset(domain, "UTF-8")), "UTF-8")
	testing.expect_value(t, string(bind_textdomain_codeset(domain, nil)), "UTF-8")
}

@(test)
test_textdomain_asks_without_changing :: proc(t: ^testing.T) {
	before := string(textdomain(nil))
	testing.expect(t, before != "", "no default domain")
	testing.expect_value(t, string(textdomain(nil)), before)
}

// A domain with no catalogue answers the msgid itself, the same pointer.
@(test)
test_dgettext_without_a_catalogue_answers_the_msgid :: proc(t: ^testing.T) {
	domain :: DOMAIN + "-lookup"
	bindtextdomain(domain, "/nonexistent/locale")
	msgid: cstring = "Open"
	testing.expect(t, dgettext(domain, msgid) == msgid, "dgettext did not answer the msgid")
	one: cstring = "%d file"
	many: cstring = "%d files"
	testing.expect(t, dngettext(domain, one, many, 1) == one, "dngettext(1) is not the singular")
	testing.expect(t, dngettext(domain, one, many, 2) == many, "dngettext(2) is not the plural")
}
