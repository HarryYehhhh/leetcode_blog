#!/bin/bash

# 快速建立 LeetCode 文章的腳本

if [ -z "$1" ]; then
    echo "用法: ./new-post.sh <題號> <題目名稱>"
    echo "範例: ./new-post.sh 1 two-sum"
    exit 1
fi

PROBLEM_NUM=$1
PROBLEM_NAME=$2

if [ -z "$PROBLEM_NAME" ]; then
    echo "請提供題目名稱"
    echo "範例: ./new-post.sh 1 two-sum"
    exit 1
fi

FILENAME="leetcode-${PROBLEM_NUM}-${PROBLEM_NAME}"

echo "正在建立文章: ${FILENAME}"
hugo new content "posts/${FILENAME}.md" -k post

echo ""
echo "✅ 文章建立成功！"
echo "📝 檔案位置: content/posts/${FILENAME}.md"
echo ""
echo "接下來："
echo "1. 編輯文章內容"
echo "2. 執行 'hugo server -D' 預覽"
echo "3. 執行 './publish.sh \"新增 LeetCode ${PROBLEM_NUM}\"' 發布"
