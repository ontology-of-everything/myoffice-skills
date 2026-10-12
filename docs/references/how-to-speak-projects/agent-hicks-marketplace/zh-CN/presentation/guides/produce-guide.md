#制作指南

根据规范构建工件。这就是演示变成实体的地方——幻灯片、图像、道具、演讲者笔记。每一个制作决策都遵循一个原则：演讲者是主要事件，其他一切都是调味品。

**上下文管理：** 图像生成是上下文昂贵的——提示模板、API 调用、视觉审查、迭代。将所有图像工作委托给子代理。制作者进行编排（决定创建哪些图像，审查结果），但从不直接运行 nano-banana 命令。这使得主要对话精简为文本密集的步骤（演讲者注释、贡献、结束）。

---

## DEV-LOOP：细化期间的高效迭代

在生成阶段（尤其是在初始 PPTX 生成之后）完善演示文稿时，请使用 DEV-LOOP 模式进行迭代，而无需等待再生周期。

**设置（一次性）：**
```bash
# Start a background watcher in the 05-author/ folder
# (where presentation.js lives)
while true; do
  sleep 2
  if [ -f .regenerate_trigger ]; then
    rm .regenerate_trigger
    node presentation.js
  fi
done
```

**迭代工作流程：**
1. 对`presentation.js`进行编辑（更新贡献者姓名、修复演讲者备注、调整幻灯片内容等）
2. 创建触发器文件：`touch .regenerate_trigger`
3. 在后台任务重新生成
时继续讨论接下来的更改 4. 当您查看 PowerPoint 时，新的 PPTX 已准备就绪
5. 对每个细化重复

**优点：**
- 无需上下文切换或等待生成
- 在查看
之前批量进行多个编辑 - 在构建工件时持续对话流

**例子：**
```
You: Remove Wayne & Preston from contributors
Me: Updated presentation.js, triggered regeneration
You: Also remove the Android Review slides
Me: Updated (trigger), continue talking...
You: Open PowerPoint when ready
(PPTX is ready)
```

当迭代幻灯片详细信息、演讲者注释或根据反馈进行顺序调整时，此模式至关重要。

---

## 第 1 步：道具

道具是第一位的，因为它们是任何演讲中最令人难忘的部分，也是最后一刻最难找到的部分。

温斯顿的证据是压倒性的。 20 年前，吉姆·格拉斯 (Jim Glass) 在一次演讲中亲眼目睹温斯顿打破了一根木笔。格拉斯还记得什么？ “哦，是的，就是你把指针弄断的。”不是内容。不是幻灯片。道具。亨利克·易卜生明白这一点——《海达·加布勒》中的大腹便便的炉子是温斯顿几十年后对这部剧的记忆。艾伦·拉扎勒斯 (Alan Lazarus) 的摆在 26-100 之间是学生们对能量守恒的记忆。 Seymour Papert 的自行车轮让人们记住以正确的方式思考问题。

道具比任何其他媒介更能产生同理心镜像。当观众观看你操纵一个物理物体时，镜像神经元就会放电。他们感觉自己在做这件事。你无法从幻灯片或图片中得到这一点。你需要在物质世界中看到它。

**道具生产清单：**
- 大纲中计划了哪些物理对象？
- 对于面对面：它们可以采购、建造或借用吗？他们需要练习吗？
- 对于虚拟/幻灯片：每个道具变成**道具序列** - 配对插图幻灯片

### 道具序列（虚拟改编）

实体道具不能交给幻灯片观众。相反，制作一个 2 帧插图序列，显示教授展示和演示道具。这些是社论风格的插图（温暖的《纽约客》杂志风格）——而不是黑板美学。

- **第 1 帧（设置）：** 教授平静地展示道具。与观众进行眼神交流。
- **第 2 帧（洞察力）：** 教授生动地演示了关键时刻。表情转变为兴奋/尤里卡。

**需要演示者的参考照片。** 将`transform`模式与纳米香蕉一起使用以保持相似性。

**将每个道具委托给子代理：**

