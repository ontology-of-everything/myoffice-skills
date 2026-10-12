# 面向智能体的 CLI 工程

手动调用 `$agent-dx-cli-cn`（英文 `$agent-dx-cli`），指导 CLI 开发、审查或重构。
按可预测性、纵深防御和上下文效率检查 CLI，以实际证据评分。
十个维度各含两项检查，每项 0–5 分，总分 100。评分由本技能定义。

- [中文技能](../../../skills/cn/agent-dx-cli-cn/SKILL.md) · [英文技能](../../../skills/en/agent-dx-cli/SKILL.md)
- [GWS 实践](../../../skills/cn/agent-dx-cli-cn/references/gws.md)
- 版本：0.1.2；总分至少 90，校验和认证各至少 9，严重安全问题阻断验收。
- Codex `allow_implicit_invocation: false`；不自动触发。
- 验证：`./qa/cn/agent-dx-cli-cn/validate.sh`；行为场景需另行执行，不能将静态检查等同实测。

主技能包含流程、十维检查、安全正反例和评分方法。
安全验证覆盖幂等、正文冲突、重放窗口、未知结果、预演、秘密保护、异步完成和契约变化。
GWS 实践按需加载，提供命令、实现对应关系和验证动作。固定参考版本放在文末。

审查请求只授权审查。事实和授权足够时继续执行。

中英文 0.1.2 均已在本机 Codex 安装。
ClawHub 已发布[英文版 0.1.2](https://clawhub.ai/agenticweb4/agent-dx-cli)，三个文件的远端哈希与源码一致，扫描结果为 clean。中文版保留源码。
