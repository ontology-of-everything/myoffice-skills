# myoffice-skills

面向办公场景的 Agent Skills 仓库，当前提供完整演示文稿创作、仓库说明、架构评审、阅读整理、品牌记忆与界面设计及智能体 CLI 工程六项能力，共十个技能。成对技能的英文使用基础名，简体中文增加 `-cn`；`presentation-making-cn` 与 `brand-ui-design-cn` 仅保留中文版。

English: [README.md](README.md)。

## 技能

| English              | 中文                                                                 | 能力                                  |
| -------------------- | -------------------------------------------------------------------- | ------------------------------------- |
| `claude-md`          | [`claude-md-cn`](docs/skills/cn/claude-md-cn.md)                     | 根据仓库事实生成或精简 CLAUDE.md      |
| `source-brief` | [`source-brief-cn`](docs/skills/cn/source-brief-cn.md) | 整理文章与论文，区分陈述性质和证据状态 |
| `agent-dx-cli` | [`agent-dx-cli-cn`](docs/skills/cn/agent-dx-cli-cn.md) | 以十维检查、安全正反例、GWS 实践和证据评分指导 CLI 开发、审查与重构 |
| `arb`                | [`arb-cn`](docs/skills/cn/arb-cn.md)                                 | 架构评审委员会评审；准则待定          |
| — | [`presentation-making-cn`](docs/skills/cn/presentation-making-cn.md) | 从材料理解到可记忆的 HTML／Markdown 文稿，含对齐与检视重构 |
| — | [`brand-ui-design-cn`](docs/skills/cn/brand-ui-design-cn.md) | 运用六条界面设计原则，强化品牌记忆与界面体验 |

机器可读目录见 [docs/catalog.yml](docs/catalog.yml)，本地化规则见
[docs/localization.md](docs/localization.md)。

## 安装

从当前本地检出安装：

```bash
npx skills add . --skill <skill-name> --agent codex --copy -y
```

仓库发布后可通过 GitHub slug 安装：

```bash
npx skills add ontology-of-everything/myoffice-skills \
  --skill <skill-name> \
  --agent cursor \
  --copy -y
```

## 用法

阅读整理、品牌记忆与界面设计支持自动选用，也可显式调用；其余技能仅显式调用：

```text
$agent-dx-cli-cn 审查此 CLI，以证据评分并实施已授权的改进
$source-brief-cn 整理这篇论文，区分事实、观点、经验与未证实信息
$claude-md-cn 根据当前仓库事实生成精简的 CLAUDE.md
$arb-cn 以架构评审委员会身份评审这份架构方案
$presentation-making-cn 将这些材料制作成清晰、可记忆的演示文稿
$brand-ui-design-cn 根据六条原则优化这个产品界面
```

## 贡献

[docs/CONTRIBUTING.md](docs/CONTRIBUTING.md) · [docs/authoring.md](docs/authoring.md)

```bash
./tools/skill-scaffold.sh <skill-name>
./tools/install-git-hooks.sh
./tools/validate-all.sh
```

## 许可

[Apache-2.0](LICENSE) © myoffice-skills contributors。
