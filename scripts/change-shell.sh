#!/usr/bin/env bash

set -euo pipefail

# Change the shell to fish
if [ "$SHELL" != "$(which fish)" ]; then
  chsh -s "$(which fish)"
fi
