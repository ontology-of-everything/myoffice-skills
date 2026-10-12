# Patrick Winston's Talk Principles

Distilled from Winston's MIT How to Speak lectures. Apply these when building outlines, designing openings, checking structure, and reviewing the final deliverable.

These are not stylistic preferences — they are rules with documented reasoning. Apply them directly unless the user's context gives a specific reason to deviate.

---

## 1. The opening

**Never open with:**
- A joke — the audience isn't calibrated to you yet. What lands in a bar doesn't land in a conference room at 9am.
- "Thank you for having me" — it signals you're grateful to be there rather than certain you have something worth their time.
- An apology — for jet lag, nerves, being under-prepared, slides not being finished. Say none of these things.

**Always open with an empowerment promise.**
Tell the audience exactly what they will be able to do by the end that they couldn't do at the start. Not "I'll talk about X" — that describes what the speaker will do. The promise is about what the audience will gain.

- Weak: "Today I'll be talking about observability in distributed systems."
- Strong: "By the end of this, you'll know exactly which three signals to instrument first — and you'll be able to make that call in under an hour."

The first 60 seconds earns the next 60 minutes. If the audience doesn't know why they should stay, they'll leave mentally even if they stay physically.

**Cut everything from the opening that doesn't serve the promise.** Housekeeping, self-introduction that isn't relevant to the talk, scene-setting that the audience doesn't need to understand the first point — all of it goes.

---

## 2. The close

**Never end with:**
- "Thank you" — it's the speaker thanking the audience for listening, which frames the talk as a favour they received rather than something valuable they gave
- "Questions?" — it hands the stage over on a passive note and leaves the last thing the audience sees as a single word on a blank slide

**End with a contributions slide.**
The final slide should show — specifically — what the audience now has that they didn't have when they walked in. This slide stays up during Q&A. When questions are done, the last thing the audience sees is still your contribution, not a logo or a "thank you" screen.

The opening and close should mirror each other. The empowerment promise you made at the start should be visibly fulfilled by the contributions at the end.

---

## 3. Making ideas stick — the Winston Star

Every talk needs one idea that the audience will remember a week later. Design it deliberately using these five elements:

**Symbol** — a visual or physical object that represents the core idea instantly. Must be concrete and specific, not abstract. A diagram of a system is not a symbol. A physical object, a screenshot of a real incident, a single striking number — these are symbols.

**Slogan** — a short phrase that becomes the handle people use to refer to your idea. Must be repeatable in conversation without explanation. If someone has to add "it means..." after saying it, it's not a slogan yet.

**Surprise** — the counterintuitive thing. The assumption your audience holds that your talk challenges. Identify it explicitly and name it. Without surprise, the audience has no reason to update their mental model.

**Salient idea** — the one thing. Not two things, not three. One idea that sits above everything else in the talk. If pressed at the bar afterwards, this is what the speaker should be able to say was the point.

**Story** — how it works, why it matters, and the journey that got here. Personal enough to be specific, broad enough to resonate. The story is how the salient idea becomes memorable rather than just understood.

When building an outline, identify where each of these five elements lands. A talk missing two or more of them will be harder to remember and less likely to generate the conversations in the hallway that spread the idea.

---

## 4. Structure for persuasion — vision, proof, contributions

For talks that need to convince (new approach, new tool, case for change, argument):

**Vision** — the problem someone cares about and a new way of approaching it. Must be established within the first five minutes. If the audience doesn't have the vision by minute five, every subsequent point floats without a frame.

**Proof of work** — specific steps taken that prove the speaker has done something real. Not vague accomplishments ("we improved performance") — specific, concrete actions ("we ran 12 load tests over six weeks and reduced p99 latency from 800ms to 140ms by eliminating a synchronous cache write"). Proof is earned through specificity.

**Every minute must advance either vision or proof.** If a section does neither, it's the first thing to cut.

**Contributions close** — the final statement of what the speaker contributed. Mirrors the opening promise. Stays on screen during Q&A.

---

## 5. Props and teaching

For any concept that is genuinely complex — where the audience's confusion is the main obstacle to understanding — design a prop.

A prop is physical and demonstrable. Not a slide, not a diagram, not an animation. Something the audience can hold in their imagination as a concrete object or sequence.

If no physical prop is available, design the closest verbal equivalent: a vivid scenario, a specific analogy drawn from something the audience handles daily, a simple model they can manipulate mentally.

**The story around the prop must have tension before resolution.** Present the confusion first. Let the audience feel why the concept is hard before showing how the prop dissolves it. A prop that appears before the problem is established has no context to resolve.

**A demonstration must work even if it fails.** Before any live demo, the speaker should know what they'll say if it breaks. The failure mode should itself be instructive — "this error is actually showing us exactly the problem I was describing." If a demo's failure would teach nothing, it's not yet designed well enough to run live.

---

## 6. Slide principles

Slides are condiments. They support the talk. They are not the talk.

**Slide crimes to flag in any outline:**
- Too many slides (for a 30-min talk: more than 20 slides is suspicious, more than 30 is a crime)
- Too many words per slide — slides are not teleprompters
- Font under 40pt — if the back row can't read it, it doesn't belong on the slide
- Reading slides aloud — the audience can read; the speaker should be adding something they can't get from the slide alone
- Laser pointer usage — it signals the speaker doesn't know where the audience's attention is
- No white space — density signals the speaker is covering material, not communicating
- Background clutter and logos — every element that isn't content is noise
- Collaborators list as final slide — a maintenance task dressed up as acknowledgment
- "Thank you" or "Questions?" as the final slide — see the close section above

**Flag these when they're implied by the outline.** If a section has six sub-points, note that this is likely to become a dense slide. If the talk has 15 sections in 30 minutes, flag the slide count.
