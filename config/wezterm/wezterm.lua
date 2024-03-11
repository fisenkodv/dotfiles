local wezterm = require("wezterm")

return {
	color_scheme = "Catppuccin Frappe",

	enable_tab_bar = true,
	use_fancy_tab_bar = false,

	font_size = 16.0,

	macos_window_background_blur = 15,
	window_background_opacity = 1.0,
	window_decorations = "RESIZE",
	window_padding = { left = 0, right = 0, top = 0, bottom = 0 },

	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
