local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 13
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8

config.color_scheme = "rose-pine"

config.colors = {
	background = "#000000",
}

config.enable_tab_bar = false

return config
