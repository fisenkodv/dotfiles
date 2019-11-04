#!/bin/bash

profile=""

usage() {
  echo "usage: install [[[-p profile ]] | [-h]]"
}

install() {
  target="$HOME/"
  cp "./$profile/.zsh_prompt" "$target"
  for file in .{path,zshrc,exports,aliases,custom_aliases,functions,extra}; do
    echo "cp "$file" "$target""
    [ -r "$file" ] && [ -f "$file" ] && cp "$file" "$target"
  done
}

while [ "$1" != "" ]; do
  case $1 in
  -p | --profile)
    shift
    profile=$1
    ;;
  -h | --help)
    usage
    exit
    ;;
  *)
    usage
    exit 1
    ;;
  esac
  shift
done

if [[ $profile == *[!\ ]* ]]; then
  echo "profile is $profile"
  install
else
  echo "profile must be set."
  exit 1
fi
