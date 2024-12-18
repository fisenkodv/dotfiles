return {
  {
    "mg979/vim-visual-multi",
    config = function()
      vim.g.VM_maps = {
        ["Select Cursor Up"] = "<C-k>",
        ["Select Cursor Down"] = "<C-j>",
      }
    end,
  },
}
