# 可选：SKILL+CLI 技能编写

任务包含创建、更新或审查 CLI 配套技能时，使用本参考。

## 职责

CLI 定义可执行的输入、校验、效果和输出。
技能选择能力，将操作连接到用户目标。
技能保留必要用法、示例、约束和完成条件。
完整参数定义以当前 help/schema 为准。

## 避免坏技能

坏技能可能弊大于利：错误模式、过时语法和误导性指令会污染 Agent 的上下文，Agent 却可能照做，最终表现比什么技能都不给更差。

把技能作为需要维护、以实际收益证明价值的决策辅助：

- **让上下文有收益：**只加入会改变能力选择、步骤依赖或结果验证的任务知识。精确限定触发条件，分支细节按需加载；删除通用常识、重复手册和无关规则。当前 help/schema 已足够时，无需配套技能。
- **明确契约归属：**CLI 落实校验、权限、执行与恢复保证，技能指导如何使用这些能力。文字不能提供缺失的执行保障；CLI 契约缺陷应在 CLI 中修复。
- **用证据维护指令：**针对受支持的 CLI 产物验证示例，注明依赖版本的假设。技能与当前 help/schema 或实际行为冲突时，重新核对受影响的契约，更新或移除失效指令；未确定的说法标为未验证，不把猜测写成操作要求。
- **保留范围与条件：**写清前置条件、例外、不确定性和完成边界，区分硬要求与建议，保留用户意图及已有授权。针对具体失败做局部修正，避免升级成所有任务的固定流程。
- **验证净收益：**实质性修改指导后，在可比条件下对照同类代表任务有技能与无技能的表现。检查操作选择、调用有效性、授权边界、完成判断及上下文成本，包含相关失败场景和不该触发的请求。新增错误或成本却没有收益的指导应精简或移除；CLI 契约变化时，复核受影响的示例。

## GWS 分类

GWS 用独立技能承担不同职责。这些类型不是固定加载顺序。

| 类型 | 保留内容 | 固定版本实例 |
| --- | --- | --- |
| Shared（共用） | 安装、认证、通用语法与选项、共用约束 | [gws-shared][shared] |
| Service（服务） | 共用前置、服务语法、helper 入口、资源与方法的效果及限制、help/schema 发现 | [gws-drive][service] |
| Helper（辅助命令） | 共用前置、目的、用法、必要选项及必填/默认值、示例、提示、效果、关联技能 | [gws-docs-write][helper] |
| Recipe（任务流程） | 目标、依赖技能、前置条件、带具体命令的依赖步骤 | [recipe-share-doc-and-notify][recipe] |
| Persona（角色） | 角色目标、依赖技能、相关流程、操作指引、提示 | [persona-content-creator][persona] |

例如，`gws-drive` 在发现命令之外，描述 API 资源和方法。
`gws-docs-write` 给出 `gws docs +write --document <ID> --text <TEXT>`，并附参数表和示例。
该 helper 追加纯文本。提示将富文本格式操作指向原始 API。
分享流程查找文档、授予访问权限，再发送链接。
改编结构时保留这些任务语义。

## 选择组织方式

任务需要独立发现时，使用独立技能。
任务共用一个产品入口时，使用一个技能和多个参考文档。
简短且自包含的技能不需要参考目录。
只有独立角色会改变流程时，才增加 persona。
检查调用方后，删除无用文件。

Space 将 GWS 类型组织为一个技能和四个参考文档：

```text
space-control/
  SKILL.md
  agents/openai.yaml
  references/
    shared.md
    services.md
    helpers.md
    recipes.md
```

这是 Space 的组织选择。GWS 将这些类型发布为独立技能。
`SKILL.md` 保留目的、必要约束和任务入口。
每个参考链接注明加载条件。只读取当前任务需要的参考。
共用约束放在 `shared.md`。操作专属约束放在对应操作旁。
按上表选择各参考文档的内容。

## 编写技能

1. 从 CLI 根命令逐层读取目标命令的当前 help。只查询需要的 schema 和类型。
2. 示例使用实际支持的命令和选项。保留原生字段名及选项含义。
3. 说明实际 dry-run 边界。区分本地校验、认证、元数据读取和业务请求。
4. 保留已有授权和认证方式。歧义改变目标或效果时，再请求澄清。
5. 说明适用的并发条件。区分已受理、终态成功和用户要求的业务结果。
6. 写入结果未知时，查询回执和当前事实。只有原意图的契约支持安全重放时，才重放。

不要虚构通用 `--dry-run` 选项。预演不授予权限，也不证明执行成功。
GWS 要求写入前确认。改编此约束时，保留用户已有授权。
保留目标平台的元数据与调用策略。OpenClaw 字段不是通用技能要求。
使用短句和主动句。每句一个动作，同一概念使用同一术语。
精简文字时保留条件和不确定性。

## 验证结果

使用可用的技能工具检查 frontmatter、本地链接和调用元数据。
对实际 CLI 产物执行文档中的发现与预演示例。
业务操作只在已授权的隔离夹具中验证。
通过实际动作和结果，检查适用的异步完成、并发变化与未知结果。
独立正向测试有价值且已获授权时，提供真实请求、技能和最少原始材料。
不要向测试者提供预期答案或已有结论。
记录技能哈希、CLI 产物、实际结果和限制。静态检查不证明决策正确。

来源：GWS 0.22.5，提交 `a3768d0e82ad83cca2da97724e46bea4ff0e6dbd`。更换版本时重新核对来源。

[shared]: https://github.com/googleworkspace/cli/blob/a3768d0e82ad83cca2da97724e46bea4ff0e6dbd/skills/gws-shared/SKILL.md
[service]: https://github.com/googleworkspace/cli/blob/a3768d0e82ad83cca2da97724e46bea4ff0e6dbd/skills/gws-drive/SKILL.md
[helper]: https://github.com/googleworkspace/cli/blob/a3768d0e82ad83cca2da97724e46bea4ff0e6dbd/skills/gws-docs-write/SKILL.md
[recipe]: https://github.com/googleworkspace/cli/blob/a3768d0e82ad83cca2da97724e46bea4ff0e6dbd/skills/recipe-share-doc-and-notify/SKILL.md
[persona]: https://github.com/googleworkspace/cli/blob/a3768d0e82ad83cca2da97724e46bea4ff0e6dbd/skills/persona-content-creator/SKILL.md
