#!/bin/bash
# 一键完成 Git 提交并推送到 GitHub（在终端运行此脚本前请先在 GitHub 新建空仓库）

set -e
cd "$(dirname "$0")"

echo "→ 检查 Git 仓库..."
if ! git rev-parse --git-dir >/dev/null 2>&1; then
  git init
  git branch -M main
fi

echo "→ 添加并提交文件..."
git add .
git status
if git diff --staged --quiet 2>/dev/null; then
  echo "  没有新改动需要提交。"
else
  git commit -m "Initial commit: Katherine Zhang personal website"
  echo "  已提交。"
fi

echo ""
echo "=========================================="
echo "下一步：在 GitHub 添加远程仓库并推送"
echo "=========================================="
echo ""
echo "1. 打开 https://github.com/new"
echo "2. 仓库名填: katherine-zhang-website（或你喜欢的名字）"
echo "3. 选 Public，不要勾选 Add README，点 Create repository"
echo "4. 在终端执行下面两行（把 YOUR_USERNAME 换成你的 GitHub 用户名）："
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/katherine-zhang-website.git"
echo "   git push -u origin main"
echo ""
echo "如果已经添加过 origin，只需执行："
echo "   git push -u origin main"
echo ""
