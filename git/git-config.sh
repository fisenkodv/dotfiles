#!/bin/bash

# Name
git config --global user.name "Dmitry Fisenko"

# Set git global settings
git config --global push.default simple
git config --global core.autocrlf input
git config --global core.ignorecase false
git config --global core.whitespace cr-at-eol
git config --global pull.rebase true
git config --global rebase.autoStash true
git config --global status.short true
git config --global status.branch true
git config --global branch.autoSetupMerge true
git config --global init.defaultBranch main
git config --global diff.algorithm histogram
git config --global diff.indentHeuristic true

# Setup aliases
git config --global alias.cb '!git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \\(.*\\)/\\1/"'
git config --global alias.a  '!git add . && git s'
git config --global alias.ch 'checkout'
git config --global alias.c  'commit -m'
git config --global alias.s  'status --short --branch'
git config --global alias.d  'diff'
git config --global alias.pl  '!git pull origin $(git cb) --rebase'
git config --global alias.ph  '!git push origin $(git cb)'
