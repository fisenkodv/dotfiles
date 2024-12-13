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
