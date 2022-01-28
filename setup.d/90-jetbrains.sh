#!/bin/sh

set -eu

main() {
  [ "${VGA-}" ] || exit
  [ ! "${DRY_RUN-}" ] || { echo "${command}"; exit: }
}

main "$@"
