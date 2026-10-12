# presentation-making：设计与参考取舍

当前发布决策：用户随后要求删除英文版，仅保留 `presentation-making-cn`，默认不自动调用。本机安装供 Cursor 与 Codex 显式使用。下文的双语设计与验证记录保留为首版开发历史，不代表当前发行结构。

## 目标与边界

根据用户已确认的设计，创建独立的演示文稿技能：理解材料 → 头脑风暴 → 塑形 → 大纲 → 创作 → 检视与重构。目标是让听众理解并记住有依据的核心主张。默认现场演示、单文件 HTML、逐页备注；支持 Markdown 与独立阅读模式。

采用分轮决策对齐、单份轻量工作记录、按阶段读取参考；技能载荷无脚本。仓库要求中英文成对发布，因此提供 `presentation-making` 与 `presentation-making-cn`。不新增安装、发布或提交动作。

## 本地参考逐项分析

以下评价依据已下载版本，不声称覆盖上游后续变化。源目录及原仓库见 [参考索引](../references/how-to-speak-projects/README.md)；script-writer 见 [单独参考](../references/script-writer/README.md)。这些副本用于研究，不作为新技能运行依赖。

| 项目／技能 | 优点 | 相对本次目标的不足 | 取舍 |
| --- | --- | --- | --- |
| cell-skills / speech-structure-coach | 入口短，六原则突出，先结构后措辞 | 仅辅导；fence 被压缩为范围声明 | 吸收精炼骨架，补全概念区别和交付 |
| devadvokit / build-talk-outline | 时间、章节职能、可删内容与 demo 预案 | 外部配置依赖，固定时长，止于大纲 | 吸收时间预算；仅有 demo 时考虑其失败路径 |
| hive-os / winston-presentation-coach | 分支参考；承诺与贡献一致性 | 重复 intake；求职结构泛化；无渲染闭环 | 吸收按需读取与首尾核对 |
| odyssey-craft / how-to-speak | 双语术语，规则与参考分离 | 文体过宽，技巧频率和数量机械化 | 吸收术语辨析，舍弃统一配额 |
| winston-coach | 启发式边界、口语与书面区分 | 主文件长，跨文体，依赖 humanizer | 吸收原义与适用条件，独立编写 |
| huashu-skills / huashu-speech-coach | 中文例子，陌生观众视角 | 现场管理与品牌内容过多，评分证据弱 | 吸收理解障碍检视，改成可观察条件 |
| agent-plugins / how_to_speak | 技巧落到页与备注，改写示例 | 强制显性方法标签及数量 | 技巧在内容中起作用，内部标签留在备注或记录 |
| tomazb-agent-skills / how-to-speak-winston-framework | 误用护栏，正例与近似反例 | 入口膨胀、重复提问、自定阈值混入原义 | 吸收反例，压缩为阶段相关判断 |
| steiner-skills / winston-slides | 正文／备注／阅读分层；尊重情境与品牌 | 偏大纲，自定技巧门槛，行动请求泛化 | 吸收分层；行动随目标决定 |
| chase-skills / express-improve | 场景成功标准，多角度回扣 | 跨场景过宽，缺证据与成品 QA | 吸收目标改变与回扣，补证据追踪 |
| agent-hicks-marketplace / presentation | 最完整的阶段流程，塑形，阶段摘要与稳定 ID | 绑定 JS/PPTX；禁止阶段回退；流程过重 | 吸收阶段设计，允许追溯重构，压成单份状态记录 |
| business-agent-skills / content-writing | 材料理解、选证据、反对意见、事实边界 | 全文案定位，重复确认，无演示可用性 | 吸收证据与取舍，限定演示制作 |
| mark-life-agent-skills / writing-for-readers | 具体、术语一致、保留事实 | 抑制重复／预告／对比，与 Winston 相冲突 | 只吸收表达清晰，不移植整套文风禁令 |
| writing-skills / presentation-making | 短入口，逐页事实→布局→制作→备注，实检闭环 | 缺少记忆设计与塑形对齐 | 吸收精炼结构与检查闭环；新技能独立编写 |
| thedesignproject-agent-skills / presentation | 单文件 HTML，导航与渐显，组件分离 | 装饰偏重，事实和叙事验收不足 | 吸收成品可用性，动画须有解释作用 |
| kambleakash0 / script-writer | 原则与例子连接，开场结尾闭环 | 全文体规则绝对化、资料强制加载过多、部分规则不一致 | 吸收具象表达与讲述提示，舍弃过载与绝对化 |

