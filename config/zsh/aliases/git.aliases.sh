#!/bin/bash

alias gaa="git add --all"
alias gbd="git branch -D"
alias gbv="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gbvv="git branch -vv"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gd='git diff'
alias gdc="git diff --cached"
alias gh="git hist"
alias gl="git l3"
alias glast="git log -1 HEAD"
alias gp="git push"
alias gpl="git pull"
alias gst="git status"
alias gstl="git stash list --pretty=format:'%C(blue)%gd%C(reset): %<(100,trunc)%s %C(green)(%cr)%C(reset)'"
alias gundo="git reset HEAD~1"
