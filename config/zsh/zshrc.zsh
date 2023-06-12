#!/bin/bash

#!/bin/bash

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Get zgen
source ~/.zgen/zgen.zsh

export DOTFILES="$HOME/.dotfiles"

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

export BAT_THEME='Monokai Extended Bright'
export AWS_PAGER='bat -p'

source ~/.asdf/asdf.sh

eval "$(starship init zsh)"

source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
