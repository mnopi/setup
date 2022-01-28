#!/bin/sh

set -eu

main() {
  for arg; do
    case "${arg}" in)
      --commands) echo "${0}" ;;
    esac
  done
}

main "$@"
