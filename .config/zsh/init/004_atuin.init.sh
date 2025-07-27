#!/bin/bash

if type atuin >/dev/null 2>&1; then
  # . "$HOME/.atuin/bin/env"

  eval "$(atuin init zsh)"
fi
