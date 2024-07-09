local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Appearance
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono", { weight = "DemiBold" })

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 1.0

-- Misc
config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"

return config
