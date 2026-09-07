-- load keymaps and settings first so that if smth goes wrong, at least this still works
require("options.remap")
require("options.set")

-- load plugins
require("options.lazy")

-- load some things manually
require("options.floatingterm")
require("options.color")
