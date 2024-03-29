local wezterm = require("wezterm")
local helpers = require("lib.helpers")

local M = {}

function M.setup(cfg)
	cfg.color_scheme = "Catppuccin Frappe"

	cfg.enable_tab_bar = true
	cfg.use_fancy_tab_bar = false
	cfg.tab_bar_at_bottom = false
	cfg.tab_max_width = 30
	cfg.hide_tab_bar_if_only_one_tab = true
	cfg.status_update_interval = 100

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
		left = 5,
		right = 5,
		top = 0,
		bottom = 0,
	}
	cfg.inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.8,
	}

	cfg.initial_rows = 50
	cfg.initial_cols = 180

	wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
		local position = tab.tab_index + 1
		local process_icon = helpers.get_process(tab)
		-- ensure that the titles fit in the available space
		local tab_text = wezterm.truncate_right(helpers.tab_title(tab), max_width - 2)
		local tab_title = string.format(" ⌘%d %s %s ", position, process_icon, tab_text)

		return {
			{ Text = tab_title },
		}
	end)

	wezterm.on("update-right-status", function(window, pane)
		local date = wezterm.strftime("%a %b %-d %H:%M")

		window:set_right_status(wezterm.format({
			{ Text = wezterm.nerdfonts.md_calendar_clock .. " " .. date },
			{ Text = " | " },
			{ Text = wezterm.nerdfonts.oct_person .. " " .. wezterm.hostname() },
		}))
	end)
end

return M
