#!/bin/bash

BASH_MODULE_DIR='~/modules'
BASH_MODULES=(
  'base'
  'git'
  'fs'
  'net'
  'utils'
  'prompt'
)

core::load_modules() {
  local full_path=$(eval echo $BASH_MODULE_DIR)

  for index in ${BASH_MODULES[@]}; do
    if [ -f $full_path/.module_${index} ]; then
      source $full_path/.module_${index}
      printf "%b%s%s%s%b%s%b" \
            "\e[0m" \
            "  " \
            "loading bash module..." \
            "  " \
            "\e[1;36m" \
            "${index}" \
            "\n"
    fi
  done
}

core::load_modules

core::list_commands() {
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

alias 'dotfiles'='core::list_commands'