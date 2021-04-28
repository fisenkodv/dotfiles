#!/bin/bash

mkdir -p ~/.dotfiles
cp -f .zshrc ~/
cp -r modules ~/.dotfiles/
source ~/.zshrc
