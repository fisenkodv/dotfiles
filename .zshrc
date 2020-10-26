#!/bin/bash

BASH_MODULE_DIR='~/.dotfiles/modules'
BASH_MODULES=(
  'prompt'
  'base'
  'git'
  'fs'
  'net'
  'utils'
  'docker'
  'security'
)

core::load_modules() {
  local full_path=$(eval echo $BASH_MODULE_DIR)

  for module in ${BASH_MODULES[@]}; do
    if [ -f $full_path/.module_${module} ]; then
      source $full_path/.module_${module}
    fi
  done
}

core::load_modules

core::list_commands() {
  local full_path=$(eval echo $BASH_MODULE_DIR)

  if [ ! $@ ]; then
    for module in ${BASH_MODULES[@]}
    do
      if [ -f $full_path/.module_${module} ]; then
        eval list_commands_${module}
      fi
    done
  else
    if [ -f $full_path/.module_$@ ]; then
      eval list_commands_$@
    fi
  fi
}

alias 'dotfiles'=core::list_commands