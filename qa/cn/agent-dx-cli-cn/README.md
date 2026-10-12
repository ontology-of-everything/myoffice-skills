# agent-dx-cli-cn QA

Run `./qa/cn/agent-dx-cli-cn/validate.sh`. Static checks cover packaging, links, metadata, and explicit Codex invocation.
Behavioral cases in `evals/evals.json` need independent execution; passing static QA does not mean those cases passed.
Keep generated evidence in the ignored `agent-dx-cli-workspace/` directory.

每个维度的两条检查是独立验收标准，不是 A/B 实验或 GWS 评分标准。检查内容与权重保持一致。

0.1.2 将安全验证并入主技能的正反例。按主技能验证幂等、冲突、重放窗口、预演、秘密保护和完成边界。
对齐 API/GWS 时，按 references/gws.md 的命令与验证动作检查项目差异。
