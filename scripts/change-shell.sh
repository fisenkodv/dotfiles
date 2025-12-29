#!/usr/bin/env bash

set -euo pipefail

# Skip shell changes during tests.
if [ -n "${IS_TEST:-}" ]; then
  exit 0
fi

# Change the shell to fish
if [ "$SHELL" != "$(which fish)" ]; then
  chsh -s "$(which fish)"
fi
