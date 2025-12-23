#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

MSG="${1:-Update site}"
REPO="$(pwd)"

echo "============================================================"
echo "[publish] Repo: ${REPO}"
echo "[publish] Message: ${MSG}"
echo "[publish] Hugo: $(hugo version | head -n 1)"
echo "============================================================"

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

echo "[publish] Git status:"
git status -sb

echo "[publish] Staging..."
git add -A

if git diff --cached --quiet; then
  echo "[publish] No changes to publish. Exiting."
  exit 0
fi

echo "[publish] Committing..."
git commit -m "${MSG}"

echo "[publish] Pushing..."
git push

echo "============================================================"
echo "[publish] Done: https://vaisakhnv.com/"
echo "============================================================"
