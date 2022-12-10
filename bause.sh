#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "hang" ]]; then
  echo "HANG - I won't react to SIGTERM"
  tail -f /dev/null
fi

_term() {
  echo "TERM"
  exit
}

trap _term TERM

echo "baused as $(whoami)"
tail -f /dev/null & wait