```
Task (subagent_type: general-purpose):
  "Generate prop sequence: <prop-name>"

  Read guides/prop-sequences.md for prompt templates and camera angle notes.
  Reference photo: <path-to-presenter-photo>

  Prop: <prop-name>
  Frame 1 (setup): <description of professor presenting prop>
  Frame 2 (insight): <description of eureka moment with prop>

  Generate both frames using nano-banana transform with --aspect 16:9.
  Output to 05-author/assets/prop-sequences/<prop-name>/frame-1.png and frame-2.png.
  Review the output images and report quality assessment.
```

当需要多个 prop 时，并行运行 prop 代理。全部完成后查看结果。

### 故事序列（叙事道具）

故事序列是多框架编辑插图，伴随着口头故事讲述——书籍概要、案例研究、扩展轶事。与道具序列（2 个帧，1 个道具）不同，故事序列描绘了 3-7 个完全不同的场景，但角色一致。

一致性挑战通过**两阶段生成模式**解决：首先生成角色参考表（所有角色都在中性背景上），然后针对每个场景帧从该表进行转换。切勿将框架与框架连接起来。

**第一阶段：角色参考表**

```
Task (subagent_type: general-purpose):
  "Generate character reference sheet: <story-name>"

  Read guides/story-sequences.md for the character sheet workflow.

  Characters:
  - <name>: <role, features, clothing>
  - <name>: <role, features, clothing>

  Generate a single image with all characters on a neutral background
  using nano-banana generate (not transform -- no input image needed).
  Output to 05-author/assets/story-sequences/<story-name>/character-sheet.png.
  Review output and report quality.
```

**阶段 2：场景帧（全部由角色表转换而来）**

```
Task (subagent_type: general-purpose):
  "Generate story sequence scenes: <story-name>"

  Read guides/story-sequences.md for scene prompt patterns.
  Character sheet: 05-author/assets/story-sequences/<story-name>/character-sheet.png

  Scenes:
  - Frame 1: <setting, action, atmosphere>
  - Frame 2: <setting, action, atmosphere>
  - Frame 3: <setting, action, atmosphere>
  ...

  Generate each frame using nano-banana transform from the character sheet
  with --aspect 16:9. ALWAYS transform from the character sheet, never from
  a previous frame.
  Output to 05-author/assets/story-sequences/<story-name>/frame-1.png through frame-N.png.
  Review output and report quality + character consistency across frames.
```

第 1 阶段必须在第 2 阶段开始之前完成（字符表是输入）。多个故事序列可以并行运行其第一阶段，但每个故事的第二阶段取决于其自己的第一阶段。

道具是可生产的工件。不要把它们留到那一天。

---

## 步骤 2：生成图像

在此步骤中切换到 **Illustrator** 角色。

扫描需要图像的幻灯片的规范：
- **符号图像** - 来自“形状”的视觉句柄（温斯顿的星星：拱门是他的符号）
- **黑板序列** - 绿板上的成对渐进式揭示图画
- **道具序列** - 成对的编辑插图，显示教授和道具（在步骤 1 中生成）
- **故事序列** - 具有一致字符的多帧叙事插图（在步骤 1 中生成）
- **图表或插图** - 任何指定的视觉内容

### 委托模式

**所有图像生成都在子代理中运行。** 生产者阅读规范，决定需要哪些图像，为每个图像编写摘要，然后进行调度。子代理阅读相关指南，运行 nano-banana，然后进行报告。生产者从不直接接触纳米香蕉。

并行运行独立的图像代理（道具序列、故事序列、黑板序列、符号都可以同时生成）。注意：故事序列第 2 阶段（场景框架）取决于第 1 阶段（角色表）首先完成。

### 符号和插图图像

保持图像干净。温斯顿的“空气”原则也适用于图像——充满细节的插图在视觉上相当于一张充满文字的幻灯片。

```
Task (subagent_type: general-purpose):
  "Generate symbol image: <name>"

  Use the nano-banana skill to generate an image.
  Concept: <what it represents>
  Style: <minimal, clean, specific to presentation theme>
  Aspect: <16:9 for full-bleed, 1:1 for inline>
  Output: 05-author/assets/<name>.png
  Review output and report quality.
```

### 黑板序列

黑板序列模拟在板上绘图。每张图始终有 2 张幻灯片。

