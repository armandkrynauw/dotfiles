local wezterm = require("wezterm")

local config = wezterm.config_builder()
local MOCHA_MAUVE = "#cba6f7"
local BORDER_WIDTH = "5px"

-- Appearance
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono", { weight = "DemiBold" })

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 1.0

config.window_frame = {
	border_left_width = BORDER_WIDTH,
	border_right_width = BORDER_WIDTH,
	border_bottom_height = BORDER_WIDTH,
	border_top_height = BORDER_WIDTH,

	border_left_color = MOCHA_MAUVE,
	border_right_color = MOCHA_MAUVE,
	border_bottom_color = MOCHA_MAUVE,
	border_top_color = MOCHA_MAUVE,
}

-- Misc
config.automatically_reload_config = true

return config
