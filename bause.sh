#!/usr/bin/env bash
set -euo pipefail

_term() {
  echo "TERM"
  exit
}
trap _term TERM

echo "baused"
tail -f /dev/null &
wait $!
