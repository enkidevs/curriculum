---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Uncovered behavior that must stay true needs evidence, usually a focused test, before refactoring.
    requiredConcepts:
      - Get evidence for the column order first, usually a test run before and after.
    acceptedAnswers:
      - Write a column-order test and run it on both versions.
      - Cover the column order with a test first.
      - Add a check for it, or verify the output by hand if a test isn't practical.
    hints:
      - What would prove the order stayed the same?
      - Does a green suite cover it?
    tooVagueExamples:
      - Be careful.
      - Check it.
    incorrectExamples:
      - Nothing; the suite is green.
      - Tell the agent to keep the order the same.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Tests prove only what they assert.
    requiredConcepts:
      - Only what the assertions check.
    acceptedAnswers:
      - That the asserted behaviors work, nothing more.
      - Just the checked behaviors.
      - Only what the tests explicitly verify.
    hints:
      - What about untested behavior?
      - What do tests assert?
    tooVagueExamples:
      - Things work.
      - It's safe.
    incorrectExamples:
      - All current behavior.
      - That refactors can't regress.
---

# Behavioral Invariants

---
## Content

Before you hand a refactor to an assistant, list what must stay true and which test covers each item. These are often called invariants.

**Anything without a test can break while the whole suite stays green.**

Here's that list for the webhook worker's retry logic:

| Invariant | Existing test |
|---|---|
| retry after 1, 5, and 30 minutes | yes |
| do not retry ordinary 4xx | 404 only |
| retry 408 and 429 | no |
| reuse the idempotency key | no |

The tests cover the schedule and one ordinary 4xx case. Nothing checks that 408 and 429 still retry, or that retries reuse the idempotency key[1].

> 💡 Write focused tests for the uncovered items before the refactor, and run them against both the old and new code. If a test isn't practical, note the gap and check that behavior another way.

---
## Practice

An agent will refactor `exportCsv()`. A partner depends on its column order, which no test checks. What do you do first?

???

- Add a test that pins the column order, then refactor.

---
## Revision

Your test suite is green before a refactor. What does that prove?

???

- Only the behavior its assertions actually check.

---
## Footnotes

[1: Idempotency Key]
A value attached to a delivery so the receiver can tell a retry from a new event. Retries reuse the same key, which is what stops one webhook being processed twice.
