#!/bin/bash
# Fix language links after Hugo build
# This script creates symlinks from /en/ and /zh/ to /ja/en/ and /ja/zh/

cd "$(dirname "$0")/.."

if [ -d "public/ja/en" ] && [ -d "public/ja/zh" ]; then
    rm -rf public/en public/zh
    ln -s ja/en public/en
    ln -s ja/zh public/zh
    echo "✓ Created symlinks: public/en -> public/ja/en, public/zh -> public/ja/zh"
else
    echo "✗ Error: public/ja/en or public/ja/zh not found"
    exit 1
fi

