# AGENTS.md
- Hugo 静的サイト（テーマは submodule `themes/hugo-brewm`）。
- Hugo のバージョンは `.hugo-version` に固定。Cloudflare Pages の環境変数 `HUGO_VERSION` も同じ値にする。
- ビルド: `scripts/cf-build.sh`（出力は `public/`）。設定は `wrangler.toml`。
- 秘密・アカウントIDはコミットしない（公開リポジトリ）。
