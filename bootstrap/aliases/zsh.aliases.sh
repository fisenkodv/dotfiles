#!/usr/bin/env bash

alias '.rl'='source ~/.zshrc; echo ".zshrc reloaded"'
alias '.rgen'='zgen reset;source ~/.zshrc'

alias ll='ls -la'
alias llt='ls -lat'

if type systemctl >/dev/null 2>&1; then
  alias senable='sudo systemctl enable'
  alias srestart='sudo systemctl restart'
  alias sstatus='sudo systemctl status'
  alias sstop='sudo systemctl stop'
  alias sstart='sudo systemctl start'
fi

# Easier navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias ~='cd ~/'

# macOS directories
alias 'dl'='cd ~/Downloads'
alias 'dt'='cd ~/Desktop'
alias 'p'='cd ~/Projects'

# Prompt if overwriting
alias cp='cp -i'
alias mv='mv -i'

h() {
  if type fzf >/dev/null 2>&1; then
    print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac --height "50%" | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
  else
    history | grep -i "$1"
  fi
}

alias .f='cd ~/.dotfiles'
alias .fu='.f && git submodule update --recursive --remote'
alias .fe='.f && vim .'

# Detect the platform (similar to $OSTYPE)
OS=$(uname)
case $OS in
'Linux')
  alias ls='ls --color=auto -p'
  alias sagi='sudo apt-get install'
  alias sai='sudo apt install'
  alias sagu='sudo apt-get update'
  alias saar='sudo add-apt-repository'
  alias sagr='sudo apt-get remove'
  alias pbcopy='xclip -selection c'
  alias pbpaste='xclip -selection clipboard -o'
  ;;
'Darwin') ;;

*) ;;
esac

# Other bash stuff
alias t="touch"
alias tr1='tree -L 1 -C'
alias tr2='tree -L 2 -C'
alias tr3='tree -L 3 -C'

if type bat >/dev/null 2>&1; then
  alias cat="bat"
fi

alias to_lower="tr '[:upper:]' '[:lower:]'"
alias to_upper="tr '[:lower:]' '[:upper:]'"
