# odin-glib: Odin bindings for GLib, GObject and GIO. Consumed via -collection:glib=/path/to/odin-glib
# What every runic binding does is in house/binding.mk, a copy of house-rules'
# scripts/binding/binding.mk: this repository is public, and its runner has no house-rules.
# project.toml names the kind, the packages and the system packages.
include house/binding.mk
