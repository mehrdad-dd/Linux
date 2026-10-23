#!/usr/bin/env bash
# check-disk.sh — Warn when any mounted filesystem exceeds a usage threshold.
# Usage: ./check-disk.sh [THRESHOLD_PERCENT]

set -euo pipefail

THRESHOLD="${1:-80}"

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  cat <<EOF
Usage: $(basename "$0") [THRESHOLD_PERCENT]

Checks all local filesystems and exits with code 1 if any
usage is >= THRESHOLD_PERCENT. Default threshold: 80.

Example:
  $(basename "$0") 90
EOF
  exit 0
fi

if ! [[ "$THRESHOLD" =~ ^[0-9]+$ ]] || (( THRESHOLD < 1 || THRESHOLD > 100 )); then
  echo "Error: THRESHOLD must be an integer between 1 and 100." >&2
  exit 1
fi

ALERT=0
echo "Checking disk usage (threshold: ${THRESHOLD}%)..."
echo

while read -r usage mount; do
  percent="${usage%\%}"
  if (( percent >= THRESHOLD )); then
    echo "⚠️  ALERT: $mount at ${usage} (>= ${THRESHOLD}%)"
    ALERT=1
  else
    echo "✅ OK:    $mount at ${usage}"
  fi
done < <(df -hP | awk 'NR>1 {print $5, $6}')

exit "$ALERT"
