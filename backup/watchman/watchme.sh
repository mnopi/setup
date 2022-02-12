#!/bin/bash

# wath me doing changes

set -eu

trap clean ERR SIGINT SIGKILL SIGTERM

root::has::triggers() { watchman trigger-list "${root}" | jq -re '.triggers[]? | ""'; }
trigger::has::name() { watchman trigger-list "${root}" | jq -re ".triggers[]? | select(.name == \"${name}\")"; }

clean() {
  watchman trigger-del "${root}" "${name}" &>/dev/null || true
  root::has::triggers || watchman watch-del "${root}" &>/dev/null || true
  rm -rf "${backup}"
  rm -f "${stdout}"
}

log() { tail -f "$(dirname "$(watchman get-sockname | jq -r .sockname)")/log"; }

start() {
  cd "${1:-.}"
  root="$(realpath "${PWD}")"

  stop 
    
  read -r -n1 -p "Backup '${root}' to show diffs? [N/n]: " input
  [ "${input,,}" = 'n' ] || { rm -rf "${backup}"; mkdir "${backup}"; rsync -av "${root}/" "${backup}"; }
  echo 

  rm -f "${stdout}"; touch "${stdout}"
  # "append_files": true, sends the list of files when invoked.
  # "command": ["$(realpath "$0")", "${root}"],
  # "stdout": ">>${stdout}"
  watchman  -j <<-EOT
["trigger", "${root}", {
  "append_files": false,
  "command": ["${HOME}/show"],
  "ignore_dirs" : [".git", "node_modules", "venv"],
  "name": "${name}",
  "stdin": ["exists", "name", "new"]
}]
EOT

  trigger::has::name >/dev/null || { watchman trigger-list "${root}"; exit 1; }
 
  sleep 1
  clear
  tail -f "${stdout}"
}

stop() {
  root="$(realpath "${1:-.}")"
  
  if [ "${1-}" ] && [ -d "${backup}" ]; then
    shift 
    for arg; do
      echo "new: ${root}/${arg} old: ${backup}/${arg}"
    done
  elif [ "${1-}" ]; then
    echo "${@:1}"
  else
    clean
  fi
}

subscribe() {
  watchman -j --server-encoding=json -p <<-EOT
["subscribe", "${root}", "${name}", { "fields": ["exists", "name", "new"] }]
EOT
}

main() {
  name="$(basename "$0")"
  backup="/tmp/.${name}"
  stdout="/tmp/.${name}.stdout"
  [ "${1-}" != 'start' ] || { $@; exit; }
  stop "$@"
}

main "$@"
