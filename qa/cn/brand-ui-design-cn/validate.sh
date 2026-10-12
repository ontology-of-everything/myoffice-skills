#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
QA_DIR="$ROOT/qa/cn/brand-ui-design-cn"
SKILL_DIR="$ROOT/skills/cn/brand-ui-design-cn"
skills-ref validate "$SKILL_DIR"
markdownlint-cli2 --config "$QA_DIR/.markdownlint.json" "$SKILL_DIR/**/*.md"
printf 'OK: brand-ui-design-cn structure and Markdown passed\n'
