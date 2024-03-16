local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

function M.setup(cfg)
	cfg.keys = {
		{ key = "f", mods = "CTRL", action = act.ToggleFullScreen },
		{ key = "LeftArrow", mods = "OPT", action = act.SendString("\x1bb") },
		{ key = "RightArrow", mods = "OPT", action = act.SendString("\x1bf") },
		{ key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "d", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "LeftArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Left") },
		{ key = "RightArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Right") },
		{ key = "UpArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Up") },
		{ key = "DownArrow", mods = "ALT|CMD", action = act.ActivatePaneDirection("Down") },
	}
end

return M
