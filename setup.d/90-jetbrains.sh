#!/bin/sh

set -eu

install() {
  true
}

main() {
  run=true; [ "${VGA-}" != '1' ] || run=false
  command="$(to --command="$0")"

  case "${1-}" in 
    --defaults) ! $run || echo "${command}"; exit ;; 
  esac
  
  $run || { echo Skipping: "${command}"; exit ; }
  [ ! "${DRY_RUN-}" ] || { echo "${command}"; exit; }

  if command -vp "${command}" >/dev/null; then
    # verbose "${command}": Nothing To Do
    echo "${command}": Nothing To Do
  else
    # verbose "${command}": Starting: 
    echo "${command}": Starting
  fi
}

main "$@"
