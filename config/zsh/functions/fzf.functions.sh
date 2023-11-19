#!/bin/bash

h() {
  if type fzf >/dev/null 2>&1; then
    print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac --height "50%" | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
  else
    history | grep -i "$1"
  fi
}
