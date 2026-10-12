# MIT “How to Speak” 与内容编写技能：项目调研

调研日期：2026-09-16

## 结论先行

MIT “How to Speak”的讲者是 **Patrick Henry Winston（帕特里克·亨利·温斯顿）**。MIT 官方资料称他是人工智能与计算机科学教授、MIT 人工智能实验室前主任；他持续约 40 年讲授这门 IAP 课程。[MIT OpenCourseWare 课程页](https://ocw.mit.edu/courses/res-tll-005-how-to-speak-january-iap-2018/pages/how-to-speak/)列出的讲师正是 Patrick Henry Winston，并给出 2018 年完整视频和分段提纲；[MIT News 的人物资料](https://news.mit.edu/2019/patrick-winston-professor-obituary-0719)补充了他的学术身份与该讲座的历史。

公开 GitHub 上已有十余个明确写明基于 Patrick Winston / MIT “How to Speak” 的 Agent Skill。最值得优先研究的不是同一种实现：`kambleakash0/script-writer` 最接近跨体裁内容写作，`Anastasios3/winston-coach` 同时覆盖演讲与书面沟通，`CHZarles/how-to-speak` 是精简的中英双语写作版本，`hiivee/winston-presentation-coach` 的模块路由最好，`phazonoverload/build-talk-outline` 的可执行工程约束最强，`cellinlab/speech-structure-coach` 则是适合本仓库风格的短小中文骨架。

## 一手资料与可用边界

### 专家与课程材料

- **专家**：Patrick Henry Winston。MIT OCW 将其列为课程讲师；Winston 自己的 MIT/CSAIL 主页说明，他在 IAP 期间讲授 “How To Speak”，帮助听众改进讲课、论文答辩和求职演讲。[MIT OCW](https://ocw.mit.edu/courses/res-tll-005-how-to-speak-january-iap-2018/pages/how-to-speak/)；[Winston 的 MIT/CSAIL 主页](https://people.csail.mit.edu/phw/)
- **完整视频与官方提纲**：MIT OCW 的 2018 课程页按“开场、四个启发式、时间和场所、黑板/道具/幻灯片、告知、说服、收尾”等章节提供时间点。[课程页](https://ocw.mit.edu/courses/res-tll-005-how-to-speak-january-iap-2018/pages/how-to-speak/)
- **官方文字稿**：MIT OCW 在 2024 年 Innovation Teams 课程资源中提供可下载的完整 transcript，适合做规则核对与精确溯源。[文字稿页面](https://ocw.mit.edu/courses/15-371-innovation-teams-fall-2024/resources/unzc731icuy_transcript/)；[文字稿 PDF](https://ocw.mit.edu/courses/15-371-innovation-teams-fall-2024/Unzc731iCUY_transcript.pdf)
- **书面沟通扩展**：Winston 的《Make It Clear: Speak and Write to Persuade and Inform》把方法明确扩展到 speaking 与 writing，是构建“内容编写技能”比只看讲座更直接的补充一手资料。[MIT Press 图书页](https://mitpress.mit.edu/9780262539388/make-it-clear/)。该书不是 OCW 开放课程材料，不能因为 OCW 的 CC 许可而复制书中表达。
- **课程目标**：Winston 的开场承诺是帮助听众让自己的想法更有机会被重视和接受；课程同时覆盖“告知”和“说服”，因此它不只适合演讲，也能抽象为内容组织方法。[MIT OCW](https://ocw.mit.edu/courses/res-tll-005-how-to-speak-january-iap-2018/pages/how-to-speak/)

### 版权与复用提醒

MIT OCW 页面链接到 **CC BY-NC-SA 4.0**。该许可允许分享和改编，但要求署名、非商业使用、相同方式共享；这意味着直接复制或紧密改写 transcript、课程图示和长段措辞，会给下游技能带来非商业与 ShareAlike 约束。[MIT OCW 页面底部许可入口](https://ocw.mit.edu/courses/res-tll-005-how-to-speak-january-iap-2018/pages/how-to-speak/)；[CC BY-NC-SA 4.0 条款](https://creativecommons.org/licenses/by-nc-sa/4.0/)

因此，若 `myoffice-skills` 希望维持 Apache-2.0、允许商业复用，建议：

1. 从一手材料中独立总结**方法、流程和检查项**，不要复制长引文、讲稿段落或原有例子；
2. 在参考资料中清楚署名并链接 MIT OCW；短引文保持必要、有限；
3. 不把 MIT、MIT OCW 或 Patrick Winston 写成项目背书方；
4. 若要大量吸收文字稿表达或完整改编课程，应单独评估 CC BY-NC-SA 兼容性。以上是工程复用建议，不是法律意见。

## 直接源自 “How to Speak” 的技能项目

### 1. `kambleakash0/agent-skills` — `script-writer`

- **仓库/技能**：[仓库](https://github.com/kambleakash0/agent-skills)；[`SKILL.md`](https://github.com/kambleakash0/agent-skills/blob/main/skills/script-writer/SKILL.md)；[`references/resources.md`](https://github.com/kambleakash0/agent-skills/blob/main/skills/script-writer/references/resources.md)
- **实现内容**：把 Winston 方法封装为可触发的 Agent Skill，可生成演示脚本、文章、邮件、社交媒体内容和幻灯片提纲。主技能定义工作流和检查表；约 40 KB 的 reference 把课程整理为 26 条启发式，并为不同文体给出应用方式。
- **直接关系证据**：`SKILL.md` 的 description 和正文明确声明只使用 Patrick Henry Winston “How to Speak”的认知与说服启发式；reference 也明确写明所有规则均提取自该讲座。[技能源码](https://raw.githubusercontent.com/kambleakash0/agent-skills/main/skills/script-writer/SKILL.md)；[规则参考源码](https://raw.githubusercontent.com/kambleakash0/agent-skills/main/skills/script-writer/references/resources.md)
- **值得借鉴**：
  - 将“告知”和“说服”分流；
  - 把 empowerment promise、cycling、building a fence、verbal punctuation、五个 S、contributions ending 等规则变成可执行检查表；
  - 主技能保持工作流，完整规则下沉到 reference，符合渐进加载；
  - 为文章、邮件、社交媒体和幻灯片分别设置格式检查。
- **需要改进**：
  - 它声称“只使用 Winston 规则”，会排斥来源核验、事实完整性、品牌语气、渠道限制等内容写作所需能力；
  - 把口语规则机械映射到所有书面体，例如要求每种文本都以“赋能承诺”开头、核心论点至少重复三次，容易产生模板感；
  - reference 含大量 transcript 引文和紧密改写，但仓库整体标为 MIT License；上游 OCW 材料却是 CC BY-NC-SA 4.0。仓库许可不能自动消除上游材料的许可义务，直接复制该 reference 有合规风险。
- **许可**：仓库声明 [MIT License](https://github.com/kambleakash0/agent-skills/blob/main/LICENSE)。复用时仍应单独处理其源自 MIT OCW 的内容。
- **活动状态**：仓库于 2026-09-09 仍有推送；截至调研日 GitHub 显示 71 次提交、9 stars、1 fork。`script-writer` 最近可验证提交为 2026-03-31（[`6672177`](https://github.com/kambleakash0/agent-skills/commit/6672177bfedd456f36e0c273082e66cf8d8ad04f)）。属于新且小型、仍活跃的个人项目。
- **对我们复用的判断**：**参考其信息架构与检查维度，不直接复制 reference 内容**。用 MIT 官方文字稿独立构建一份更短、可追溯、按场景启用的 Winston 规则层。

### 2. `cellinlab/cell-skills` — `speech-structure-coach`

- **仓库/技能**：[仓库](https://github.com/cellinlab/cell-skills)；[`SKILL.md`](https://github.com/cellinlab/cell-skills/blob/main/skills/speech-structure-coach/SKILL.md)
- **实现内容**：77 行的中文结构教练，覆盖线下分享、工作坊、技术演讲、B 站教程和 PPT/Keynote 审查；把详细启发式下沉到 reference，主文件只保留 format scope、结构检查和输出约定。
- **直接关系证据**：description 明确写明“based on Patrick Winston's How to Speak”，核心检查包括 empowerment promise、cycling、build a fence、verbal punctuation、ask-and-wait 和 ending。[技能源码](https://raw.githubusercontent.com/cellinlab/cell-skills/main/skills/speech-structure-coach/SKILL.md)
- **许可/状态**：[MIT License](https://github.com/cellinlab/cell-skills/blob/main/LICENSE)；技能最近可验证提交为 2026-04-11（[`5cc4b07`](https://github.com/cellinlab/cell-skills/commit/5cc4b0735e1abd38d9b5b203220921aa096221b3)），仓库最近推送为 2026-05-08。
- **复用判断**：最适合作为短小、渐进加载的目录骨架；能力仍集中于演讲结构，需要补上文章、报告、邮件的 brief、证据和改写流程。

### 3. `phazonoverload/devadvokit` — `build-talk-outline`

- **仓库/技能**：[仓库](https://github.com/phazonoverload/devadvokit)；[`SKILL.md`](https://github.com/phazonoverload/devadvokit/blob/main/skills/build-talk-outline/SKILL.md)
- **实现内容**：把 CFP/演讲描述转成带累计时间戳的大纲，并加入受众问答、理论/实践配比、Q&A 预留、demo 风险、20% demo 缓冲、fallback 层级与总风险摘要。
- **直接关系证据**：技能明确要求读取 Winston principles，并强制应用 empowerment promise、Winston Star、五分钟 vision/proof、contributions closing 和 slide density 检查。[技能源码](https://raw.githubusercontent.com/phazonoverload/devadvokit/main/skills/build-talk-outline/SKILL.md)
- **许可/状态**：[MIT License](https://github.com/phazonoverload/devadvokit/blob/main/LICENSE)；技能最近可验证提交为 2026-04-10（[`8144a9d`](https://github.com/phazonoverload/devadvokit/commit/8144a9d4be89ae17779d1bfaa1a5bb74ecd5c4c8)）。
- **复用判断**：很适合借鉴“输出必须可验证”的设计：精确时间预算、风险块、失败备选和结构性验收，而不是只给抽象写作建议。

### 4. `hiivee/hive-os` — `winston-presentation-coach`

- **仓库/技能**：[仓库](https://github.com/hiivee/hive-os)；[`SKILL.md`](https://github.com/hiivee/hive-os/blob/main/skills/winston-presentation-coach/SKILL.md)
- **实现内容**：为 build、audit、rescue 演示任务提供入口，并路由到 Opening、Memorability、Structure、Slides 四个子框架，也可串成端到端流程。
- **直接关系证据**：frontmatter 直接声明使用 Patrick Winston 的 MIT “How to Speak” 框架，并把 empowerment promise、Winston Star、slide crimes、vision/proof/contributions 作为触发锚点。[技能源码](https://raw.githubusercontent.com/hiivee/hive-os/main/skills/winston-presentation-coach/SKILL.md)
- **许可/状态**：[MIT License](https://github.com/hiivee/hive-os/blob/main/LICENSE)；技能最近可验证提交为 2026-07-17（[`69a9fe7`](https://github.com/hiivee/hive-os/commit/69a9fe7823b621d5d482e4abc4fb4fb47daeecaa)），仓库最近推送为 2026-07-29。
- **复用判断**：模块边界最值得借鉴。内容编写技能可以按 Intake / Structure / Memorability / Format / Review 分层，而不是把所有规则塞进单个 SKILL.md。

### 5. `CHZarles/odyssey-craft` — `how-to-speak`

- **仓库/技能**：[仓库](https://github.com/CHZarles/odyssey-craft)；[`SKILL.md`](https://github.com/CHZarles/odyssey-craft/blob/master/skills/how-to-speak/SKILL.md)
- **实现内容**：中英双语的“写作 / 演讲 / 视频脚本工具”，明确覆盖长文、技术博客、视频口播、答辩和已有文稿审校；用三段式流程、跨媒介对照表和终稿清单实现。
- **直接关系证据**：description 和正文均明确写明来自 MIT OCW IAP 2018，并把 one-language-processor、四项启发式、Contributions、Winston Star 映射到文章和视频。[技能源码](https://raw.githubusercontent.com/CHZarles/odyssey-craft/master/skills/how-to-speak/SKILL.md)
- **许可/状态**：仓库未提供 LICENSE；技能最近可验证提交为 2026-07-27（[`a4b3107`](https://github.com/CHZarles/odyssey-craft/commit/a4b3107d3829b9b608a97512defe7a16b85bfd62)）。
- **复用判断**：与我们的跨体裁目标最接近，但只能用于行为对照和需求发现，不可复制文字或代码。

### 6. `Anastasios3/winston-coach`

- **仓库/技能**：[仓库](https://github.com/Anastasios3/winston-coach)；[`SKILL.md`](https://github.com/Anastasios3/winston-coach/blob/main/SKILL.md)
- **实现内容**：同时使用 “How to Speak” 与《Make It Clear》，覆盖 talk、pitch、答辩、report、memo、email、blog、abstract、proposal 等，并用路由表选择少量适用规则，最后执行 humanizer pass。
- **直接关系证据**：frontmatter 和正文逐一列出两项 Winston 一手来源；其 format routing、VSN-C 与 written openings 尤其针对书面内容。[技能源码](https://raw.githubusercontent.com/Anastasios3/winston-coach/main/SKILL.md)
- **许可/状态**：存在显著冲突：SKILL.md frontmatter 写 `license: MIT`，但仓库根目录的实际 [LICENSE](https://github.com/Anastasios3/winston-coach/blob/main/LICENSE) 是 CC BY-NC-SA 4.0，初始提交说明也明确写 CC BY-NC-SA（[`9ebc34f`](https://github.com/Anastasios3/winston-coach/commit/9ebc34f198bc58e293a284cdaecb70f339f62e83)，2026-05-18）。应按更保守的根许可证处理。
- **复用判断**：是内容写作产品形态最完整的对标项目，但 526 行主文件过深，且大量书中规则/引文存在图书版权与非商业许可约束；适合研究路由，不适合直接移植。

### 7. `alchaincyf/huashu-skills` — `huashu-speech-coach`

- **仓库/技能**：[仓库](https://github.com/alchaincyf/huashu-skills)；[`SKILL.md`](https://github.com/alchaincyf/huashu-skills/blob/master/huashu-speech-coach/SKILL.md)
- **实现内容**：较完整的中文演讲、B 站脚本与 PPT 教练，包含规则解释、例子、观众模拟、10 分制评分和速查清单。
- **直接关系证据**：description 明确声明基于 Patrick Winston 的 “How to Speak”，并链接原始视频。[技能源码](https://raw.githubusercontent.com/alchaincyf/huashu-skills/master/huashu-speech-coach/SKILL.md)
- **许可/状态**：仓库无 LICENSE；技能最近可验证提交为 2026-02-15（[`d690def`](https://github.com/alchaincyf/huashu-skills/commit/d690def0b2cfa33cecb64b04a6d111df5218f6c5)）。仓库截至调研日约 1,540 stars、243 forks，采用度远高于其他候选，但这不授予复制权。
- **复用判断**：适合验证中文用户期待的输出形式，尤其是评分、观众视角和“最小改动/最大收益”建议；无许可证，只做对照。

### 其他已确认的直接衍生项目

以下项目也在 SKILL.md 中明确引用 Winston / MIT “How to Speak”，但许可证缺失或与本次“内容编写”目标较远，可作为第二轮阅读清单：

- [`rmarquis/agent-plugins/how_to_speak`](https://github.com/rmarquis/agent-plugins/tree/main/how_to_speak)：deck 创建/评审；无 LICENSE。
- [`tomazb/agent-skills/how-to-speak-winston-framework`](https://github.com/tomazb/agent-skills/tree/main/how-to-speak-winston-framework)：多框架、Build/Audit/Coach 模式；无 LICENSE。
- [`chsteiner/skill-collection-steiner-chris/winston-slides`](https://github.com/chsteiner/skill-collection-steiner-chris/tree/main/skills/winston-slides)：现代化幻灯片裁剪与测试场景；无 LICENSE。
- [`ChasePassion/skills/express-improve`](https://github.com/ChasePassion/skills/tree/main/express-improve)：创业招募、答辩、job talk、路演和向上汇报；无 LICENSE。
- [`jrhicks/agent-hicks-marketplace/presentation`](https://github.com/jrhicks/agent-hicks-marketplace/tree/main/plugins/hts/skills/presentation)：完整演示阶段工作流的一部分；无 LICENSE。

## 相邻的开源或源码可见技能项目

这些项目没有声称源自 Winston，但覆盖构建“内容编写技能”所缺的输入澄清、事实约束、可读性、演示叙事和成品验证。

### 8. `J-Naish/business-agent-skills` — `content-writing`

- **仓库/技能**：[仓库](https://github.com/J-Naish/business-agent-skills)；[`SKILL.md`](https://github.com/J-Naish/business-agent-skills/blob/main/skills/content-writing/SKILL.md)
- **实现内容**：覆盖落地页、广告、邮件、社媒、销售演示、方案、内部文档、报告、新闻稿、博客和案例等；先定义希望读者发生的变化，再执行 gather → select → express，并区分新写与改写。
- **可借鉴点**：受众、期望终态、分发场景、语气、来源材料和反目标的 brief；缺数据时使用显式 placeholder、禁止编造；先展示结构计划，再起草、诊断和精修。[技能源码](https://raw.githubusercontent.com/J-Naish/business-agent-skills/main/skills/content-writing/SKILL.md)
- **许可**：截至调研日，仓库根目录未发现 LICENSE，GitHub API 也未识别许可证。因此它是“源码可见的参考实现”，**不能按开源许可直接复制**。
- **活动状态**：仓库最近推送为 2026-06-23；该技能最近可验证提交为 2026-04-25（[`0aa09c6`](https://github.com/J-Naish/business-agent-skills/commit/0aa09c6258c8315e5eb5b2a84626512b47e75bd9)）。
- **对我们复用的判断**：借鉴其问题空间和流程概念，自行实现，不复制文字。它非常适合作为 Winston 修辞规则之前的“内容 brief 与证据层”。

### 9. `Mark-Life/agent-skills` — `writing-for-readers`

- **仓库/技能**：[仓库](https://github.com/Mark-Life/agent-skills)；[`SKILL.md`](https://github.com/Mark-Life/agent-skills/blob/main/skills/communication/writing-for-readers/SKILL.md)
- **实现内容**：面向博客、文章、文档、落地页和 newsletter 的可读性/去 AI 味编辑；强调短而常用的词、具体事实、删减、句段节奏与可机械执行的终稿检查。
- **与 Winston 的互补关系**：Winston 解决“思想如何被记住和接受”；该技能解决“书面文本如何像人在写、如何避免模型腔”。其“精确复用术语、保留事实、删掉没有信息量的表演句”可作为最终语言 pass。[技能源码](https://raw.githubusercontent.com/Mark-Life/agent-skills/main/skills/communication/writing-for-readers/SKILL.md)
- **许可**：[MIT License](https://github.com/Mark-Life/agent-skills/blob/main/LICENSE)
- **活动状态**：仓库最近推送为 2026-08-15；技能最近可验证提交同日（[`0696ebb`](https://github.com/Mark-Life/agent-skills/commit/0696ebb51867d4a89ce747527e4899f5306ed464)）。
- **对我们复用的判断**：适合作为可选的“自然语言精修”阶段；不应把其固定统计阈值当作所有中文/英文文体的通用真理，应按语言与体裁校准。

### 10. `msimchowitz/writing-skills` — `presentation-making`

- **仓库/技能**：[仓库](https://github.com/msimchowitz/writing-skills)；[`SKILL.md`](https://github.com/msimchowitz/writing-skills/blob/main/for-agents/presentation-making/SKILL.md)
- **实现内容**：从源材料构建叙事清晰、技术准确、可编辑且经过渲染验证的演示文稿；要求先明确受众、目的、场地、时长、资料与输出格式，再逐页规划 point/evidence/layout/build。
- **与 Winston 的互补关系**：与“一个语言处理器”“每页一个教学动作”“逐步揭示”高度相容，同时补上 Winston 课程没有覆盖的现代交付要求：保持可编辑、渲染全量检查、修正溢出/重叠/小字/引用问题。[技能源码](https://raw.githubusercontent.com/msimchowitz/writing-skills/main/for-agents/presentation-making/SKILL.md)
- **许可**：[MIT License](https://github.com/msimchowitz/writing-skills/blob/main/LICENSE)
- **活动状态**：仓库创建于 2026-07-25；技能目前可验证提交是初始提交（[`1866929`](https://github.com/msimchowitz/writing-skills/commit/1866929a3a4a3ec80949d9be55ad1ef6396f13c2)）。截至调研日约 35 stars、3 forks，代码体量小但关注度相对较高。
- **对我们复用的判断**：适合把“内容编写”与现有 `html-slides` 串起来：内容技能负责信息架构和讲稿，演示技能负责媒介化与视觉 QA。

### 11. `thedesignproject/agent-skills` — `presentation`

- **仓库/技能**：[仓库](https://github.com/thedesignproject/agent-skills)；[`SKILL.md`](https://github.com/thedesignproject/agent-skills/blob/main/skills/presentation/SKILL.md)
- **实现内容**：生成单文件 HTML/CSS/JS 演示，可选择一次性生成或逐页交互；在写代码前先收集材料、建立逐页提纲和叙事弧，再确定设计 brief 与实现。
- **与 Winston 的互补关系**：其“先内容、后代码”和逐页交互模式适合作为 Winston 内容规则到 `html-slides` 的执行桥梁；但它的 hook → context → content → closing 是通用叙事模板，不是 Winston 原始框架。[技能源码](https://raw.githubusercontent.com/thedesignproject/agent-skills/main/skills/presentation/SKILL.md)
- **许可**：[MIT License](https://github.com/thedesignproject/agent-skills/blob/main/LICENSE)
- **活动状态**：仓库最近推送为 2026-09-15；截至调研日约 87 stars、21 forks。该技能最近可验证提交为 2026-03-17（[`1c0fe4b`](https://github.com/thedesignproject/agent-skills/commit/1c0fe4b5db3b73f1d20b5cccc20d9fecadc78ccc)）。
- **对我们复用的判断**：可借鉴交互模式和“内容计划先于渲染”的阶段边界；现有 `html-slides` 已覆盖许多产物实现细节，不应重复建立第二套 HTML 引擎。

## 公开笔记，但不是可直接复用的开源技能

- [StevenMaude 的 How To Speak 笔记](https://gist.github.com/StevenMaude/280eadc60938ce4b6960dc60e830662d)
- [almeidaraul 的简要总结](https://gist.github.com/almeidaraul/e753c00a76efc6a01a1398d9cb3ad126)

两者都能辅助交叉检查课程要点，但只是 gist 笔记，不是 Agent Skill；页面也未给出明确开源许可证。应把它们当阅读线索，不能当可复制的实现来源。一手事实仍以 MIT OCW 视频和文字稿为准。

## 对 `myoffice-skills` 的建议

### 推荐定位

新技能不要只叫“演讲脚本生成器”，而应定位为：

> 根据受众、目标、证据和渠道，规划、起草、审校能让观点被理解、记住并采取行动的内容；在适用场景中使用 Patrick Winston 的沟通启发式。

这能覆盖文章、报告、邮件、提案、讲稿、演示大纲和社媒，同时避免把口语规则硬套到所有文本。

### 推荐结构

```text
skills/content-writing/
├── SKILL.md
├── references/
│   ├── winston-heuristics.md
│   ├── formats.md
│   ├── review-rubric.md
│   └── source-and-license-notes.md
└── assets/
    └── brief-template.md
```

- `SKILL.md`：只放路由、输入收集、主流程和必须检查项。
- `winston-heuristics.md`：基于 MIT 官方 transcript 独立总结，逐条附时间点/页码或链接；明确哪些规则适用于演讲、演示、长文或说服场景。
- `formats.md`：文章、邮件、报告、提案、演讲稿、slide outline 的差异化约束。
- `review-rubric.md`：事实、结构、认知负荷、记忆点、说服力、语气、简洁度的评分与修订循环。
- `source-and-license-notes.md`：记录 MIT OCW 的 CC BY-NC-SA 4.0、所用短引文及改编边界。

### 推荐工作流

1. **锁定 brief**：受众、读者当前状态、期望终态、使用场景、格式/长度、语气、来源材料、禁区。
2. **建立证据表**：把事实、数据、案例、引文与来源绑定；缺失项用 placeholder，不编造。
3. **选择模式**：告知、说服，或两者混合；只有模式和媒介适合时才加载对应 Winston 规则。
4. **设计主张**：一句核心论点；需要时增加 empowerment promise、fence、verbal punctuation、story 和五个 S。
5. **先出结构再成稿**：让用户能在低成本阶段修正方向。
6. **按媒介起草**：演讲强调听觉与节奏；幻灯片控制并行文字；书面材料避免机械重复和口语式元话语。
7. **双层审校**：先核对事实与论证，再做可读性与语气精修。
8. **贡献式收尾**：适用于演讲/提案；普通邮件、文档和文章应按其自然体裁收尾，不强制禁用 “thank you”。

### 最值得吸收的规则

- 开头明确受众将得到什么（但允许按体裁改写为价值、结论或读者任务）。
- 核心观点通过结构、例子和结论“循环出现”，不是逐字重复。
- 主动说明“它不是什么”，防止和相邻概念混淆。
- 使用显式路标，让注意力中断的读者能重新进入。
- 告知与说服使用不同的结构；说服内容尽早展示愿景和已经完成的证据。
- 为观点设计 symbol、slogan、surprise、salient idea、story，但不要强迫每个短文本同时具备五项。
- 演示中避免让听众同时读密集文字和听同一段内容；细节放入讲稿或备注。
- 以贡献、行动或清晰下一步结束，避免无信息量的收尾。

## 项目优先级

| 优先级 | 项目 | 用途 | 复用建议 |
| --- | --- | --- | --- |
| P0 | MIT OCW 视频与 transcript | 事实与规则的一手依据 | 独立总结并保留署名、链接和许可记录 |
| P0 | `kambleakash0/agent-skills/script-writer` | 跨体裁 Winston 内容生成 | 学规则覆盖面与渐进加载；不复制大段规则/引文 |
| P0 | `Anastasios3/winston-coach` | 演讲 + 书面沟通的完整路由 | 学格式路由；根许可证为 CC BY-NC-SA，谨慎处理图书内容 |
| P0 | `hiivee/hive-os/winston-presentation-coach` | 模块化入口与子框架 | 学深模块拆分、intake 与按需加载 |
| P1 | `phazonoverload/devadvokit/build-talk-outline` | 定时大纲、demo 风险和 fallback | 学可验证输出与风险设计 |
| P1 | `cellinlab/cell-skills/speech-structure-coach` | 精简中文结构教练 | 学短主文件 + reference 骨架 |
| P1 | `CHZarles/odyssey-craft/how-to-speak` | 中文跨文章/视频/演讲映射 | 无许可证，只做需求与行为对照 |
| P1 | `alchaincyf/huashu-skills/huashu-speech-coach` | 中文场景、评分与观众模拟 | 无许可证，只做采用度和交付形态对照 |
| P1 | `J-Naish/business-agent-skills/content-writing` | brief、证据、写作/改写工作流 | 仅借鉴概念；无许可证，不复制文本 |
| P1 | `msimchowitz/writing-skills/presentation-making` | 演示叙事与渲染 QA | MIT 许可；挑选适配现有 `html-slides` 的部分 |
| P2 | `Mark-Life/agent-skills/writing-for-readers` | 自然语言精修与终稿检查 | MIT 许可；统计规则需按语言校准 |
| P2 | `thedesignproject/agent-skills/presentation` | 先内容后实现、交互式逐页设计 | MIT 许可；避免重复建设 HTML 渲染层 |

## 最终判断

最稳妥的路线不是 fork 任一现成实现后扩写，而是：**从 MIT OCW 一手材料重建一个精简的 Winston 修辞内核，再把它嵌入完整的内容生产工作流**。工程上优先组合 `hiivee` 的模块路由、`phazonoverload` 的可验证约束、`cellinlab` 的短主文件结构和 `kambleakash0` 的跨格式覆盖面；产品能力上用 `Anastasios3`、`CHZarles` 与 `huashu` 做行为对标。这样既能保留 “How to Speak” 最有价值的认知结构，也能补齐事实核验、体裁差异、品牌语气、来源管理和交付 QA，并降低对上游大段改编内容的许可依赖。
