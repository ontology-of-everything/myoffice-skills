# myoffice-skills

Office-focused, bilingual Agent Skills monorepo.

## Repository rules

- Keep install payloads under `skills/en/<name>/` and `skills/cn/<name>-cn/`; keep QA under the matching `qa/` path.
- Update each English/Chinese pair, QA, catalog, Chinese skill pages, and marketplace grouping together.
- `presentation-making-cn` is Chinese-only by user request; preserve its standalone catalog entry and explicit-only invocation.
- Run `./tools/validate-all.sh` before declaring a skill change complete.
- Keep generated workspaces, local installs, credentials, and gate reports untracked.
- Do not commit unless explicitly requested.
