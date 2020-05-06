#!/bin/bash

mkdir ~/.dotfiles
cp -f .zshrc ~/
cp -r modules ~/.dotfiles/
source ~/.zshrc