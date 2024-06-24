#!/usr/bin/env bash
set -euo pipefail

ALB_URL="${1:-http://localhost}"
echo "Checking endpoint: ${ALB_URL}/health.html"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "${ALB_URL}")

if [ "$STATUS" -eq 200 ]; then
  echo "[OK] Application is healthy (HTTP 200)"
  exit 0
else
  echo "[FAIL] Unhealthy response: ${STATUS}"
  exit 1
fi


