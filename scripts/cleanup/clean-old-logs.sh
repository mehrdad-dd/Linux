#!/usr/bin/env bash
# clean-old-logs.sh — Delete *.log files older than N days in a directory.
# Usage: ./clean-old-logs.sh /path/to/logs [DAYS]

set -euo pipefail

DIR="${1:-}"
DAYS="${2:-7}"

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  cat <<EOF
Usage: $(basename "$0") LOG_DIR [DAYS]

Deletes *.log files under LOG_DIR older than DAYS days (default: 7).
Prompts for confirmation before deleting.

Example:
  $(basename "$0") /var/log 30
EOF
  exit 0
fi

if [[ -z "$DIR" || ! -d "$DIR" ]]; then
  echo "Error: LOG_DIR must be an existing directory." >&2
  exit 1
fi

if ! [[ "$DAYS" =~ ^[0-9]+$ ]]; then
  echo "Error: DAYS must be a non-negative integer." >&2
  exit 1
fi

mapfile -t FILES < <(find "$DIR" -type f -name "*.log" -mtime +"$DAYS")

if (( ${#FILES[@]} == 0 )); then
  echo "No log files older than $DAYS days in '$DIR'."
  exit 0
fi

echo "Found ${#FILES[@]} file(s) older than $DAYS days:"
printf '  %s\n' "${FILES[@]}"
echo
read -r -p "Delete these files? [y/N] " answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
  rm -v -- "${FILES[@]}"
  echo "✅ Deleted ${#FILES[@]} file(s)."
else
  echo "Aborted. Nothing deleted."
fi
