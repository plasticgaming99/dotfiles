local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

--config.window_decorations = "INTEGRATED_BUTTONS"
config.window_decorations = "RESIZE | INTEGRATED_BUTTONS"
config.font_size = 12.0
config.font = wezterm.font("Cascadia Code", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.color_scheme = "Monokai (base16)"

config.default_cursor_style = "SteadyBlock"

config.window_padding = {
	left = 0,
	right = 0,
	top = 6,
	bottom = 0,
}

config.set_environment_variables = {
	TERM = "xterm-256color",
	COLORTERM = "truecolor",
}

config.term = "wezterm"

return config
