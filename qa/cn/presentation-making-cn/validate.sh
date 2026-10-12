#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
SKILL_DIR="$ROOT/skills/cn/presentation-making-cn"
rg -q '^disable-model-invocation: true$' "$SKILL_DIR/SKILL.md"
rg -q '^  allow_implicit_invocation: false$' "$SKILL_DIR/agents/openai.yaml"
CHECK_ROOT=$(mktemp -d)
mkdir "$CHECK_ROOT/presentation-making-cn"
sed '/^disable-model-invocation: true$/d' "$SKILL_DIR/SKILL.md" > "$CHECK_ROOT/presentation-making-cn/SKILL.md"
skills-ref validate "$CHECK_ROOT/presentation-making-cn"
rm "$CHECK_ROOT/presentation-making-cn/SKILL.md"
rmdir "$CHECK_ROOT/presentation-making-cn" "$CHECK_ROOT"
markdownlint-cli2 --config "$ROOT/qa/cn/presentation-making-cn/.markdownlint.json" "$ROOT/skills/cn/presentation-making-cn/**/*.md"
printf 'OK: presentation-making-cn structure and Markdown passed; behavioral review is separate\n'
