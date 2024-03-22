local wezterm = require("wezterm")

local M = {}

function M.setup(cfg)
	cfg.color_scheme = "Catppuccin Frappe"

	cfg.enable_tab_bar = true
	cfg.use_fancy_tab_bar = false
	cfg.tab_bar_at_bottom = false
	cfg.tab_max_width = 24
	cfg.hide_tab_bar_if_only_one_tab = true

	cfg.font_size = 16.0
	cfg.font = wezterm.font({
		family = "JetBrains Mono",
		harfbuzz_features = {
			"calt=0",
			"clig=0",
			"liga=0",
		},
	})

	cfg.macos_window_background_blur = 10
	cfg.window_background_opacity = 0.95
	cfg.window_decorations = "RESIZE"
	cfg.window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	}
	cfg.inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.6,
	}

	cfg.initial_rows = 50
	cfg.initial_cols = 180
end

return M
