---
name: presentation
description: |
  Create presentations following Patrick Winston's how-to-speak methodology.
  Folder-as-presentation model with stage tracking via project-overview.md.
  Triggers: "/hts", "hts brain-dump", "hts shape".
user-invocable: true
allowed-tools:
  - Bash
  - Read
  - Write
  - Edit
  - Grep
  - Glob
  - AskUserQuestion
language: zh-CN
translation_of: en
---

＃/hts

**演示文稿是一个文件夹。** 用户创建一个文件夹，将其放入其中，然后运行命令。  当前工作目录中的`project-overview.md`跟踪元数据和阶段。没有外部板，没有文件夹移动。

使用 Patrick Winston 的演讲方法创建演示文稿。演示文稿按从新到完成的各个阶段进行。

**方法：** 这个过程以温斯顿在麻省理工学院的“如何说话”讲座为基础——一个建立在知识+实践+天赋（天赋最小）基础上的实用沟通框架。完整的参考位于`${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/how-to-speak/`中。每个阶段都整合了特定的温斯顿技巧：塑造中的赋权承诺和明星元素、大纲中的循环和口头标点、幻灯片避免犯罪和创作中的黑板序列。

＃＃ 用法

```
/hts:start [--label inform|expose|persuade]
/hts:brain-dump
/hts:shape
/hts:outline
/hts:author
/hts:chalkboard <sequence-name>
```

所有命令都在当前工作目录下运行。用户应在运行命令之前 cd 进入其演示文件夹。

## 项目概述.md 格式

```yaml
---
title: "All-Hands Q1 Update"
label: inform
stage: new
---

**Topic:** What the presentation is about

**Audience:** Who this is for

**Type note:** Why this type was chosen
```

阶段值：`new`、`brain-dumping`、`shaping`、`outlining`、`authoring`、 `done`

## 管道

| ＃|舞台|动词|发生了什么 |
|---|--------|------|------------|
| --|开始|开始 |设置--创建project-overview.md，介绍工作流程|
| 02 |脑倾倒|大脑转储|原始内容转储——你所知道的一切|
| 03 |塑形|形状|观众、核心提取、明星元素、击剑|
| 04 |概述|概要|谈论架构、媒体计划（标签分支）|
| 05 |创作|作者 | JS 构建幻灯片，直接迭代 PPTX |
| 06 |完成 | --|演示完成并交付 |

## 表示类型标签

- **通知** -- 教学、讲授。董事会初选。知识转移。最好的工具：看板（速度与吸收、图形质量、同理心镜像相匹配）。
- **暴露** - 工作会谈、会议会谈。幻灯片-主要。展示想法/成就。结构：愿景+所做的事情+贡献。
- **说服** - 口试、推介。幻灯片-主要。建立背景并证明能力。关键：首先定位你的工作。

## 运行说明（所有阶段）

**捕捉顿悟时刻。** 当设计对话产生关于主题、受众、媒介的见解时，将其附加到演示文件夹中的`discussion.md`中。格式：

```markdown
## YYYY-MM-DD -- <aha moment title>

<What changed in our thinking and why.>
```

每个注明日期的条目都是一个快照。不要重写旧条目——添加新条目。

**编译文件指导后续步骤。** 每个阶段都会生成头脑风暴文件（补充性、探索性）和锁定决策的编译文件（`03-shape.md`、`04-outline.md`）。下一阶段阅读汇编，而不是头脑风暴。头脑风暴仅供参考，但不会推动下游工作。

## 阶段转换模式

每个阶段命令都遵循以下模式：

1. 读取 cwd
中的`project-overview.md`2. 检查`stage`字段：
- 如果正确，前一阶段：更新阶段，开始工作
- 如果已处于此阶段：恢复
- 如果后续阶段：错误 --“已经过了此阶段”
- 如果没有 `project-overview.md`：错误 --“先运行 /hts:start”
3. 执行工作
4. 打开完成：更新`project-overview.md`frontmatter
中的`stage`5. 报告：显示阶段转换和下一个命令

---

## 头脑风暴阶段

**角色：倾听者** - 绘制出未经组织的原始内容。捕捉并逐字记录。提出后续问题是为了提取更多信息，而不是为了结构化。如果转储很薄，请发起一场引导性的头脑风暴。

**不要：** 过早过度构建。转储时编辑。重新组织内容。建议结构。

**它是如何工作的：**
- 用户分享他们所知道的有关该主题的所有内容
- 提出后续问题：“还有什么？”、“有什么例子吗？”、“X 怎么样？”
- 主动提出引入外部材料：“想要我通过网络搜索研究任何内容吗？”
- 如果用户发送文件、图像或链接，请将它们保存到 `02-brain-dump/`

**如果转储很薄**，请切换到引导式头脑风暴：NLSEP - “观众中有人是谁？他们已经知道什么？”
- “您最希望他们带走的一件事是什么？”
- “有一个故事或例子可以说明这一点吗？”
- “什么会让他们感到惊讶？”

**可交付成果：**
-`02-brain-dump.md`-- TLDR 总结转储内容（简要概述，而不是内容本身）
-`02-brain-dump/`-- 包含附件的文件夹或包含原始转储内容的 `notes.md`

---

## 形状阶段

**角色：塑造者**——完成 3 场头脑风暴会议，然后锁定。以从头脑转储中提取的建议为主导。呈现草稿供用户做出反应——不要提出让他们独自完成工作的开放性问题。

**不要：** 为用户回答。跳过头脑风暴。 Start from blank instead of proposing from brain-dump.

**指南：** 阅读`${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/shape-guide.md`了解详细的会话说明。

