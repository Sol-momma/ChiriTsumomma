# ChiriTsumomma

個人ブログサイト。Hugo + hugo-brewmテーマで構築されています。

## 概要

「毎日少しずつ成長」をモットーに、技術的なアウトプットを積み上げていくブログです。
日々の学習ログや、開発で詰まったポイントの備忘録として更新していきます。

## 技術スタック

- **Static Site Generator**: [Hugo](https://gohugo.io/)
- **Theme**: [hugo-brewm](https://github.com/foxihd/hugo-brewm)
- **Deployment**: Vercel

## セットアップ

### 前提条件

- Hugo (v0.135.0以上)
- Git

### インストール

```bash
# リポジトリをクローン
git clone <repository-url>
cd ChiriTsumomma

# Hugoサーバーを起動
hugo server
```

開発サーバーは `http://localhost:1313` で起動します。

## プロジェクト構造

```
ChiriTsumomma/
├── content/          # コンテンツファイル（Markdown）
│   ├── posts/       # ブログ記事
│   └── about.md     # Aboutページ
├── static/          # 静的ファイル（画像など）
├── themes/          # Hugoテーマ
│   └── hugo-brewm/ # hugo-brewmテーマ
├── hugo.toml        # Hugo設定ファイル
└── README.md        # このファイル
```

## 記事の作成

新しい記事を作成するには、`content/posts/` ディレクトリにMarkdownファイルを追加します。

```bash
# 新しい記事を作成
hugo new posts/my-new-post.md
```

記事のフロントマターには以下を含めてください：

```yaml
---
title: "記事タイトル"
date: 2025-01-21T00:00:00+09:00
type: post
draft: false
---
```

## ビルド

```bash
# サイトをビルド
hugo

# ビルド結果は public/ ディレクトリに出力されます
```

## デプロイ

Vercelにデプロイする場合：

1. Vercelにプロジェクトを接続
2. ビルドコマンド: `hugo`
3. 出力ディレクトリ: `public`

## ライセンス

このプロジェクトのコンテンツは個人の著作物です。

## 著者

**So Momma (モンマ ソウ)**

- ソフトウェアエンジニア
- スキル: Go, Python, JavaScript, Hugo, Next.js, Git, Docker, Firebase

