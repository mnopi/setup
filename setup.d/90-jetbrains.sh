#!/bin/sh

set -eu


main() {
  { [ "${VGA-}" ] || [ "${1-}" = '--run' ]; } || exit
  to --command="$0"
}

main "$@"
