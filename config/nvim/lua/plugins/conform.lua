return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}

    opts.formatters_by_ft.typescript = {
      "eslint",
      "vtsls",
      "typescript-language-server",
      "typos",
    }

    return opts
  end,
}
