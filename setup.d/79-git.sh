#!/bin/sh

set -eu

# TODO: añadir los mios con @ y submodules y en meta añadir las dependencias...

main() {
  run=true; [ "${CONTAINER-}" != '1' ] || run=false
  command="$(to --command="$0")"

  case "${1-}" in 
    --default) exit ;; 
    --run) run=true; [ ! "${DRY_RUN-}" ] || { echo "${command}"; exit: } ;;
  esac
  
  $run || { echo Skipping: "${command}"; exit ;; }

  if command -vp git >/dev/null; then
    # verbose Nothing To Do: "${command}"
    echo Nothing To Do: "${command}"
  else
    # verbose Starting: "${command}"
    echo Starting: "${command}"
  fi
}

main "$@"
