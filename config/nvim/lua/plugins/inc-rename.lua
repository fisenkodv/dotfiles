return {
	-- Incremental rename
	{
		"smjonas/inc-rename.nvim",
		cmd = "IncRename",
		config = true,
		keys = { { "<leader>rn", ":IncRename ", desc = "Rename" } },
	},
}
