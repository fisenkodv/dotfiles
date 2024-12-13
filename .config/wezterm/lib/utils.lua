local wezterm = require("wezterm")
local act = wezterm.action
local M = {}

local process_icons = {
	["docker"] = wezterm.nerdfonts.linux_docker,
	["docker-compose"] = wezterm.nerdfonts.linux_docker,
	["psql"] = wezterm.nerdfonts.dev_postgresql,
	["nvim"] = wezterm.nerdfonts.custom_vim,
	["make"] = wezterm.nerdfonts.seti_makefile,
	["vim"] = wezterm.nerdfonts.dev_vim,
	["zsh"] = wezterm.nerdfonts.dev_terminal,
	["fish"] = wezterm.nerdfonts.dev_terminal,
	["bash"] = wezterm.nerdfonts.cod_terminal_bash,
	["htop"] = wezterm.nerdfonts.mdi_chart_donut_variant,
	["cargo"] = wezterm.nerdfonts.dev_rust,
	["sudo"] = wezterm.nerdfonts.fa_hashtag,
	["git"] = wezterm.nerdfonts.dev_git,
	["lua"] = wezterm.nerdfonts.seti_lua,
	["wget"] = wezterm.nerdfonts.mdi_arrow_down_box,
	["curl"] = wezterm.nerdfonts.mdi_flattr,
	["gh"] = wezterm.nerdfonts.dev_github_badge,
	["ruby"] = wezterm.nerdfonts.cod_ruby,
	["node"] = wezterm.nerdfonts.dev_nodejs_small,
	["ssh"] = wezterm.nerdfonts.md_ssh,
	["tmux"] = wezterm.nerdfonts.cod_terminal_tmux,
}

function M.get_process(tab)
	local process_name = tab.active_pane.foreground_process_name:match("([^/\\]+)$")
	local icon = process_icons[process_name] or process_name

	return icon
end

-- This function returns the suggested title for a tab.
-- It prefers the title that was set via `tab:set_title()`
-- or `wezterm cli set-tab-title`, but falls back to the
-- title of the active pane in that tab.
function M.tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

M.theme_switcher = function(window, pane)
	-- get builting color schemes
	local schemes = wezterm.get_builtin_color_schemes()
	local choices = {}

	-- populate theme names in choices list
	for key, _ in pairs(schemes) do
		table.insert(choices, { label = tostring(key) })
	end

	-- sort choices list
	table.sort(choices, function(c1, c2)
		return c1.label < c2.label
	end)

	window:perform_action(
		act.InputSelector({
			title = "🎨 Pick a Theme!",
			choices = choices,
			fuzzy = true,

			action = wezterm.action_callback(function(_, _, _, label)
				local overrides = window:get_config_overrides() or {}
				overrides.color_scheme = label
				wezterm.log_info("Switched to: " .. label)
				window:set_config_overrides(overrides)
			end),
		}),
		pane
	)
end

return M
