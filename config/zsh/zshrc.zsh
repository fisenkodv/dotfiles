#!/bin/bash

# Get zgen
source ~/.zgen/zgen.zsh

export ZSH_CONFIG_HOME="$HOME/.config/zsh"
export GPG_TTY=$TTY # https://unix.stackexchange.com/a/608921

# Generate zgen init.sh if it doesn't exist
if ! zgen saved; then
  zgen load agkozak/zsh-z
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-autosuggestions
  zgen load zsh-users/zsh-completions src

  # Generate init.sh
  zgen save
fi

# History Options
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify

# Share history across all your terminal windows
setopt share_history

# set some more options
setopt pushd_ignore_dups
setopt pushd_silent

# Increase history size
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
export HISTIGNORE="&:ls:cd:pwd:exit:date:* --help"

# Return time on long running processes
REPORTTIME=2
TIMEFMT="%U user %S system %P cpu %*Es total"

# Place to stash environment variables
if [[ -e ~/.secrets ]]; then source ~/.secrets; fi

# Load aliases
for f in $ZSH_CONFIG_HOME/aliases/*.aliases.sh; do source $f; done

# Load functions
for f in $ZSH_CONFIG_HOME/functions/*.functions.sh; do source $f; done

# Load all path files
for f in $ZSH_CONFIG_HOME/path/*.path.sh; do source $f; done

# Load all init files
for f in $ZSH_CONFIG_HOME/init/*.init.sh; do source $f; done

if type fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --type f'
fi

export ASDF_DIR=$HOME/.asdf
eval "$(starship init zsh)"

. "$HOME/.asdf/asdf.sh"
