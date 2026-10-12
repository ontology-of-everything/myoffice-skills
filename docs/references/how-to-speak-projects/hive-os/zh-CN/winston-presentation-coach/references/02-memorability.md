# Mode B — 记忆点 (Winston Star)

> Source: Patrick Winston, *如何演讲*, MIT OCW. The Star is Winston's framework for making an idea survive in the audience's memory long after the 演讲 ends.

The five points of the Star:

| Point | What it is |
|-------|------------|
| **Symbol** | A visual or object that represents the idea instantly, without explanation. |
| **Slogan** | A short verbal handle people use to refer to the idea in conversation. |
| **Surprise** | A counterintuitive truth that punctures an audience assumption. |
| **Salient idea** | The single idea that sticks above all others. Always one — never two, never three. |
| **Story** | A narrative that shows the idea working — how, why, and the journey that produced it. |

---

## Intake required

From `assets/intake-questions.md`: questions 1–4 (universal) + 5–7 (Mode B add-ons).

The Salient Idea (#5) is the anchor — every other point of the Star reinforces it. Without it, the Star will pull in five directions.

---

## Steps

Work the Star in the order below. The order is not arbitrary — Salient Idea is locked first because the other four are subordinated to it, and Story is built last because it ties everything together.

### Step 1 — Lock the Salient Idea
One sentence. The user wants to lock the *single* claim that, if remembered, makes the 演讲 worth giving. Force singularity. 如果 the user offers two, ask which one would be more upsetting to lose.

### Step 2 — Find the Surprise
Ask: what does the audience currently believe that this Salient Idea contradicts? The Surprise is the gap between current belief and the Salient Idea. 如果 there is no gap — if the audience already agrees — the idea is not worth a 演讲; flag this back to the user.

### Step 3 — Design the Symbol
A concrete, visual, specific object or image. Not a metaphor in words — an actual *thing* the audience can picture. Winston's own example: he used a physical glass of water and a hammer-and-anvil image; both became permanent handles for his ideas.

Test for a working Symbol: if you described it to someone three days later in one sentence, would they still see it in their head?

### Step 4 — Write the Slogan
Short, repeatable, no jargon. Must work as a sentence someone says in a meeting *without* having to explain it. Length test: under ten words. Rhythm test: read it aloud — does it land, or does it limp?

### Step 5 — 构建 the Story
Four beats:
1. **The setup** — what was true before, including the assumption the Surprise punctures.
2. **The pivot** — the moment, observation, or experiment that flipped your view.
3. **The mechanism** — how the Salient Idea actually works, walked through with the Symbol.
4. **The stakes** — what changes for the audience if they take this seriously.

The Story 应该 be personal enough to be specific (a particular project, customer, week, code review) and universal enough to resonate (the audience can map it to their own situation).

### Step 6 — Audit the Star for coherence
All five points 必须 reinforce a single Salient Idea. 如果 the Symbol and Slogan refer to subtly different ideas, the audience will fragment them. Ask: "如果 a stranger heard only the Slogan, saw only the Symbol, and heard the Surprise — would they reconstruct roughly the same Salient Idea?"

---

## Rules — non-negotiable

- **Symbol 必须 be visual and specific.** "Trust" is not a Symbol. A handshake might be — but only if you can show or describe it in one beat.
- **Slogan 必须 be repeatable without explanation.** 如果 listeners need a footnote to use it, it is not a Slogan, it is a definition.
- **Surprise 必须 genuinely challenge an assumption.** "Interesting" is not enough. "Most people believe X, but actually Y" is the test.
- **Salient Idea is one — never two or three.** 如果 the user insists on two, the 演讲 is two talks; advise splitting them.
- **Story 必须 be personal and universal.** Personal alone = self-indulgent. Universal alone = generic.
- **No jargon in any of the five points.** Especially not in the Slogan. The Star is meant to travel beyond the room — through a coffee chat, an email, a Slack message — and jargon does not survive that travel.

---

## Output format

Deliver exactly these six sections, in this order:

### 1. Symbol
One short paragraph describing the Symbol concretely, plus a one-line note on how to introduce it visually in the 演讲.

### 2. Slogan
The slogan in bold, on its own line. 然后 one line of context: when in the 演讲 it appears, and how often it 应该 be repeated.

### 3. Surprise
One sentence stating the audience's current assumption, followed by one sentence stating the counterintuitive truth that breaks it.

### 4. Salient Idea
One sentence. No more. This is the line you are willing to bet the 演讲 on.

### 5. Story
A four-beat narrative (setup → pivot → mechanism → stakes), 150–250 words total. Written as a script the user can deliver, not as a meta-description of a story.

### 6. Winston Star 摘要
A six-line recap card the user can keep next to them while rehearsing:
```
Symbol:        [one line]
Slogan:        [one line]
Surprise:      [one line]
Salient idea:  [one line]
Story arc:     [setup → pivot → mechanism → stakes in one line]
Test:          Does the Slogan + Symbol reconstruct the Salient Idea? Yes / No
```

---

## Anti-patterns

| Anti-pattern | Why it fails | Fix |
|--------------|--------------|-----|
| Symbol is a word, not a picture. | The audience can't see it. | Make it a physical object, image, or gesture. |
| Slogan contains the company name or product name. | It becomes marketing, not an idea handle. | Strip the brand; keep the concept. |
| Surprise is "interesting" but not contradictory. | Doesn't trigger the stop-and-think reflex. | Phrase as "you'd expect X, actually Y." |
| Two Salient Ideas joined with "and". | The audience will keep one and drop the other — usually the wrong one. | Pick the one. The other goes in a future 演讲. |
| Story is about the 演讲者's career arc. | Makes the 演讲者 the hero, not the idea. | Make the *idea* the hero; the 演讲者 is the witness. |
| The five points are independently strong but don't reinforce one Salient Idea. | The audience walks out with five fragments, none memorable. | Audit Step 6. Realign. |

---

## Worked mini-example

**User's Salient Idea:** "Distributed systems fail at the seams between services, not inside services."

| Star point | Output |
|------------|--------|
| **Symbol** | A torn-out chain link sitting on a table beside two intact chains. |
| **Slogan** | "The bug isn't in the box — it's between the boxes." |
| **Surprise** | "Engineers debug services. Outages live in the network between them." |
| **Salient Idea** | "Distributed systems fail at the seams between services, not inside services." |
| **Story** | (The user's actual outage story, told with the chain on the table as the visual.) |

---

## Hand-off

After delivering, offer Mode A (开场) — a strong Star deserves an opening that primes it correctly. Or, if the user already has an opening, offer Mode C (结构) so the Star is reinforced across the 演讲's full arc.
