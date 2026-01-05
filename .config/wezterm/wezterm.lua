local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

config.font = wezterm.font("JetBrains Mono")
config.color_scheme = "Tokyo Night"

config.keys = {
	-- paste from the clipboard
	{ key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") },

	-- paste from the primary selection
	{ key = "V", mods = "CTRL", action = act.PasteFrom("PrimarySelection") },
}

return config
