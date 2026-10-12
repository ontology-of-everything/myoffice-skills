# Daniel Jackson 演示制作验证：材料索引

获取日期：2026-09-16。用途：本地研究与 `presentation-making` 实测。以下区分原始材料、作者观点与制作者的教学设计；未提交或推送。

## 覆盖与限制

- 视频已获取发布者提供的英文字幕及自动英文字幕、描述和元数据；**没有下载视频本体**。
- 书籍仅获取作者官网公开提供的两份样章，**不是全书，也不是中文版全文**。英文原书为 Daniel Jackson 的 *The Essence of Software: Why Concepts Matter for Great Design*；官网列出版方 Princeton University Press、出版时间 November 2021。参见[书籍官网](https://essenceofsoftware.com/)。
- 两份样章均保留 `Draft: not for distribution or quotation. © 2018 Daniel Jackson` 水印；第一份还载有 Princeton University Press 的版权限制。官网公开提供下载并不等于开放许可。用于本地阅读与自主总结；不要把 PDF 或提取全文随公开技能分发，不把样章版面当作正式版分页保证。
- 下载字幕时，额外语言 `en-en-US` 请求遭 HTTP 429，因此未取得中文字幕；已停止额外字幕重试。已下载的英文字幕可完整覆盖讲座，生成中文演示时需自主转述与术语核对。

## 文件清单

| 文件 | 来源与实际内容 | 使用方式 |
|---|---|---|
| `video-HoKp93KUMko.en-US.vtt` | [MIT 官方视频](https://www.youtube.com/watch?v=HoKp93KUMko)的非自动英文字幕轨，约 51 KB | 首选文本证据；包含少量 `[INAUDIBLE]`，不能视为逐字无误 |
| `video-HoKp93KUMko.en-orig.vtt`、`video-HoKp93KUMko.en.vtt` | 同视频自动字幕，二者内容重复 | 仅用于校对；滚动字幕有重复片段，不宜直接当文章读取 |
| `video-HoKp93KUMko.info.json`、`.description` | 同视频元数据和发布者说明 | 核实标题、频道、日期、时长；JSON 中含临时媒体 URL，不宜作为引用入口 |
| `sample-chapters.html` | [作者样章入口](https://essenceofsoftware.com/posts/sample-chapters/) | 证明下面两份 PDF 是官网提供的样章 |
| `eos-intro-sample-chapter.pdf`、`.txt` | [第一份样章](https://essenceofsoftware.com/posts/sample-chapters/eos-intro-sample-chapter.pdf)，**21 个 PDF 页面**：目录 1 页、第 1 章 *Why I Wrote This Book*（印刷页 9–13）5 页、四种索引（印刷页 309–323）15 页 | 设计问题与本书动机；索引只能导航，不能当作已读章节内容 |
| `eos-11-concept-integrity.pdf`、`.txt` | [第 11 章样章](https://essenceofsoftware.com/posts/sample-chapters/eos-11-concept-integrity.pdf)，**9 个 PDF 页面**，*Concept Integrity*（印刷页 157–165） | 概念组合的边界与完整性反例 |
| `book-summary.html` | [The Essence of the Essence](https://essenceofsoftware.com/posts/distillation/) | 作者自写的全书核心思想概述；不是全书替代品，作者明确提醒其例证与论证不完整 |
| `operational-principles.html` | [Operational principles](https://essenceofsoftware.com/tutorials/concept-basics/principle/) | 解释 OP、典型情境与完整行为规格的区别 |
| `concept-purposes.html` | [Concept purposes](https://essenceofsoftware.com/tutorials/concept-basics/purpose/) | 解释概念为什么存在及目的的质量标准 |
| `concept-criteria.html` | [Concept criteria: what’s a concept?](https://essenceofsoftware.com/tutorials/concept-basics/criteria/) | 解释概念应是独立可理解、有目的的完整功能单元 |

`.txt` 是 `pdftotext -layout` 从已下载 PDF 提取的本地阅读副本。HTML 为原始网页，不是清洗或改写版本。

## 视频身份与内容导航

元数据标题：**Three Directions in Design: Daniel Jackson**。发布频道：**MIT Schwarzman College of Computing**。上传日期：**2024-03-07**。时长：**30 分 56 秒**。讲者 Daniel Jackson 在开场说明其 MIT EECS／CSAIL 身份，发布者说明确认其为本书作者。上传日期不等于录制日期。

元数据没有官方章节；下表是根据 `en-US.vtt` 整理的**人工导航**，时间为段落起点附近：

| 时间 | 主题 | 演示可用作用 |
|---|---|---|
| 00:09 | 创新是什么、软件为什么成功 | 提出待回答的问题 |
| 00:24 | Web：从连接服务器取文件到按资源地址请求 | 说明改变使用情境的设计 |
| 03:31 | iPod 与音乐获取／同步体验 | 第二个对照案例，可按时长删减 |
| 06:07 | WhatsApp 群聊 | 从逐次列收件人到持续群组 |
| 08:11 | Zoom 会议链接 | 清晰的前后流程对比，适合作为主案例 |
| 13:07 | Calendly 自助预约 | 再次回扣减少协调摩擦 |
| 15:15 | 汇总成功情境；15:55 转向概念组合 | 从案例到核心主张的转折 |
| 16:58 | 概念不等于功能特性 | 概念辨析，适合 fence |
| 17:54 | 用同步组合概念；随后讨论聊天历史的状态细节 | 区分典型场景与完整行为设计 |
| 20:01 | 用概念诊断可用性问题 | 诊断方法；公众人物动机只是讲者解释，不宜当作独立事实 |
| 21:41 | 概念目录与组织协作 | 可选拓展，不必占据入门主线 |
| 23:26 | 模块化实现 | 从设计到实现的连接 |
| 24:52 | 从局部需求识别可复用概念 | 迁移练习的依据 |
| 26:30 | 概念组合的协同效应 | 高级补充；不宜堆入短讲 |
| 29:40 | 总结与书籍介绍 | 复核讲者自己的结论 |

上述历史产品比较是讲者在该讲座中的分析。涉及增长曲线、估值、时间点与成功因果时，不应升级成经独立验证的普遍定律，也不应用它们描述 2026 年产品现状。

## 可用论据与边界

1. **设计处理“该提供什么行为”，不能由排除实现缺陷替代。** 第一章样章印刷页 9–11 区分内部代码设计与面向使用者的功能设计。可作开场动机；不能推导为测试或工程不重要。[样章来源](https://essenceofsoftware.com/posts/sample-chapters/eos-intro-sample-chapter.pdf)
2. **目的、运作原理与状态／动作承担不同职能。** 目的说明为何存在，OP 用典型完整情境说明如何兑现目的；完整行为仍需状态和动作定义。不要把 OP 写成按钮操作清单，也不要称其穷尽规格。[作者 OP 教程](https://essenceofsoftware.com/tutorials/concept-basics/principle/)
3. **目的应具体、面向需要、可用于评价设计。** “允许恢复已删除内容”比“提供删除功能”更能解释 Trash；“提高公司收益”过于宽泛，不足以区分概念。[作者目的教程](https://essenceofsoftware.com/tutorials/concept-basics/purpose/)
4. **概念是独立可理解的完整功能单元。** Name／purpose／OP 可作为入门描述骨架；单个实体、按钮或动作未必构成概念。独立性不意味着实际应用无需协调。[作者概念标准](https://essenceofsoftware.com/tutorials/concept-basics/criteria/)
5. **组合不能偷偷改变概念所承诺的行为。** 第 11 章餐厅反例区分“预约记录无故消失”与“明确发生取消动作”；后者可能很糟糕，但并不因此违反概念完整性。此例特别适合说明“完整性不等于全部产品质量”。[第 11 章样章](https://essenceofsoftware.com/posts/sample-chapters/eos-11-concept-integrity.pdf)

## 实测内容建议（教学设计，非原作者原话）

- 可以用一条可记忆的主线组织：**先说清目的，再用场景兑现，最后检查组合是否破坏承诺。** 此句是制作者归纳，不能加引号署名给 Jackson。
- 优先深讲一个主案例（Zoom 会议链接或自助预约），画前后动作序列；其他案例用于不同角度的短回扣，避免把视频的五个案例逐一照搬。
- 加一个迁移题：给出“删除”功能，要求听众写出 Trash 的目的及典型恢复情境；随后用餐厅反例检查其能否辨别“行为完整”与“体验良好”。
- 最后给可带回工作的最小产物：一个概念的名称、目的、OP，以及组合后仍必须成立的承诺。若演示承诺要教会完整形式化规格，需要更多材料与时长，不能只靠此入门讲满足。

## 获取验证

`yt-dlp` 使用 `--skip-download`，输出仅字幕、描述与 JSON。`pdfinfo` 确认两份 PDF 分别为 21、9 页；文本提取成功。四份教程／概述页面下载成功。所有材料来自视频发布平台和作者官网；未寻找盗版或声称取得全书。
