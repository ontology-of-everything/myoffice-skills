# Changelog

## 0.3.0 - 2026-10-14

### Features

- Add bilingual SKILL+CLI authoring guidance with pinned GWS examples and task-specific reference loading.
- Define companion skills as evidence-grounded decision aids; keep executable guarantees in the CLI.
- Add guidance to remove stale syntax, misleading rules, and context noise, plus a no-skill comparison scenario.

### Validation

- Add a harmful-companion-skill evaluation scenario; behavioral comparison results are not claimed.

## 0.2.0 - 2026-10-12

### Migration

- Remove the legacy `html-slides` and `html-slides-cn` payloads, assets, and QA. Existing users must switch to `presentation-making-cn`; it supports HTML and Markdown delivery.

### Features and fixes

- Add Agent DX CLI 0.1.2 with practical GWS commands, integrated safety examples, and evidence scoring.
- Add paired reading-note and Architecture Review Board skills, plus Chinese-only presentation-making and brand UI design skills.
- Align the catalog, marketplace groups, localized documentation, and validation for paired and Chinese-only skills.
- Add presentation design research and source references; correct Markdown formatting in the ARB concept note.

## 0.1.0 — 2026-09-16

- Created the office-skills repository structure with localization, QA, and CI gates.
- Migrated `html-slides`, `html-slides-cn`, `claude-md`, and `claude-md-cn` from `concept-skills`.
