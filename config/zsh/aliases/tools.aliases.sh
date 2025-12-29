#!/usr/bin/env bash

if type bat >/dev/null 2>&1; then
  alias cat="bat"
fi

if type eza >/dev/null 2>&1; then
  alias ll 'eza --long --header --git --group --icons --time-style long-iso'
  alias la 'll --all'
  alias tr1 'eza --tree --level=1 --icons'
  alias tr2 'eza --tree --level=2 --icons'
  alias tr3 'eza --tree --level=3 --icons'
else
  alias ll='ls -la'
fi

if type nvim >/dev/null 2>&1; then
  alias vim='nvim'
fi

if type lazygit >/dev/null 2>&1; then
  alias lg='lazygit'
fi

alias rsync="rsync --archive --verbose --info=progress2 --human-readable --partial --exclude='._*' --exclude=.Trashes --exclude=.Spotlight-V100"

if type just >/dev/null 2>&1; then
  alias j='just'
fi
