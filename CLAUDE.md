# myoffice-skills

Office-focused, bilingual Agent Skills monorepo.

## Repository rules

- Keep install payloads under `skills/en/<name>/` and `skills/cn/<name>-cn/`; keep QA under the matching `qa/` path.
- Update each English/Chinese pair, QA, catalog, skill pages, and marketplace grouping together.
- Run `./tools/validate-all.sh` before declaring a skill change complete.
- Keep generated workspaces, local installs, credentials, and gate reports untracked.
- Do not commit unless explicitly requested.
