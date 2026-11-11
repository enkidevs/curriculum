---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Verify a plan's assumptions against the code before approving it.
    requiredConcepts:
      - Checks where formatDate() is used (its usage or callers).
    acceptedAnswers:
      - Find every reference to formatDate().
      - Grep the repo for formatDate.
      - Check whether anything besides billing calls it.
      - Check its usage.
      - Check its usage yourself.
      - Check the usage again.
      - Check the codebase for its usage.
      - See where else it's used.
      - Look up all its callers.
    hints:
      - How do you test that assumption?
      - What breaks if it's wrong?
    tooVagueExamples:
      - Verify it.
      - Review the plan.
      - Check the codebase yourself.
    incorrectExamples:
      - Ask the assistant how confident it is.
      - Approve it; the plan sounds reasonable.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Ask a plan to state its assumptions and unknowns so you can verify them before editing.
    requiredConcepts:
      - Its assumptions or open unknowns.
    acceptedAnswers:
      - What it's assuming about current behavior, and how to verify it.
      - Anything it hasn't confirmed yet and the files to inspect.
      - The open questions it needs to check before editing.
    hints:
      - What might it be taking for granted?
      - What hasn't it confirmed yet?
    tooVagueExamples:
      - More detail.
      - Risks.
    incorrectExamples:
      - A confidence rating for each step.
      - The full diff so you can review it.
---

# Assumptions And Unknowns

---
## Content

A refactor plan can promise to keep behavior the same while relying on things nobody checked. Ask the assistant to write those down:

```plain-text
Before editing, list your assumptions about current retry behavior and
the files or references needed to check them.
```

Here's what it lists for the retry worker:

```plain-text
Assumption: nothing outside the worker calls scheduleRetry().
Check: search all references to scheduleRetry().
Unknown: where the idempotency key is assigned.
Check: inspect the worker's caller and retry tests.
```

Each line is now something you can check:

- **The assumption** takes one search. If anything outside the worker calls `scheduleRetry()`, moving it could break that caller.
- **The unknown** is where the idempotency key[1] gets assigned. The worker's caller and retry tests will show it.

**Check the assumptions and unknowns before you approve the plan.** A wrong one that nobody wrote down ships inside the diff.

---
## Practice

Your assistant's plan to change `formatDate()` assumes only the billing page uses it. What do you check before approving?

???

- Search the codebase for every caller of `formatDate()`.

---
## Revision

An assistant's refactor plan promises unchanged behavior. What should you ask it to list before editing?

???

- Its assumptions and unknowns, and how to check each.

---
## Footnotes

[1: Idempotency Key]
A value reused across delivery attempts so the receiver can recognize a retry instead of processing it as a new event.
