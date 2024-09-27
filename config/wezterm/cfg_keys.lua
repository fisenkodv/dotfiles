local wezterm = require("wezterm")
local utils = require("lib.utils")
local act = wezterm.action

local M = {}

function M.setup(cfg)
	cfg.leader = { key = "a", mods = "ALT" }

	cfg.keys = {
		{ key = "Escape", mods = "CTRL", action = wezterm.action.ShowDebugOverlay },

		{ key = "w", mods = "CMD", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
		{ key = "t", mods = "ALT", action = wezterm.action_callback(utils.theme_cycler) },

		{ key = "[", mods = "LEADER", action = act.ActivateTabRelative(-1) },
		{ key = "]", mods = "LEADER", action = act.ActivateTabRelative(1) },

		{ key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "d", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "f", mods = "CTRL", action = act.ToggleFullScreen },

		{ key = "Enter", mods = "SHIFT|CMD", action = act.TogglePaneZoomState },
		{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
		{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
		{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
		{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },
		{ key = "LeftArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Left") },
		{ key = "RightArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Right") },
		{ key = "UpArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Up") },
		{ key = "DownArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Down") },
		-- Clears the scrollback and viewport, and then sends CTRL-L to ask the shell to redraw its prompt
		{
			key = "k",
			mods = "CMD",
			action = act.Multiple({
				act.ClearScrollback("ScrollbackAndViewport"),
				act.SendKey({ key = "L", mods = "CTRL" }),
			}),
		},
		{
			key = "E",
			mods = "CTRL|SHIFT",
			action = act.PromptInputLine({
				description = "Enter new name for tab",
				action = wezterm.action_callback(function(window, pane, line)
					-- line will be `nil` if they hit escape without entering anything
					-- An empty string if they just hit enter
					-- Or the actual line of text they wrote
					if line then
						window:active_tab():set_title(line)
					end
				end),
			}),
		},

		{ key = "l", mods = "LEADER", action = act.ShowLauncher },
		{ key = "q", mods = "LEADER", action = act.CloseCurrentPane({ confirm = true }) },

		{
			key = "t",
			mods = "LEADER",
			action = act.ActivateKeyTable({ name = "tabs", one_shot = false }),
		},
		{
			key = "w",
			mods = "LEADER",
			action = act.ActivateKeyTable({ name = "workspaces", one_shot = false }),
		},
		{
			key = "p",
			mods = "LEADER",
			action = act.ActivateKeyTable({ name = "panes", one_shot = false }),
		},

		{ key = "LeftArrow", mods = "OPT", action = act.SendString("\x1bb") },
		{ key = "RightArrow", mods = "OPT", action = act.SendString("\x1bf") },
		{ key = "LeftArrow", mods = "CMD", action = act.SendString("\x01") },
		{ key = "RightArrow", mods = "CMD", action = act.SendString("\x05") },
		{ key = "Backspace", mods = "CMD", action = act.SendString("\x15") },
	}

	cfg.key_tables = {
		panes = {
			{ key = "h", action = act.AdjustPaneSize({ "Left", 1 }) },
			{ key = "j", action = act.AdjustPaneSize({ "Down", 1 }) },
			{ key = "k", action = act.AdjustPaneSize({ "Up", 1 }) },
			{ key = "l", action = act.AdjustPaneSize({ "Right", 1 }) },
			{ key = "Escape", action = "PopKeyTable" },
			{ key = "Enter", action = "PopKeyTable" },
		},
		tabs = {
			{ key = "t", action = act.ShowTabNavigator },
			{ key = "h", action = act.MoveTabRelative(-1) },
			{ key = "j", action = act.MoveTabRelative(-1) },
			{ key = "k", action = act.MoveTabRelative(1) },
			{ key = "l", action = act.MoveTabRelative(1) },
			{ key = "Escape", action = "PopKeyTable" },
			{ key = "Enter", action = "PopKeyTable" },
		},
		workspaces = {
			-- Switch to default workspace
			{
				key = "d",
				action = act.SwitchToWorkspace({ name = "default" }),
			},
			{ key = "l", action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
			-- Prompt for a name to use for a new workspace and switch to it.
			{
				key = "n",
				action = act.PromptInputLine({
					description = wezterm.format({
						{ Attribute = { Intensity = "Bold" } },
						{ Foreground = { AnsiColor = "Fuchsia" } },
						{ Text = "Enter name for new workspace" },
					}),
					action = wezterm.action_callback(function(window, pane, line)
						-- line will be `nil` if they hit escape without entering anything
						-- An empty string if they just hit enter
						-- Or the actual line of text they wrote
						if line then
							window:perform_action(
								act.SwitchToWorkspace({
									name = line,
								}),
								pane
							)
						end
					end),
				}),
			},
		},
	}

	for i = 1, 9 do
		table.insert(cfg.keys, { key = "" .. i, mods = "LEADER", action = act.ActivateTab(i - 1) })
	end
end

return M
