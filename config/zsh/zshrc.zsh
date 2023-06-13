#!/bin/bash

# Get zgen
source ~/.zgen/zgen.zsh

export DOTFILES="$HOME/.dotfiles"
export GPG_TTY=$TTY # https://unix.stackexchange.com/a/608921

# Generate zgen init.sh if it doesn't exist
if ! zgen saved; then
  zgen oh-my-zsh

  # Plugins
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/github
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/docker-compose
  zgen oh-my-zsh plugins/macos
  zgen oh-my-zsh plugins/genpass

  zgen load agkozak/zsh-z

  zgen oh-my-zsh plugins/asdf

  # These 2 must be in this order
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-history-substring-search

  zgen load zsh-users/zsh-autosuggestions

  # Warn you when you run a command that you've got an alias for
  zgen load djui/alias-tips

  # Completion-only repos
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
# setopt noclobber

# set some more options
setopt pushd_ignore_dups
setopt pushd_silent

# Increase history size
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Return time on long running processes
REPORTTIME=2
TIMEFMT="%U user %S system %P cpu %*Es total"

# Place to stash environment variables
if [[ -e ~/.secrets ]]; then source ~/.secrets; fi

# Load aliases
for f in $DOTFILES/bootstrap/aliases/*.aliases.sh; do source $f; done

# Load functions
for f in $DOTFILES/bootstrap/functions/*.functions.sh; do source $f; done

# Load all path files
for f in $DOTFILES/bootstrap/path/*.path.sh; do source $f; done

# Load all init files
for f in $DOTFILES/bootstrap/init/*.init.sh; do source $f; done

if type fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --type f'
fi

export FZF_DEFAULT_OPTS='--reverse --bind 'ctrl-l:cancel''
export FZF_TMUX_HEIGHT=80%
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export BAT_THEME='Monokai Extended Bright'
export AWS_PAGER='bat -p'

source ~/.asdf/asdf.sh

eval "$(starship init zsh)"
