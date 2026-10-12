# winston-presentation-coach
 
> An installable Claude Skill that turns any topic and audience into a Winston-grade presentation, applying Patrick Winston's MIT "如何演讲" framework end-to-end.
 
![Skill](https://img.shields.io/badge/Claude-Skill-orange) ![Format](https://img.shields.io/badge/format-.skill-blue) ![License](https://img.shields.io/badge/license-MIT-green)
 
## Repo description (one-liner for GitHub's "About" field)
 
`Patrick Winston's MIT "如何演讲" framework, packaged as an installable Claude Skill. Combines Empowerment Promise, Winston Star, Vision/Proof/Contributions, and the 10 幻灯片 Crimes audit into one routed workflow.`
 
## What this is
 
A single Claude Skill that fuses four of Patrick Winston's most-cited presentation frameworks into one coherent coaching workflow:
 
1. **The 开场.** Empowerment Promise plus the first 60 seconds.
2. **记忆点.** The Winston Star: Symbol, Slogan, Surprise, Salient idea, Story.
3. **结构.** Vision, Proof of Work, Contributions (the job-演讲 skeleton, generalised to any persuasive 演讲).
4. **幻灯片.** The 10 幻灯片 Crimes audit, with a forced redesign of the final slide.
此技能 detects which of these four frameworks you actually need from natural language, loads only that framework's reference file, runs a focused intake, and produces a deliverable in a fixed output format. There is also a fifth mode (Full 构建) that runs all four in the correct order: 结构, then 记忆点, then 开场, then 幻灯片.
 
## Why a Skill, not just a prompt
 
Patrick Winston's framework is large enough that a single mega-prompt either bloats the context window or compresses the rules to the point of losing fidelity. 此技能 uses progressive disclosure:
 
* `SKILL.md` (about 100 lines) is always loaded. It contains the routing logic and universal rules.
* The five reference files load on demand based on the user's intent.
* The intake question bank is shared across all four frameworks so phrasing stays consistent.
Net result: lower token usage on long conversations, no loss of detail in any individual framework, and clean room to add a sixth framework later without touching the entry point.
 
## Repo layout
 
```
winston-presentation-coach/
├── SKILL.md                              # Router, universal rules, decision tree
├── references/
│   ├── 01-opening.md                     # Empowerment Promise + first 60 seconds
│   ├── 02-memorability.md                # Winston Star
│   ├── 03-structure.md                   # Vision / Proof of Work / Contributions
│   ├── 04-slides.md                      # 10 Slide Crimes audit
│   └── 05-full-build.md                  # End-to-end pipeline
└── assets/
    └── intake-questions.md               # Shared question bank
```
 
## Installation
 
### As a Claude Skill (recommended)
 
1. Download `winston-presentation-coach.skill` from the [latest release](#).
2. Open [claude.ai](https://claude.ai) on the web (mobile does not currently support skill upload).
3. Go to **Settings** > **Capabilities** > **Skills**.
4. Click **Upload skill** and select the `.skill` file.
5. Toggle it on.
Available on Claude Pro, Max, Team, and Enterprise plans.
 
### As a paste-ready prompt (any LLM)
 
如果 you cannot install the skill, use `winston-master-prompt.md` instead. Copy the prompt block and paste it as the first message in a new chat with Claude, ChatGPT, Gemini, or any other LLM that handles XML-tagged prompts.
 
## Usage
 
Once installed, the skill triggers automatically on natural-language requests. You do not need to mention Winston, MIT, or the skill name.
 
### 示例 that trigger Mode A (开场)
 
* "How 应该 I open my 演讲 on observability?"
* "Write me a hook for a 20-minute conference 演讲."
* "首先 slide is weak, fix it."
### 示例 that trigger Mode B (记忆点)
 
* "Help me make this idea stick."
* "I need a tagline and a visual handle for our new architecture."
* "What is the one thing they 应该 remember six months from now?"
### 示例 that trigger Mode C (结构)
 
* "结构 my pitch to the CTO."
* "I have a 5-minute slot to convince the board."
* "构建 me a 演讲 skeleton."
### 示例 that trigger Mode D (幻灯片)
 
* "Audit my deck."
* "I have 47 slides for a 30-minute 演讲, fix it."
* "What is wrong with this slide?"
### 示例 that trigger Mode E (Full 构建)
 
* "构建 me a complete presentation from scratch."
* "Apply the entire Winston framework to my 演讲."
* "I have a topic and an audience, take me to a finished deliverable."
## The non-negotiable rules
 
These come from Winston's actual lecture and override stylistic preferences:
 
* Never open with a joke. The audience is still settling.
* Never open with "thank you for having me."
* Never close with a "Thank You" or "Questions?" slide. The final slide is always a Contributions slide, and it stays up during Q&A.
* The empowerment promise 必须 be specific, outcome-driven, and time-anchored.
* 幻灯片 are condiments, not the main event.
* Vision 必须 be established within the first 5 minutes.
* Every minute 必须 advance Vision or Proof, nothing else.
* Font minimum 40pt. No exceptions.
* Cycle the core idea 3 to 5 times. Roughly 20 percent of any audience is mentally elsewhere at any moment, so a single statement of the idea is statistically insufficient.
如果 your request would violate any of these rules, the skill flags the violation, explains Winston's reasoning, and proposes a compliant alternative rather than silently overriding you.
 
## Output formats
 
Each mode produces a fixed output structure. No improvisation.
 
| Mode | Sections delivered |
|------|--------------------|
| A | Empowerment Promise, 首先 60 Seconds (script), What to Cut, 表达 Notes |
| B | Symbol, Slogan, Surprise, Salient Idea, Story, Winston Star 摘要 card |
| C | Vision Statement, Proof of Work, 5-Minute 开场, Contributions Close, Full 演讲 结构 (time-coded) |
| D | 幻灯片-by-幻灯片 Audit, Global Findings, Final 幻灯片 Redesign, Stays/Goes/Changes brief |
| E | Vision and Contributions, Winston Star, Empowerment Promise and 首先 60 Seconds, Full 演讲 结构, 幻灯片 Plan or Audit, Coherence Audit, Cut List |
 
## What this skill adds beyond the four source prompts
 
此技能 is built on four existing Winston framework prompts, but it adds:
 
* **A routing layer** in `SKILL.md` that detects intent and loads only the relevant framework, instead of running all four every time.
* **A correct-order pipeline** for Mode E (结构, then 记忆点, then 开场, then 幻灯片). Running them out of order produces incoherent output, which the source prompts did not address.
* **A coherence audit** at the end of full builds that verifies the opening promise mirrors the closing contributions, the Slogan survives without the Symbol, and so on.
* **Additional Winston principles** verified against the MIT OCW transcript: cycling the core idea, verbal punctuation for transitions, and the one-language-processor reasoning behind the slide rules.
* **A standardised intake bank** so the four frameworks share consistent question phrasing instead of re-asking the same things in different words.
* **Worked mini-examples** in each reference file so the model has concrete pattern-matching targets, not just abstract rules.
## Source material
 
* Patrick Winston, *如何演讲*, MIT OpenCourseWare ([transcript and video](https://ocw.mit.edu/courses/res-tll-005-how-to-speak-january-iap-2018/pages/how-to-speak/)).
* Memorial page from MIT EECS for Patrick Henry Winston (1943 to 2019).
The four framework prompts that seeded this skill (开场, 幻灯片 Crimes, Star, 结构) are credited where applicable.
 
## Contributing
 
Issues and pull requests welcome. Three things to know before contributing:
 
1. **Do not break the rule list.** The non-negotiable rules section is the spine of the skill. Adding a rule is fine; relaxing one needs a citation from Winston's source material.
2. **Keep `SKILL.md` under 200 lines.** It is always loaded, so it pays the highest token cost. New content goes in a reference file, not the entry point.
3. **Each reference file 应该 stand alone.** A user in Mode B 应该 never need to read Mode C's reference to understand what the skill is asking for.
## License
 
MIT. See `LICENSE`.
 
## Credits
 
框架: Patrick Henry Winston, MIT.
Skill packaging and routing layer: built using Anthropic's Skill format.
