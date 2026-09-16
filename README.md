# myoffice-skills

Office-focused Agent Skills for presentations and repository guidance. The repository ships two
capabilities as four localized skills: English uses the base name and Simplified Chinese adds
`-cn`.

中文说明见 [README-CN.md](README-CN.md).

## Skills

| English                                        | 中文                                                 | What it does                                             |
| ---------------------------------------------- | ---------------------------------------------------- | -------------------------------------------------------- |
| [`html-slides`](docs/skills/en/html-slides.md) | [`html-slides-cn`](docs/skills/cn/html-slides-cn.md) | Builds single-file styled HTML decks with optional PPTX. |
| [`claude-md`](docs/skills/en/claude-md.md)     | [`claude-md-cn`](docs/skills/cn/claude-md-cn.md)     | Creates or prunes CLAUDE.md from repository evidence.    |

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

Both capabilities are explicit-only:

```text
$html-slides Build a 15-minute product presentation
$claude-md Create concise CLAUDE.md guidance from this repository
```

## Contributing

[docs/CONTRIBUTING.md](docs/CONTRIBUTING.md) · [docs/authoring.md](docs/authoring.md)

```bash
./tools/skill-scaffold.sh <skill-name>
./tools/install-git-hooks.sh
./tools/validate-all.sh
```

## License

[Apache-2.0](LICENSE) © myoffice-skills contributors. Huawei assets bundled with `html-slides`
remain subject to their trademark notice and are intended only for Huawei-style presentations.
