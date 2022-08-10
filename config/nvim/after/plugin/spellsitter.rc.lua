local status, spellsitter = pcall(require, "spellsitter")
if (not status) then return end

spellsitter.setup({
  -- Whether enabled, can be a list of filetypes, e.g. {'python', 'lua'}
  enable = true,
  debug = false,
  highlight = {
    enable = true,
    -- additional_vim_regex_highlighting = true, -- DO NOT SET THIS
  }
})
