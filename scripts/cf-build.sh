#!/usr/bin/env bash
# Cloudflare のビルドコマンド。HUGO_VERSION（.hugo-version と同じ値）で固定した Hugo extended を使う。
set -euo pipefail
V="${HUGO_VERSION:-$(cat .hugo-version)}"
git submodule update --init --recursive
curl -sSL "https://github.com/gohugoio/hugo/releases/download/v${V}/hugo_extended_${V}_linux-amd64.tar.gz" | tar xz -C /tmp hugo
/tmp/hugo version
/tmp/hugo --gc --minify
