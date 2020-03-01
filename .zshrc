#!/bin/bash

BASH_MODULE_DIR = '~/.dotfiles/modules'
BASH_MODULES = (
  'base'
  'git'
)

load_modules() {
  local full_path = $(eval echo $BASH_MODULE_DIR)

  for index in ${!BASH_MODULES[@]}; do
    if [ -f full_path/.${BASH_MODULES[index]}]; then
      source full_path/.${BASH_MODULES[index]}
  done
}

load_modules()

list_commands() {
  local full_path = $(eval echo $BASH_MODULE_DIR)

  if [ ! $@ ]; then
    for index in ${!BASH_MODULES[@]}
    do
      if [ -f $FULL_PATH/.bash_${BASH_MODULES[index]} ]; then
        eval list_commands_${BASH_MODULES[index]}
      fi
    done
  else
    if [ -f $FULL_PATH/.module_$@ ]; then
      eval list_commands_$@
    fi
  fi
}

alias ''=list_commands