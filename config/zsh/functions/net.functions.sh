#!/bin/bash

killport() {
  if [ $# -eq 0 ]; then
    echo "killport: no port specified"
    echo "usage: killport <port>"
    exit 1
  fi

  kill -9 $(lsof -ti tcp:$1)
}


