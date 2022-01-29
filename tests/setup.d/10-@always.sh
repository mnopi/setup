#!/bin/sh

set -eu

main() {
  command="$(to --command="$0")"

  case "${1-}" in 
    --defaults) echo "${command}"; exit ;;
  esac
  
  [ ! "${DRY_RUN-}" ] || { echo "${command}"; exit; }

  if command -vp "${command#@}" >/dev/null; then
    # verbose "${command}": Nothing To Do
    echo "${command}": Nothing To Do
  else
    # verbose "${command}": Starting
    echo "${command}": Starting
  fi
}

main "$@"
