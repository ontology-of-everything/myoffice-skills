# myoffice-skills

面向办公场景的 Agent Skills 仓库，当前提供演示文稿制作与仓库说明两项能力，共四个中英文技能。英文使用基础名，简体中文增加 `-cn`。

English: [README.md](README.md)。

## 技能

| English                                        | 中文                                                 | 能力                                  |
| ---------------------------------------------- | ---------------------------------------------------- | ------------------------------------- |
| [`html-slides`](docs/skills/en/html-slides.md) | [`html-slides-cn`](docs/skills/cn/html-slides-cn.md) | 生成多风格单文件 HTML 演示，可选 PPTX |
| [`claude-md`](docs/skills/en/claude-md.md)     | [`claude-md-cn`](docs/skills/cn/claude-md-cn.md)     | 根据仓库事实生成或精简 CLAUDE.md      |

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

两项能力均仅显式调用：

```text
$html-slides-cn 制作一份 15 分钟产品介绍胶片
$claude-md-cn 根据当前仓库事实生成精简的 CLAUDE.md
```

## 贡献

[docs/CONTRIBUTING.md](docs/CONTRIBUTING.md) · [docs/authoring.md](docs/authoring.md)

```bash
./tools/skill-scaffold.sh <skill-name>
./tools/install-git-hooks.sh
./tools/validate-all.sh
```

## 许可

[Apache-2.0](LICENSE) © myoffice-skills contributors。`html-slides` 随包华为素材仍受对应商标声明约束，仅用于制作华为风格演示。
