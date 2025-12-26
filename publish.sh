#!/usr/bin/env bash
set -euo pipefail

MSG="${1:-Publish site}"

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="${REPO_ROOT}/site"
DEST_DIR="${REPO_ROOT}"

if [[ ! -d "${SRC_DIR}" ]]; then
  echo "[publish] ERROR: Hugo source dir not found: ${SRC_DIR}"
  echo "[publish] You likely ran an old publish script that deleted it. Restore using:"
  echo "          git fetch --all --prune && git reset --hard origin/main"
  exit 1
fi

echo "============================================================"
echo "[publish] Repo:    ${REPO_ROOT}"
echo "[publish] Message: ${MSG}"
echo "[publish] Hugo:    $(hugo version || true)"
echo "============================================================"

# Build to a temp directory first (never build directly into repo root)
BUILD_DIR="$(mktemp -d)"
cleanup() { rm -rf "${BUILD_DIR}"; }
trap cleanup EXIT

echo "[publish] Building Hugo site -> ${BUILD_DIR}"
hugo --source "${SRC_DIR}" --destination "${BUILD_DIR}" --minify

echo "[publish] Sync build output -> repo root (keeping source + git files)"
# rsync is safest for "replace root with build output" while excluding important folders/files
rsync -a --delete \
  --exclude ".git/" \
  --exclude "site/" \
  --exclude ".github/" \
  --exclude "publish.sh" \
  --exclude "dev.sh" \
  --exclude "README.md" \
  --exclude ".gitmodules" \
  --exclude ".nojekyll" \
  "${BUILD_DIR}/" "${DEST_DIR}/"

# Ensure Pages doesn't try to run Jekyll
touch "${DEST_DIR}/.nojekyll"

echo "[publish] Git status:"
git status --porcelain

echo "[publish] Committing + pushing"
git add -A
if git diff --cached --quiet; then
  echo "[publish] No changes to commit."
else
  git commit -m "${MSG}"
fi

git push origin "$(git branch --show-current)"
echo "[publish] Done."
