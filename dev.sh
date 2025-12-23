#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

URL="http://localhost:1313/"

echo
echo "============================================================"
echo "[dev] Repo: $(pwd)"
echo "[dev] Hugo: $(hugo version | head -n 1)"
echo "[dev] Local preview: ${URL}"
echo "============================================================"
echo

# Try to open browser automatically (Linux/WSL-friendly)
if command -v xdg-open >/dev/null 2>&1; then
  (sleep 1 && xdg-open "$URL" >/dev/null 2>&1) &
elif command -v wslview >/dev/null 2>&1; then
  (sleep 1 && wslview "$URL" >/dev/null 2>&1) &
fi

exec hugo server --source site --bind 0.0.0.0 --port 1313 --disableFastRender
