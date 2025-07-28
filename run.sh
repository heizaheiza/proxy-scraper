#!/bin/bash

# 运行 proxy-scraper-checker
./proxy-scraper-checker

# 定义源目录和目标目录
SOURCE_DIR="out"
DEST_DIR="/path/to/proxy-scraper-results/out"

# 如果目标目录已经存在，先删除
if [ -d "$DEST_DIR" ]; then
    rm -rf "$DEST_DIR"
fi

# 复制 out 文件夹到 Git 仓库目录
cp -r "$SOURCE_DIR" "$DEST_DIR"

# 切换到 Git 仓库目录
cd /path/to/proxy-scraper-results

# Git 提交并推送更改
git add .
git commit -m "Update proxies output"
git push origin main
