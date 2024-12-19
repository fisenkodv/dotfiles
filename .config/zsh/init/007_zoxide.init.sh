#!/bin/bash

if type fzf >/dev/null 2>&1; then
  eval "$(zoxide init --cmd cd zsh)"
fi
