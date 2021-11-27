#!/usr/bin/env bash

weather() {
  curl https://wttr.in/$1\?mM
}
