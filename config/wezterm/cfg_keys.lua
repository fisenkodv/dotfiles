local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

function M.setup(cfg)
	cfg.leader = { key = "a", mods = "ALT" }

	cfg.keys = {
		{ key = "[", mods = "LEADER", action = act.ActivateTabRelative(-1) },
		{ key = "]", mods = "LEADER", action = act.ActivateTabRelative(1) },
		{ key = "n", mods = "LEADER", action = act.ShowTabNavigator },
		{
			key = "m",
			mods = "LEADER",
			action = act.ActivateKeyTable({ name = "move_tab", one_shot = false }),
		},

		{ key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "d", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

		{ key = "Enter", mods = "SHIFT|CMD", action = act.TogglePaneZoomState },
		{ key = "q", mods = "LEADER", action = act.CloseCurrentPane({ confirm = true }) },
		{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
		{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
		{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
		{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },
		{ key = "LeftArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Left") },
		{ key = "RightArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Right") },
		{ key = "UpArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Up") },
		{ key = "DownArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Down") },
		{
			key = "r",
			mods = "LEADER",
			action = act.ActivateKeyTable({ name = "resize_pane", one_shot = false }),
		},

		{ key = "w", mods = "LEADER", action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
		{ key = "d", mods = "LEADER", action = act.ShowLauncher },

		{ key = "f", mods = "CTRL", action = act.ToggleFullScreen },

		{ key = "LeftArrow", mods = "OPT", action = act.SendString("\x1bb") },
		{ key = "RightArrow", mods = "OPT", action = act.SendString("\x1bf") },
		{ key = "LeftArrow", mods = "CMD", action = act.SendString("\x01") },
		{ key = "RightArrow", mods = "CMD", action = act.SendString("\x05") },
		{ key = "Backspace", mods = "CMD", action = act.SendString("\x15") },
	}

	cfg.key_tables = {
		resize_pane = {
			{ key = "h", action = act.AdjustPaneSize({ "Left", 1 }) },
			{ key = "j", action = act.AdjustPaneSize({ "Down", 1 }) },
			{ key = "k", action = act.AdjustPaneSize({ "Up", 1 }) },
			{ key = "l", action = act.AdjustPaneSize({ "Right", 1 }) },
			{ key = "Escape", action = "PopKeyTable" },
			{ key = "Enter", action = "PopKeyTable" },
		},
		move_tab = {
			{ key = "h", action = act.MoveTabRelative(-1) },
			{ key = "j", action = act.MoveTabRelative(-1) },
			{ key = "k", action = act.MoveTabRelative(1) },
			{ key = "l", action = act.MoveTabRelative(1) },
			{ key = "Escape", action = "PopKeyTable" },
			{ key = "Enter", action = "PopKeyTable" },
		},
	}

	for i = 1, 9 do
		table.insert(cfg.keys, { key = "" .. i, mods = "LEADER", action = act.ActivateTab(i - 1) })
	end
end

return M
