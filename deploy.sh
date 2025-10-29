#!/bin/bash

echo "🚀 开始部署博客到 GitHub Pages..."

# 构建 Hugo 站点
echo "1. 构建 Hugo 站点..."
hugo --minify

# 添加所有更改的文件
echo "2. 添加更改到 Git..."
git add .

# 提交更改
echo "3. 提交更改..."
git commit -m "更新博客: $(date '+%Y-%m-%d %H:%M:%S')" || true

# 先拉取远程更改（修复冲突）
echo "4. 拉取远程更改..."
git pull origin main --rebase

# 推送到 GitHub
echo "5. 推送到 GitHub..."
git push origin main

echo "✅ 部署完成！"
echo "🌐 网站地址: https://xihutaijixiongv2.github.io"
echo "📊 GitHub Actions 将自动构建和发布，请稍后访问网站。"
