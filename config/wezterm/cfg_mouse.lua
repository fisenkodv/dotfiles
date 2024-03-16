local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

function M.setup(cfg)
	cfg.mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = act.OpenLinkAtMouseCursor,
		},
	}
end

return M
