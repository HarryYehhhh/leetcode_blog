#!/bin/bash

# 快速發布文章到 GitHub 的腳本

COMMIT_MSG=${1:-"Update blog posts"}

echo "🔍 檢查修改..."
git status

echo ""
echo "📦 準備提交..."
git add .

echo ""
echo "💾 提交變更: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

echo ""
echo "🚀 推送到 GitHub..."
git push

echo ""
echo "✅ 完成！"
echo "⏳ GitHub Actions 正在自動部署..."
echo "🌐 幾分鐘後可以在這裡查看: https://yehhungwei.github.io/leetcode_blog/"
