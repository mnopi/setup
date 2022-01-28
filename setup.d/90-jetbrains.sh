#!/bin/sh

set -eu


main() {
  [ "${VGA-}" ] || exit
  case "${1-}" in 
    --default
  parse --default "$0" "$@" || exit

  { [ "${VGA-}" ] || [ "${1-}" = '--run' ]; } || exit
  to --command="$0"
}

main "$@"
