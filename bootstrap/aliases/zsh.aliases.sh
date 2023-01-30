#!/bin/bash

# dotfiles aliases
alias .f='cd ~/.dotfiles'
alias .fu='.f && git submodule update --recursive'
alias .fe='.f && vim .'
alias .fr='source ~/.zshrc; echo ".zshrc reloaded"'
alias .fgen='zgen reset;source ~/.zshrc'

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

h() {
  if type fzf >/dev/null 2>&1; then
    print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac --height "50%" | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
  else
    history | grep -i "$1"
  fi
}

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

if type bat >/dev/null 2>&1; then
  alias cat="bat"
fi

if type exa >/dev/null 2>&1; then
  alias ll='exa --long --header --git --group --all'
  alias tr1='exa --long --header --git --group --all --tree --level=1'
  alias tr2='exa --long --header --git --group --all --tree --level=2'
  alias tr3='exa --long --header --git --group --all --tree --level=3'
else
  alias ll='ll -la'
  alias tr1='tree -L 1 -C'
  alias tr2='tree -L 2 -C'
  alias tr3='tree -L 3 -C'
fi

alias to_lower="tr '[:upper:]' '[:lower:]'"
alias to_upper="tr '[:lower:]' '[:upper:]'"
