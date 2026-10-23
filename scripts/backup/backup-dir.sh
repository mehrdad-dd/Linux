#!/usr/bin/env bash
# backup-dir.sh — Create a timestamped tar.gz backup of a directory.
# Usage: ./backup-dir.sh /path/to/dir [backup_dir]

set -euo pipefail

show_help() {
  cat <<EOF
Usage: $(basename "$0") SOURCE_DIR [BACKUP_DIR]

Creates a timestamped .tar.gz archive of SOURCE_DIR.
BACKUP_DIR defaults to ./backups.

Example:
  $(basename "$0") /etc /var/backups
EOF
}

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  show_help
  exit 0
fi

SOURCE="${1:-}"
BACKUP_DIR="${2:-./backups}"

if [[ -z "$SOURCE" ]]; then
  echo "Error: SOURCE_DIR is required." >&2
  show_help
  exit 1
fi

if [[ ! -d "$SOURCE" ]]; then
  echo "Error: '$SOURCE' is not a directory." >&2
  exit 1
fi

mkdir -p "$BACKUP_DIR"

NAME="$(basename "$(realpath "$SOURCE")")"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
ARCHIVE="$BACKUP_DIR/${NAME}-${TIMESTAMP}.tar.gz"

echo "Backing up '$SOURCE' → '$ARCHIVE' ..."
tar -czf "$ARCHIVE" -C "$(dirname "$(realpath "$SOURCE")")" "$NAME"

echo "✅ Done: $ARCHIVE ($(du -h "$ARCHIVE" | cut -f1))"
