#!/usr/bin/env bash
# jeff1316.github.io One-Click Sync
# 用法: 在這個資料夾內執行 ./sync.sh
# 註: GitHub Pages 會在 push 後自動重新發布，不需要連 VPS

set -e
cd "$(dirname "$0")"

echo "=== jeff1316.github.io Sync ==="

echo "[1/2] Git commit..."
git add -A
TIMESTAMP=$(date '+%Y-%m-%d %H:%M')
git commit -m "update: $TIMESTAMP" || echo "Nothing to commit, checking push..."

echo "[2/2] Git push..."
git push

echo ""
echo "Done! https://jeff1316.github.io/  (Pages 約 1 分鐘後生效)"
