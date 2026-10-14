# myoffice-skills

Office-focused Agent Skills for presentations, repository guidance, architecture review, and reading notes. The
repository ships six capabilities as ten skills. Paired skills use the base name for English and
`-cn` for Simplified Chinese; `presentation-making-cn` and `brand-ui-design-cn` are Chinese-only.

中文说明见 [README-CN.md](README-CN.md).

## Skills

| English              | 中文                                                                 | What it does                                             |
| -------------------- | -------------------------------------------------------------------- | -------------------------------------------------------- |
| `claude-md`          | [`claude-md-cn`](docs/skills/cn/claude-md-cn.md)                     | Creates or prunes CLAUDE.md from repository evidence.    |
| `source-brief` | [`source-brief-cn`](docs/skills/cn/source-brief-cn.md) | Organizes reading notes and distinguishes statements from evidence. |
| `agent-dx-cli` | [`agent-dx-cli-cn`](docs/skills/cn/agent-dx-cli-cn.md) | Designs, reviews, and refactors CLIs with evidence scoring and GWS practice. Supports companion skill authoring when requested. |
| `arb`                | [`arb-cn`](docs/skills/cn/arb-cn.md)                                 | Architecture Review Board reviews; criteria pending.     |
| — | [`presentation-making-cn`](docs/skills/cn/presentation-making-cn.md) | Turns sources into memorable HTML or Markdown decks through alignment and review. |
| — | [`brand-ui-design-cn`](docs/skills/cn/brand-ui-design-cn.md) | Applies six UI design principles to strengthen brand memory and interface experience. |

Machine-readable metadata lives in [docs/catalog.yml](docs/catalog.yml). Localization rules live
in [docs/localization.md](docs/localization.md).

## Install

From this local checkout:

```bash
npx skills add . --skill <skill-name> --agent codex --copy -y
```

After the repository is published, install from its GitHub slug:

```bash
npx skills add ontology-of-everything/myoffice-skills \
  --skill <skill-name> \
  --agent cursor \
  --copy -y
```

## Usage

Reading notes and brand UI design support automatic selection and explicit invocation; other skills require explicit invocation:

```text
$agent-dx-cli Review this CLI and implement the authorized improvements
$source-brief Organize this paper and distinguish claims, opinions, experience, and unverified information
$claude-md Create concise CLAUDE.md guidance from this repository
$arb Review this architecture proposal as the Architecture Review Board
$presentation-making-cn Turn these materials into a memorable presentation
$brand-ui-design-cn Improve this product interface using the six design principles
```

## Contributing

[docs/CONTRIBUTING.md](docs/CONTRIBUTING.md) · [docs/authoring.md](docs/authoring.md)

```bash
./tools/skill-scaffold.sh <skill-name>
./tools/install-git-hooks.sh
./tools/validate-all.sh
```

## License

[Apache-2.0](LICENSE) © myoffice-skills contributors.
