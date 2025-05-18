return {
  "fisenkodv/nvim-sharegitlink",
  -- "Le0Michine/nvim-sharegitlink",
  branch = "main",
  keys = {
    {
      "<leader>gl",
      function()
        require("sharegitlink").copy_gitfarm_link()
      end,
      mode = { "n", "v" },
      desc = "Copy Link",
    },
    {
      "<leader>go",
      function()
        require("sharegitlink").open_gitfarm_link()
      end,
      mode = { "n", "v" },
      desc = "Open Link",
    },
  },
}
