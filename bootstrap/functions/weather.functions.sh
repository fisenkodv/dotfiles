#!/bin/bash

weather() {
  curl https://wttr.in/$1\?mM
}
