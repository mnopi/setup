#!/bin/bash
# https://unix.stackexchange.com/questions/364640/how-to-configure-systemd-to-turn-a-simple-script-with-standardio-in-a-network-se

while true; do
  read -r input
  if [ "${input}" = 'h' ]; then
    echo "3600"
  fi
  if [ "${input-}" ]; then
    logger "heartbeat receveid : ${input}"
  fi
done