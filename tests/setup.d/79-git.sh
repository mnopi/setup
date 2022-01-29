#!/bin/sh

set -eu

# TODO: añadir los mios con @ y submodules y en meta añadir las dependencias...

main() {
  run=true; [ "${CONTAINER-}" != '1' ] || run=false
  command="$(to --command="$0")"

  case "${1-}" in 
    --defaults) exit ;; 
    --run) run=true ;;
  esac
  
  $run || { echo Skipping: "${command}"; exit ; }
  [ ! "${DRY_RUN-}" ] || { echo "${command}"; exit; }

  if command -vp "${command}" >/dev/null; then
    # verbose "${command}": Nothing To Do
    echo "${command}": Nothing To Do
  else
    # verbose "${command}": Starting
    echo "${command}": Starting
  fi
}

main "$@"