## 原义与工程扩展

已核对本地保存的 Winston 讲稿：[四项启发式](../references/how-to-speak-projects/agent-hicks-marketplace/en/presentation/guides/how-to-speak/how-to-speak-transcript/02-four-heuristics.md) 与 [记忆设计／5S](../references/how-to-speak-projects/agent-hicks-marketplace/en/presentation/guides/how-to-speak/how-to-speak-transcript/07-getting-famous.md)。这是上游保存的讲稿副本，不把它当作经过独立校订的逐字字幕。

- Cycling 的多次回访与约七秒的等待是启发式，非通用科学阈值。
- Fence 区分相近概念，不等于“本次不讲什么”。
- Salient 意为突出、有辨识度，不等同重要；中心主张与记忆抓手分别定义。
- 5S 无每页或每场凑数要求；surprise 必须有依据。
- 面向用户的决策追问与面向听众的 ask-and-wait 分开。
- 阶段退出条件、HTML／Markdown 输出合同、证据映射与检视闭环是本项目扩展，不归称 Winston 原文。

## 文件结构与单一事实来源

```text
skills/{en/presentation-making,cn/presentation-making-cn}/
  SKILL.md                 核心概念、阶段路由、跨阶段约束、完成条件
  references/process.md    材料理解、对齐、塑形、大纲、轻量状态
  references/winston.md    原则定义、必要正反例、5S、场景范式
  references/output.md     HTML／Markdown 正文、备注及交互合同
  references/review.md     可观察的检视条件与回退修复
```

每版安装载荷五份 Markdown，无脚本。QA 的短入口仅调用现有验证工具，不随技能安装。每份参考由阶段触发，不要求运行开始时全部载入。主文件提供流程概览，详细规则在对应参考中维护。

## 验证计划

1. 仓库验证：本地化配对、技能元数据、Markdown 格式及现有技能回归。
2. 静态审查：引用闭合、双语语义一致、无跨本地参考库依赖、无重复确认与硬编码技巧配额。
3. 行为场景：见 [中文评估场景](../../qa/cn/presentation-making-cn/evals.md)，结构检查通过不能替代行为验证。
4. 用户指定实测：下载 Daniel Jackson 视频 `HoKp93KUMko` 的字幕，结合《软件设计的要素》可获取正文或官方样章，使用技能制作演示稿。材料不足明确范围，关键目标与结构按技能对齐，记录实际缺陷与修复。

“被记住”以主张、抓手、依据和收束的可追溯联系检验。代理模拟不能证明真实延迟回忆，也不能仅凭一次成品宣称技能普遍有效。

## 来源使用方式

新技能以原创指令表达流程与判断，未搬运下载项目的脚本、模板、长例子或原始讲稿。原始项目的许可证与使用条件继续属于各自项目；参考目录不打包进安装载荷。此记录保留思想来源和取舍，不把“源码可见”等同于可重新许可。

## 已执行验证（2026-09-16）

- `tools/validate-all.sh`：三组配对全部通过；既有技能存在非阻断警告，新技能 Markdown 零问题。
- 两版 `quick_validate.py` 通过；英文 `skillcheck` 通过；10 份载荷 Markdown 中的 8 个本地链接均在各自语言包内解析成功。
- 独立前向测试实际生成 5 页、300 秒 Markdown 与单份工作记录。输入只有 10 请求、100→80 ms 平均延迟，另要求“快一倍”和兔子故事，并授权代理决定主张、叙事与大纲。
- 观察到：未重复索要授权；计算减少 20%；没有推导吞吐量或显著性；将兔子故事标注为虚构并连接证据边界；完整备注包含等待与无人回应接法；明确真实讲述时间、渲染器和听众回忆未验证。主代理读取了实际成品。
- 测试暴露主文件等待指令与参考中的授权继承之间可能有歧义。两版已明确：已授权选择直接推进；重构时授权仍有效，改变目标或超出授权才重新裁断。
- 本次单场景验证不代表全部行为场景已运行，不证明真实记忆效果。用户指定的 Daniel Jackson 真实案例另行记录，尚需听众与目标对齐后推进创作。
