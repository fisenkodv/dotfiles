#!/bin/bash

function conventional_commit_usage() {
  echo "Makes a conventional commit."
  echo
  echo "Syntax: $0 -t <type> -s <scope> -m <message>"
  echo "options:"
  echo "-t|--type      Type of the change, e.g. fix, chore, feat, docs, style, refactor, test, ci, build."
  echo "-b|--break     Flag whether the commit has breaking changes or not."
  echo "-s|--scope     Scope of the change, e.g. api, ui, docs."
  echo "-m|--message   Message describes the change."
  echo "-h|--help      Get this help."
  echo
}

function conventional_commit() {
  help=0
  type=
  breaking_change=0
  scope=
  message=

  while getopts "t:bs:m:h" opt; do
      case "${opt}" in
          t) type="$OPTARG" ;;
          b) breaking_change=1 ;;
          s) scope="$OPTARG" ;;
          m) message="$OPTARG" ;;
          h) help=1 ;;
      esac
  done

  if [ $help -eq 1 ]; then
    conventional_commit_usage
  fi

  commit_message=""
  if [ ! -z $type ]; then
    commit_message+="$type"

    if [ ! -z $scope ]; then
      commit_message+="($scope)"
    fi
    if [ $breaking_change -eq 1 ]; then
      commit_message+='!'
    fi
    commit_message+=": "
  fi
  commit_message+="$message"

  git add --all
  git commit -am "$commit_message"
}
