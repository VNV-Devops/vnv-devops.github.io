#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./publish.sh "message"
#   ./publish.sh -v "message"     # verbose trace

VERBOSE=0
if [[ "${1:-}" == "-v" ]]; then
  VERBOSE=1
  shift
fi

MSG="${1:-Update site}"
REPO="$(cd "$(dirname "$0")" && pwd)"
LOG="${REPO}/publish_$(date +%Y%m%d_%H%M%S).log"

cd "${REPO}"

# Log everything to terminal AND file
exec > >(tee -a "${LOG}") 2>&1

echo
echo "============================================================"
echo "[publish] Repo:    ${REPO}"
echo "[publish] Message: ${MSG}"
echo "[publish] Hugo:    $(hugo version | head -n 1)"
echo "[publish] Log:     ${LOG}"
echo "============================================================"
echo

if (( VERBOSE )); then
  set -x
fi

echo "[publish] Cleaning previous published output in repo root..."
rm -rf about research projects publications contact categories tags assets page public
rm -f index.html index.xml sitemap.xml 404.html

echo "[publish] Building Hugo site -> repo root..."
hugo --source site --destination "${REPO}" --cleanDestinationDir

echo "[publish] Verifying build output..."
test -f index.html || { echo "[publish] ERROR: index.html missing after build"; exit 1; }
test -d assets    || { echo "[publish] ERROR: assets/ missing after build"; exit 1; }

echo "[publish] Ensuring .nojekyll..."
touch .nojekyll

echo
echo "[publish] Git status:"
git status -sb

echo
echo "[publish] Staging..."
git add -A

if git diff --cached --quiet; then
  echo "[publish] No changes to publish. Exiting."
  exit 0
fi

echo
echo "[publish] Committing..."
git commit -m "${MSG}"

echo
echo "[publish] Pushing..."
git push

echo
echo "============================================================"
echo "[publish] Done: https://vaisakhnv.com/"
echo "============================================================"
