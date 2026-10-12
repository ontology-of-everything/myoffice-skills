# 道具序列指南

道具序列是成对的插图幻灯片，可将物理道具调整为虚拟/基于幻灯片的演示。它们遵循与黑板序列相同的 2 帧模式，但使用不同的视觉风格。

## 参考图片

在`generated-images/hts/`中：NLSEP -`prop-reference-base.png`-- 干净的底座：黑板前的教授，没有道具。 **用作所有道具变换的输入。**
-`prop-bicycle-wheel-1.png`-- 示例框架 1：教授展示自行车车轮
-`prop-bicycle-wheel-2.png`-- 示例框架 2：教授指着胶带洞察

## 视觉风格

**社论插图**——温暖、略显风格化、可识别的相似性。想想《纽约客》杂志的插图。不是卡通，不是真实感，不是黑板美学。

- 带皮革肘部贴片的棕色花呢夹克，浅蓝色领衬衫
- 暖色调，自然采光
- 干净的绿色黑板填满了教授身后的墙壁

## 框架结构

**第 1 帧（设置）：** 教授展示道具。表情平静、自信。道具突出且清晰可见。观众应该明白他们在看什么。

**第二帧（洞察）：**教授演示了关键时刻。生动、热情的表情——顿悟时刻。道具已改变状态（添加胶带、露出某些东西、运动中的某些东西）。帧之间的能量转移讲述了这个故事。

## 它是如何工作的

基本参考图像 (`prop-reference-base.png`) 已包含正确的风格、服装、头发、设置和构图。要创建道具序列，请变换基本图像 - 不要每次都从原始自拍照开始。这使得所有道具的风格保持一致。

**宽高比：**`--aspect 16:9`标志使用 Gemini 原生的`ImageConfig`直接以 16:9 生成。无需裁剪或填充。

## 及时的工程策略

这些经验教训是在自行车车轮序列上迭代获得的。

### 摄像机视角：前排学生 POV

基础镜像已经确定了这一点。当写道具提示时，保持相同的视角——教授离他很近，处于或略高于视线水平，黑板在后面。

### 负面提示

双子座不使用稳定扩散等负面提示，但明确的排除有帮助：NLSEP - “没有可见的桌子、座位或观众成员”
- “场景中没有其他人”

### 帧之间的一致性

两个框架应共享：
- 相同的服装（花呢夹克、蓝色衬衫）
- 相同的黑板背景
- 相同的相机角度和距离
- 相同的插图风格和调色板

帧之间的变化：
- 表情（平静 --> 动画）
- 姿势（呈现 --> 指向/演示）
- 道具状态（完整 --> 修改/运动）

## 工作提示

由于基础图像已经有了风格、背景和服装，因此提示很短——只需描述道具和姿势即可。

### 第 1 帧（设置）

```
Add a [PROP] to this illustration. The professor is holding the
[PROP] by [HOW], presenting it directly to the viewer. Eye contact.
Calm, confident expression. The [PROP] is prominent and clearly
visible. Keep the same editorial illustration style, outfit, and
chalkboard background. NO other people, NO audience members visible.
```

### 第 2 帧（洞察）

```
Add a [PROP IN CHANGED STATE] to this illustration. The professor
is holding [PROP IN CHANGED STATE] in one hand, and [ACTION -- e.g.,
pointing excitedly at the key detail] with the other. Their expression
is animated, enthusiastic, eyes wide -- the eureka moment. Keep the
same editorial illustration style, outfit, and chalkboard background.
NO other people, NO audience members visible.
```

将`[BRACKETED]`部分替换为道具特定的详细信息。

## 生产指挥

```bash
# Frame 1
python3 .claude/skills/nano-banana/scripts/generate_image.py transform \
  generated-images/hts/prop-reference-base.png \
  "<frame-1-prompt>" \
  05-author/assets/prop-sequences/<prop-name>/frame-1.png \
  --aspect 16:9

# Frame 2
python3 .claude/skills/nano-banana/scripts/generate_image.py transform \
  generated-images/hts/prop-reference-base.png \
  "<frame-2-prompt>" \
  05-author/assets/prop-sequences/<prop-name>/frame-2.png \
  --aspect 16:9
```

## 创建新的基础参考

如果演示者发生变化，则从他们的自拍照中生成新的基础：

```bash
python3 .claude/skills/nano-banana/scripts/generate_image.py transform \
  <presenter-selfie.png> \
  "Transform this person into a warm editorial illustration. Make their hair noticeably more gray and white -- distinguished silver-gray hair. Classic brown tweed jacket with leather elbow patches over a light blue collared shirt. Standing in front of a large CLEAN green chalkboard. Hands lightly clasped, calm confident expression, eye contact. NO props, NO objects in hands. NO other people. Warm editorial illustration style like the New Yorker. Warm color palette." \
  generated-images/hts/prop-reference-base.png \
  --aspect 16:9
```
