---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Review depth follows what breaks if the change is wrong, not who wrote it.
    requiredConcepts:
      - The refund-limit change.
      - Because of its impact if wrong, not authorship.
    acceptedAnswers:
      - Refund limits, since a bug there affects money.
      - "The refund change: higher risk, whoever wrote it."
      - The refund-limit PR, because errors there are costlier.
    hints:
      - What happens if each one is wrong?
      - Does authorship change the risk?
    tooVagueExamples:
      - The more important one.
      - The one that needs it.
    incorrectExamples:
      - The AI-generated fix, since nobody typed it.
      - Both equally, since authorship doesn't matter.
---

# Review Standards

---
## Content

Teams using assistants need to agree on how AI-generated changes get reviewed. If you judge a change by who wrote it, a risky human-written change can slip through while a generated rename gets combed over.

**Generated and human-written changes meet the same bar for correctness, evidence, and security.**

How deeply you review depends on what breaks if the change is wrong:

```plain-text
Generated rename in a test helper: focused review and tests.
Human-written session-expiry change: deeper auth and regression review.
```

- **The rename** touches only test code, so focused review and passing tests are enough.
- **The session-expiry change** can log users out early or keep sessions open too long, so it gets the deeper review.

Disclosure can point at a part nobody has checked. It doesn't make generated work worse, or human-written work trustworthy.

Written as a team norm:

```plain-text
Team norm: review depth follows risk and evidence, not who or what
typed the first draft.
```

> 💡 Whoever submits a change is accountable for meeting the bar, whoever or whatever wrote the first draft.

---
## Practice

An AI-assisted PR and a human-written PR change the same behavior with the same evidence. The review standard should be ???.

- the same for both
- stricter for AI
- lighter for humans
- set by author confidence

---
## Revision

Two PRs arrive: a human-written refund-limit change and an AI-generated README typo fix. Which gets the deeper review, and why?

???

- The refund-limit change, because a mistake there costs more.
