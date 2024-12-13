#!/bin/bash

v() {
  if [ -n "$1" ]; then
    vim $1
  else
    vim .
  fi
}
