return {
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		opts = {
			window = {
				width = 120,
			},

			plugins = {
				gitsigns = true,
				tmux = true,
				wezterm = { enabled = true, font = "+2" },
			},
		},
		keys = {
			{
				"<leader>z",
				"<cmd>ZenMode<cr>",
				desc = "Zen Mode",
			},
		},
	},
}