**单独生成每个帧**（不要从完整图像进行转换 - Gemini 过度擦除小元素）。

```
Task (subagent_type: general-purpose):
  "Generate chalkboard sequence: <sequence-name>"

  Read the pptx skill's chalk-board guide for chalkboard workflow and style details.

  Frame 1 (partial): <description of foundation element only>
  Frame 2 (complete): <description of full concept>

  Generate each frame with nano-banana. Green chalkboard background,
  white and pale yellow chalk, hand-drawn feel, educational sketch style.
  Output to 05-author/assets/chalkboard-sequences/<name>/frame-1.png and frame-2.png.
  Aspect: 16:9.
  Review output and report quality.
```

### 图像质量审查

所有图像代理完成后，生成**艺术总监**评论：

```
Task (subagent_type: general-purpose, model: haiku):
  "Art Director review of generated images"

  Review all images in 05-author/assets/.
  For each: Does it match the spec? Is style consistent?
  Chalkboard sequences: green + chalk aesthetic maintained?
  Prop sequences: editorial illustration style, not cartoon?
  Story sequences: character consistency across all scene frames?
    Same characters recognizable in different settings?
  Report images needing regeneration with specific feedback.
```

针对任何故障派遣再生代理。

---

## 步骤 3：提取演讲者备注

演讲者备注以`presentation.js`形式存在，作为每张幻灯片上的`speakerNotes`属性。在创作过程中检查它们的质量。

演讲者注释必须添加到幻灯片中，而不是重复它们。这就是语言处理器的限制：观众要么阅读幻灯片，要么听演讲者讲话，但不能两者兼而有之。如果演讲者注释重复幻灯片内容，演示者将大声朗读观众已经默读的内容，观众将先读完，然后等待。

温斯顿的渐进式修复使这一过程自动化：当您从幻灯片中删除文字时，删除的内容会迁移到演讲者注释中。幻灯片展示了骨架；说话者提供肉体。

**演讲者笔记的质量检查：**
- 是否有任何笔记只是重述幻灯片上的内容？ （犯罪：阅读你的幻灯片）NLSEP - 交付线索是否保留？ （`[verbal punctuation]`、`[question]`、`[cycle]`、`[passion]`、`[pause]`）
- 语气是会话式的，而不是脚本式的吗？ （注释引导演讲者，它们不是提词器）
- 激情节拍是否已标记？ （这些是真正令人着迷的时刻——不要编写热情，只需标记材料自然产生热情的地方）

格式：

```markdown
# Speaker Notes: [Presentation Title]

## Slide 1: [Title]
[speaker notes with delivery cues preserved]

## Slide 2: [Title]
[speaker notes]

...
```

这是一份独立的文档，演示者可以独立打印或参考。

---

## 步骤 4：制作贡献幻灯片

贡献幻灯片值得拥有自己的制作步骤，因为它是幻灯片中最重要的幻灯片。当人们提出问题并排队离开时，它就在那里。它告诉他们你是谁。

温斯顿强调什么不属于这里：NLSEP - **“问题？”** - 可以持续 20 分钟。挥霍房产。浪费了告诉别人你是谁的机会。
- **“谢谢”** - 从未见过有人写下来。浪费机会。
- **“终结”** - 更糟糕。对你没有任何作用。
- **“结论”** - 似乎合法，但人们并不关心结论。他们关心你所做的事情。

**“贡献”是正确的标签。**它反映了开头的已完成事情枚举（三明治结构）。温斯顿在他自己的竞选演讲中举了一个例子：“这是我通常展示的东西。这就是我们从中得到的结果。”他等待人们阅读它。

**贡献文本的制作标准：**
- 具体的成就语言，而不是模糊的主张
- 一目了然 - 观众在提问时会浏览此内容
- 最多 3-5 个项目
- 每个项目都是独立的（在问答过程中走进来的人应该在没有上下文的情况下理解每个点）
- 如果使用温斯顿之星：突出的想法和口号应该在这里可见或呼应

---

## 步骤 5：组装 PPTX

`presentation.js` 文件是组装步骤。它包含所有幻灯片数据、演讲者注释和资产参考。运行它以生成 PPTX。委托 **pptx** 技能来满足任何特殊的布局需求。

