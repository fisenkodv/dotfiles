#!/usr/bin/env bash

export ZSH_CONFIG_HOME="$HOME/.config/zsh"
export GPG_TTY=$TTY # https://unix.stackexchange.com/a/608921

# Init zinit
# 1. Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
# 2. Download Zinit, if it's not there yet
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
# 3. Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search

# Add in snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::tmux
zinit snippet OMZP::command-not-found

# load completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# Completion styling
zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# History Options
# Increase history size
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
export HISTIGNORE="&:ls:cd:pwd:exit:date:* --help"

setopt append_history
setopt extended_history
setopt share_history # Share history across all your terminal windows
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_verify
setopt pushd_ignore_dups
setopt pushd_silent

# Return time on long running processes
REPORTTIME=2
TIMEFMT="%U user %S system %P cpu %*Es total"

# Place to stash environment variables
if [[ -e ~/.secrets ]]; then source ~/.secrets; fi

# Load all path files
for f in $ZSH_CONFIG_HOME/path/*.path.sh; do source $f; done

# Load all init files
for f in $ZSH_CONFIG_HOME/init/*.init.sh; do source $f; done

# Load aliases
for f in $ZSH_CONFIG_HOME/aliases/*.aliases.sh; do source $f; done

# Load functions
for f in $ZSH_CONFIG_HOME/functions/*.functions.sh; do source $f; done