**头脑风暴会议（按顺序）：**
1. **基础**（观众、情境、击剑） -->`03-shape/01-grounding.md`NLSEP 2. **核心**（突出想法、故事、惊喜） -->`03-shape/02-core.md`NLSEP 3. **包装**（符号、口号、授权承诺） --> `03-shape/03-packaging.md`

每次会议结束后，写下头脑风暴文件。在开始下一个之前重新锚定上下文。

**锁定：** 将所有 3 个头脑风暴综合为 `03-shape.md`——编译下游阶段读取。提交以供用户批准。应包括：观众、情境、击剑、突出想法、故事、惊喜、象征、口号、授权承诺。

---

## 大纲阶段

**角色：建筑师** -- 根据锁定的形状绘制轮廓。以草稿引导，而不是问题。

**不要：** 从空白开始。跳过阅读形状汇编。重新开放形状决策。

**指南：**
-`${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/outline-guide/guide.md`NLSEP -`${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/outline-guide/inform-guide.md`NLSEP - `${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/outline-guide/expose-persuade-guide.md`

**集思广益的主题（按顺序）。** 跳过或保留任何不适用的内容：

1. **章节** (`04-outline/01-sections.md`) -- 逐节结构，每节中等（板与幻灯片），大致持续时间
2. **交付** (`04-outline/02-delivery.md`) -- 骑行计划，口头标点符号，挂钩，道具，如何开始，如何停止
3. **愿景与贡献** (`04-outline/03-vision-contributions.md`) -- 愿景，你所做的，贡献观众应该记住。揭露/说服的中心。可轻以告知。

**标签提示**（强调风味，而不是结构）：NLSEP - **通知** - 部分和交付最重要。愿景/贡献可以很轻。
- **暴露** - 愿景和贡献是支柱。
- **说服** - 贡献和定位至关重要。

**锁定：** 合成为`04-outline.md`。提交以供用户批准。

---

## 创作阶段

**角色：作者** -- 根据大纲构建演示文稿。 JS 文件既是规范也是生产工件。通过重新生成 PPTX 并让他们直接查看来与用户进行迭代。

**不要：** 创建单独的降价规范。重新开放形状/轮廓决策。

**风格指南：** 阅读`${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/style-guide.md`了解幻灯片类型、背景、调色板、版式和布局规则。

**图像创建步骤：** 切换到 **Illustrator** 角色。阅读`${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/produce-guide.md`进行图像制作（道具、黑板序列、故事序列、符号）。将所有图像生成委托给子代理。

**流程：**
1. 读取`04-outline.md`（编译）NLSEP 2. 根据NLSEP大纲用幻灯片结构搭建`05-author/presentation.js`支架 3. 生成第一个PPTX，打开供用户查看NLSEP 4. 迭代：用户通过slug-ID指导更改，更新JS，重新生成

**DEV-LOOP：** 编辑`presentation.js`，运行`node presentation.js`，用户评论 PPTX。重新生成之前进行批量编辑。

**可交付成果：**
-`05-author/presentation.js`-- 单一事实来源
-`05-author/assets/`-- 图像、序列
-`05-author/presentation.pptx`-- 生成的输出 (.gitignore)
-`05-author/presentation.pdf`-- PDF 导出 (.gitignore)

---

## 滑块 ID

每张幻灯片都有一个 slug-ID，用于在对话和 JS 文件中引用它。 slug 是幻灯片标题的首字母缩写词加上两位数的后缀。

**规则：**
- 源自幻灯片标题：“One Shot Learning” ->`OSL-01`NLSEP - 每张幻灯片都必须有一个标题，即使视觉幻灯片没有标题。标题为这个蛞蝓奠定了基础。
- 第一次出现得到`-01`。如果相同的首字母缩略词再次出现（罕见），则递增：`-02`、`-03`。
- 块是稳定的 - 重新排序幻灯片不需要重新编号。后缀是身份号码，而不是职位。
- 在讨论特定幻灯片时使用别名：“更新 OSL-01 上的演讲者注释”是明确的。

## 创作模型

创作阶段将之前的“指定”和“生成”合并为一个步骤。生成 PPTX 的 JavaScript 文件是唯一的事实来源——它包含幻灯片内容、演讲者注释、资产参考和布局决策。

**为什么：** 迭代降价规范然后转换为生产是多余的。用户可以打开 PPTX，确切地看到它的样子，并通过 slug-ID 直接进行更改。 JS 文件是比任何 Markdown 文档更好的规范，因为它生成实际的工件。

**每张幻灯片的 JS 文件包含：**
- Slug-ID（例如，`OSL-01`）
- 标题
- 内容/布局
- 演讲者备注
- 资产参考
- 交付提示

```javascript
{
  slug: 'OSL-01',
  title: 'One Shot Learning',
  type: 'content',        // content, chalkboard, section-break, title, contributions, etc.
  content: [],             // bullet points, text blocks
  speakerNotes: '',        // full speaker notes with delivery cues
  deliveryCues: [],        // [verbal punctuation], [question], [cycle], [passion], [pause]
  asset: null,             // path relative to 05-author/assets/
  layout: 'default',       // default, wide-image, no-image, star-callback
}
```

## 说话参考

完整的温斯顿方法：`${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/how-to-speak/how-to-speak.md`
原始成绩单：`${CLAUDE_PLUGIN_ROOT}/skills/presentation/guides/how-to-speak/how-to-speak-transcript/`

舞台指南在使用时融入了相关的温斯顿技术。

## 示例

```
cd ~/talks/all-hands-q1
/hts:start --label inform
/hts:brain-dump
/hts:shape
/hts:outline
/hts:author
```
