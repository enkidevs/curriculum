---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A defensible recommendation states the rejected option's strongest benefit fairly.
    requiredConcepts:
      - A real benefit of a separate service, such as independent deploys, scaling, or ownership.
    acceptedAnswers:
      - Billing could ship without redeploying the whole app.
      - It could scale on its own.
      - Clearer ownership and isolation for billing code.
    hints:
      - What would its supporters say?
      - What does separating it buy you?
    tooVagueExamples:
      - It's cleaner.
      - It's more modern.
    incorrectExamples:
      - It's quicker to build before the deadline.
      - It has no real benefit here.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A defensible recommendation ties the choice to the current task's constraints, not a general rule.
    requiredConcepts:
      - A reason tied to the current situation for choosing the patch.
    acceptedAnswers:
      - Why the patch wins right now, given current constraints.
      - The specific reason the rewrite loses this time.
      - What about this task makes the patch the better choice.
    hints:
      - Does it say why the patch wins?
      - What about this task favors the patch?
    tooVagueExamples:
      - More detail.
      - A stronger argument.
    incorrectExamples:
      - A list of the parser's edge cases.
      - A note that smaller changes are always safer.
---

# Decision Rationale

---
## Content

A recommendation you send around is one you'll have to defend when people push back, even if an assistant helped with the wording. A generic reason falls apart at the first follow-up question.

Say you're choosing how much of a webhook worker's retry logic to extract. Option A moves only the delay selection. Option B centralizes all the retry rules.

"Option A is safer" is a conclusion. Nobody can check it against anything.

Here's a version tied to this task:

```plain-text
Choose A because the brief requires a behavior-preserving extraction.
It moves delay selection while leaving the 4xx rules and idempotency
handling in place, so the current behavior checks remain useful.
```

It points to the brief, and the brief requires the behavior to stay the same.

Then give the strongest case for B: one module would own every retry decision. That's a real benefit, and B would also move the eligibility rules and rewrite their tests.

**Recommend A because reviewability is the constraint right now.** That's a reason about this task, and it leaves B open for later.

> 💡 Test your reason by swapping in a different task. If it still fits, it isn't tied to this one.

---
## Practice

You recommend keeping billing in the main app, not a separate service. What's the strongest case for the rejected option?

???

- Billing could be deployed and changed on its own.

---
## Revision

Your note says: "Rewriting the parser would fix its edge cases, but I recommend patching it." What does the recommendation lack?

???

- A task-specific reason the patch beats the rewrite right now.
