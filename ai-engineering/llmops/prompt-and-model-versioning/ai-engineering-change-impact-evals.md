---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The full eval set runs before the change ships, because a narrow edit can break answers far from the part it targets.
    requiredConcepts:
      - A narrow change can break answers outside the area it was aimed at.
    acceptedAnswers:
      - The edit could break non-billing answers too.
      - Changes can break things far from where you made them.
      - Other kinds of question might get worse without anyone noticing.
    hints:
      - Does the prompt only shape billing answers?
      - Where else could the new wording show up?
    tooVagueExamples:
      - To be safe.
      - More coverage.
    incorrectExamples:
      - Billing cases alone are enough for a billing edit.
      - The full set only matters for model changes.
      - Because there are billing-only eval sets.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Change-Impact Evals

---
## Content

Before a change ships, you run your full eval set, the fixed test cases every version is scored on. You also add cases aimed at what that change is most likely to break. Together, that's a change-impact eval.

Say the support assistant's queued change is a prompt edit: "Keep replies to three sentences or fewer."

A sentence cap is most likely to cut a step from answers that have several, so the extra cases are step-by-step questions, like setting up roaming.

Here's one that came back:

```plain-text
To set up EU roaming:
1. Open Settings > Plan > Roaming.
2. Turn on EU roaming.
3. Pick a daily pass.
```

The help article has a fourth step, replying YES to the confirmation text, and the shorter reply dropped it. A customer following these steps would never get the pass.

**The full eval set still runs too, because every reply comes from the same prompt.** Even an edit aimed at one kind of answer can shift the others.

---
## Practice

Your prompt edit is aimed only at billing answers. Why does the full eval set still run?

???

- A narrow edit can break answers outside billing too.

---
## Revision

A prompt edit caps replies at three sentences. Besides the full eval set, add cases whose answers need ???.

- several steps
- one fact
- a yes or no
- a single number
