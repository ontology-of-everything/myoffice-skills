# agent-dx-cli QA

Run `./qa/en/agent-dx-cli/validate.sh`. Static checks cover packaging, links, metadata, and explicit Codex invocation.
Behavioral cases in `evals/evals.json` need independent execution; passing static QA does not mean those cases passed.
Keep generated evidence in the ignored `agent-dx-cli-workspace/` directory.

The two checks in each dimension are independent criteria. They are not an A/B experiment or a GWS scoring standard. Criteria and weights remain unchanged.

Version 0.1.2 merges safety checks into the main skill's examples. Use them to verify idempotency, conflicts, replay windows, previews, secrets, and completion.
For API/GWS alignment, use the commands and checks in references/gws.md to verify project differences.
