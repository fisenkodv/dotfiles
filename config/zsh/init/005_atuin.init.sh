#!/bin/bash

if type atuin >/dev/null 2>&1; then
  eval "$(atuin init zsh --disable-up-arrow)"
fi