pptx 技能处理：
- 使用正确的布局创建幻灯片
- 图像放置（黑板序列的全出血）
- 嵌入演讲者注释
- 字体大小（根据温斯顿规则，内容文本至少约为 40pt - 低于该值您将启用太多单词）

**空气检查：** 组装后，滚动浏览甲板。有空气吗？温斯顿展示了他自己的一次演讲：“这不是一场深入的技术演讲，但我展示它是因为其中有空气。它主要是事物的图片。三到四张幻灯片上有文字，但当我谈到这些时，我给观众时间阅读它们。”如果甲板感觉很重——文字墙，没有喘息的空间——回去并应用渐进式修复。

**打印测试：** 打印甲板并将其放在桌子上。温斯顿用这个测试来捕捉过于沉重的谈话。一眼就能看出谈话的脉络。太多的幻灯片、太密集的幻灯片以及结构问题都在物理布局中变得显而易见。

输出：`05-author/presentation.pptx`

---

## 第 6 步：规划结局

最后的文字需要与最终幻灯片一样多的制作关注。三个选项，每个选项都有不同的效果：

**一个笑话。** 道格·莱纳特在奥斯汀的一家酒吧里告诉温斯顿他的秘密：“我总是以一个笑话结束。这样人们就认为他们一直玩得很开心。”最后讲个笑话就很好了——此时观众已经适应了你的声音（不像开头，笑话平淡无奇，因为人们仍在调整）。

**祝福。** 克里斯蒂州长：“大家一起，为了美国的伟大，为了我们的子孙，我们将再次站起来。上帝保佑你们，上帝保佑美国。”比尔·克林顿（注意他的嘴唇，他几乎要说“谢谢”，但强迫自己不要这么做）：“如果那是你想要的，如果那是你所相信的，你必须投票，你必须连任巴拉克·奥巴马总统。上帝保佑你，上帝保佑美国。”然后小小敬了个礼。

**向观众致敬。** “来到这里真是太有趣了。看到你们在这里所做的事情真是令人着迷。你们提出的各种问题一直激励着我。这真的很棒。我期待着将来多次回来。”

**不是“谢谢”。** 如果你最后说谢谢，你不会下地狱，但这是一个软弱的举动。 “谢谢你的聆听”表明每个人都出于礼貌而没有离开，并且强烈渴望去别的地方。一旦热烈的掌声开始，你就可以说谢谢了。但你做的最后一件事不应该是说谢谢。

将计划的结局写入贡献幻灯片的演讲者笔记中。

---

## 步骤 7：导出 PDF

将 PPTX 导出为 PDF 以进行共享：

输出：`05-author/presentation.pdf`

`.pptx` 和`.pdf`都应位于 `.gitignore`（二进制文件）中。

---

## 第 8 步：上传到 Google 幻灯片

最后一步。将演示文稿上传到 Google 幻灯片以进行交付。

向用户报告 Google 幻灯片 URL。

---

## 资产目录结构

```
05-author/
├── assets/
│   ├── symbol.png                        # Visual handle
│   ├── [other-images].png                # Inline illustrations
│   ├── chalkboard-sequences/
│   │   ├── sequence-name/
│   │   │   ├── frame-1.png               # Partial drawing
│   │   │   └── frame-2.png               # Complete drawing
│   │   └── another-sequence/
│   │       ├── frame-1.png
│   │       └── frame-2.png
│   ├── prop-sequences/
│   │   └── prop-name/
│   │       ├── frame-1.png               # Setup (calm, presenting)
│   │       └── frame-2.png               # Insight (animated, eureka)
│   └── story-sequences/
│       └── story-name/
│           ├── character-sheet.png        # All characters, neutral bg
│           ├── frame-1.png               # Scene 1 (16:9)
│           ├── frame-2.png               # Scene 2 (16:9)
│           └── frame-N.png               # As many as needed (3-7)
├── presentation.js                    # Single source of truth (slides, notes, assets)
├── presentation.pptx                     # Generated deck (.gitignore)
└── presentation.pdf                      # PDF export (.gitignore)
```
