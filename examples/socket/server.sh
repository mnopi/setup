#!/bin/bash
# https://unix.stackexchange.com/questions/336876/simple-shell-script-to-send-socket-message
# https://www.geeksforgeeks.org/coproc-command-in-linux-with-examples/

coproc nc -l localhost 3000

while read -r cmd; do
  case $cmd in
    d) date ;;
    q) break ;;
    *) echo 'What?'
  esac
done <&"${COPROC[0]}" >&"${COPROC[1]}"

kill "$COPROC_PID"

# Client:
# $ nc localhost 3000
# d
# Thu Jan 12 18:04:21 CET 2017
# Hello?
# What?
# q