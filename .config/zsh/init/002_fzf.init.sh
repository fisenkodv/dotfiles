#!/bin/bash

if type fzf >/dev/null 2>&1; then
  source <(fzf --zsh)

  # --- setup fzf theme ---
  export FZF_DEFAULT_OPTS="
    --color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284
    --color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf
    --color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"

  export FZF_CTRL_R_OPTS="
    --style full
    --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
    --color header:italic
    --header 'Press CTRL-Y to copy command into clipboard'"

  export FZF_CTRL_T_OPTS="
    --style full
    --preview 'if test -d {}; eza
    --tree
    --color=always {} | head -n 200; else; bat -n --color=always --line-range :500 {}; end'"

  export FZF_ALT_C_OPTS="
    --style full
    --preview 'eza --tree --color=always {} | head -200'"
fi
