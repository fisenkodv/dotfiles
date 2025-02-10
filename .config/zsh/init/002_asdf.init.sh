#!/bin/bash

if type asdf >/dev/null 2>&1; then
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
  fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
fi
