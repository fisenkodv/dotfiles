local wezterm = require("wezterm")
local utils = require("lib.utils")

local M = {}

function M.setup(cfg)
	cfg.color_scheme = "Tokyo Night Storm"
	-- cfg.color_scheme = "Catppuccin Frappe"
	-- cfg.color_scheme = "Breeze"
	-- cfg.color_scheme = "Google Dark (Gogh)"

	cfg.enable_tab_bar = true
	cfg.use_fancy_tab_bar = false
	cfg.tab_bar_at_bottom = true
	cfg.hide_tab_bar_if_only_one_tab = false
	cfg.status_update_interval = 100
	cfg.default_cursor_style = "SteadyBlock"
	cfg.command_palette_font_size = 16
	cfg.window_frame = { font_size = 16 }
	cfg.font_size = 16
	cfg.freetype_load_target = "HorizontalLcd"

	local fontFamily = "JetBrainsMonoNL Nerd Font"
	-- local fontFamily = "JetBrains Mono"

	cfg.font = wezterm.font({
		family = fontFamily,
		weight = "DemiBold",
		harfbuzz_features = {
			"calt=0",
			"clig=0",
			"liga=0",
		},
	})
	cfg.font_rules = {
		{
			intensity = "Bold",
			font = wezterm.font({ family = fontFamily, weight = "DemiBold" }),
		},
	}

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

	wezterm.on("format-tab-title", function(tab, _tabs, _panes, _config, _hover, max_width)
		local position = tab.tab_index + 1
		local process_icon = utils.get_process(tab)
		-- ensure that the titles fit in the available space
		local tab_text = wezterm.truncate_right(utils.tab_title(tab), max_width - 2)
		local tab_title = string.format(" ⌘%d %s %s ", position, process_icon, tab_text)

		return {
			{ Text = tab_title },
		}
	end)
	--
	-- wezterm.on("update-right-status", function(window, _pane)
	-- 	local date = wezterm.strftime("%a %b %-d %I:%M %p")
	--
	-- 	window:set_right_status(wezterm.format({
	-- 		{ Text = wezterm.nerdfonts.md_calendar_clock .. " " .. date },
	-- 		{ Text = " | " },
	-- 		{ Text = wezterm.nerdfonts.oct_person .. " " .. wezterm.hostname() },
	-- 	}))
	-- end)
	--
	local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
	bar.apply_to_config(cfg, {
		separator = {
			left_icon = "",
			right_icon = "",
			field_icon = "",
		},

		modules = {
			cwd = {
				enabled = false,
			},
		},
	})
end

return M
