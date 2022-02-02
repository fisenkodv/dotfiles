#!/usr/bin/env bash

# get a random quote from https://github.com/fisenkodv/dictum
alias quote="curl https://api.fisenko.net/v1/quotes/en/random 2>/dev/null | jq -r '(.text + \" (\" + .author.name) + \")\"'"
