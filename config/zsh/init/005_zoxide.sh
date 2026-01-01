#!/usr/bin/env bash

if type zoxide >/dev/null 2>&1; then
  eval "$(zoxide init --cmd cd zsh)"
fi
