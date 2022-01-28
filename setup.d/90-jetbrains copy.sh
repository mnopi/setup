#!/bin/sh

set -eu

main() {
  parse-argument-commands "$0" "$@" || exit
}

main "$@"
