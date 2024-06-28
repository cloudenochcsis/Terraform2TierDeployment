#!/usr/bin/env bash
set -euo pipefail

DB_IDENTIFIER="${1:-2tier-db}"
echo "==> Initiating RDS Multi-AZ failover drill for ${DB_IDENTIFIER}..."
aws rds reboot-db-instance \
  --db-instance-identifier "${DB_IDENTIFIER}" \
  --force-failover

echo "==> Failover initiated. Monitoring standby promotion..."


