#!/usr/bin/env bash

# IP addresses
alias 'ip'="dig +short myip.opendns.com @resolver1.opendns.com"
alias 'ips'="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
