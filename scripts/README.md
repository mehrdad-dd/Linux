# 📜 Scripts

Real, tested Bash scripts for daily Linux administration tasks.

## Scripts

| Script | Purpose | Usage |
|--------|---------|-------|
| [backup/backup-dir.sh](backup/backup-dir.sh) | Timestamped tar backup of a directory | `./backup-dir.sh /path/to/dir` |
| [monitoring/check-disk.sh](monitoring/check-disk.sh) | Warn when disk usage exceeds threshold | `./check-disk.sh 80` |
| [cleanup/clean-old-logs.sh](cleanup/clean-old-logs.sh) | Delete log files older than N days | `./clean-old-logs.sh /var/log 7` |

## Conventions

- Every script uses `#!/usr/bin/env bash` and `set -euo pipefail`.
- Every script accepts `--help`.
- Every script exits with `0` on success, `1` on error.
- Tested on Ubuntu 22.04 and CentOS Stream 9.
