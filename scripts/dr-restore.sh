#!/usr/bin/env bash
set -euo pipefail

SNAPSHOT_ID="${1:-}"
if [ -z "$SNAPSHOT_ID" ]; then
  echo "Usage: $0 <rds-snapshot-id>"
  exit 1
fi

echo "==> Restoring RDS cluster from snapshot ${SNAPSHOT_ID}..."


