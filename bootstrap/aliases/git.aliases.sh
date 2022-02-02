#!/usr/bin/env bash

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

git_semantic() {
  git add --all
  git commit -am "$1: $2"
}

gchore() { git_semantic "chore" $1; }
gfeat() { git_semantic "feat" $1; }
gfix() { git_semantic "fix" $1; }
gdocs() { git_semantic "docs" $1; }
gstyle() { git_semantic "style" $1; }
grefactor() { git_semantic "refactor" $1; }
gtest() { git_semantic "test" $1; }
gmerge() { git_semantic "merge" $1; }
