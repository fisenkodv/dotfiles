#!/bin/bash

# dotfiles aliases
alias .f='p && cd dotfiles'
alias .fu='.f && git pull'
alias .fe='.f && vim .'
alias .fr='source ~/.zshrc; echo ".zshrc reloaded"'

# Easier navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~/'

# macOS directories
alias 'dl'='cd ~/Downloads'
alias 'dt'='cd ~/Desktop'
alias 'p'='cd ~/Projects'

# Other bash stuff
alias t="touch"

if type bat >/dev/null 2>&1; then
  alias cat="bat"
fi

if type eza >/dev/null 2>&1; then
  alias ll='eza --long --header --git --group --all --icons'
  alias tr1='eza --long --header --git --group --all --tree --level=1 --icons'
  alias tr2='eza --long --header --git --group --all --tree --level=2 --icons'
  alias tr3='eza --long --header --git --group --all --tree --level=3 --icons'
else
  alias ll='ls -la'
fi

if type nvim >/dev/null 2>&1; then
  alias vim='nvim'
fi
