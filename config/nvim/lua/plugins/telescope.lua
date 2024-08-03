return {
	{
		"telescope.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
			"nvim-telescope/telescope-file-browser.nvim",
		},
		keys = {
			{
				"<leader>sf",
				function()
					local builtin = require("telescope.builtin")
					builtin.treesitter()
				end,
				desc = "Functions, variables"
			},
		},
	},
}
