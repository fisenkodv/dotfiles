local M = {}

-- Path to overriding theme and highlights files
local themes = require "custom.overidden_themes"
local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = { "wombat", "one_light" },
  theme = "wombat",
  changed_themes = themes,
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = false,
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
