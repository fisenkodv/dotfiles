#!/bin/bash

alias gst="git status"
alias gau="git add -u"
alias gbd="git branch -D"
alias gbm="git branch --merged"
alias gbmv="git branch -m"
alias gbnm="git branch --no-merged"
alias gbu="git branch -u"
alias gbv="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gbvv="git branch -vv"
alias gcane="git commit --amend --no-edit"
alias gcof="git checkout -f"
alias gct="git checkout -t"
alias gdc="git diff --cached"
alias gdlast="git diff HEAD~1..HEAD"
alias gh="git hist"
alias gl="git l3"
alias glast="git log -1 HEAD"
alias gpdel="git push --delete"
alias gpl="git pull"
alias groot='if [ "`git rev-parse --show-cdup`" != "" ]; then cd `git rev-parse --show-cdup`; fi'
alias gstu="git status -uno"

alias gswm='git switch $(git_main_branch)'

alias gundo="git reset HEAD~1"
alias guns="git reset HEAD --"

alias gstl="git stash list --pretty=format:'%C(blue)%gd%C(reset): %<(100,trunc)%s %C(green)(%cr)%C(reset)'"

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
