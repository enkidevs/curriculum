---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A plan lets you catch a wrong approach before a diff exists, when correcting it is cheapest.
    requiredConcepts:
      - Catches a wrong approach before code is written.
    acceptedAnswers:
      - You can correct the approach before it writes code.
      - Fixing a plan costs less than reviewing a bad diff.
      - It shows scope decisions early, like what moves into the job.
    hints:
      - What does reviewing a wrong diff cost?
      - When is redirecting it cheapest?
    tooVagueExamples:
      - It's more organized.
      - Better quality.
    incorrectExamples:
      - The plan can go in the PR description.
      - The assistant can't edit files without a list.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Implementation Plans

---
## Content

When an assistant is about to change several files, you can ask for its plan first. A wrong approach is cheapest to fix before there's a diff to review.

Say you've asked it to pull retry scheduling out of a webhook delivery worker:

```plain-text
Extract retry scheduling from the delivery worker without changing
behavior. Do not change the public job payload or add a dependency.
```

Before asking for a diff, ask for a short list of steps and the files they'll touch.

Here's the plan that comes back:

```plain-text
1. Move the 1/5/30 minute delays into scheduling/retryPolicy.js.
2. Have the worker call retryPolicy.nextAttemptMinutes(attempt).
3. Leave the 4xx retry decision in the worker.
Files: workers/delivery.js, scheduling/retryPolicy.js, and two tests.
```

Step 3 keeps the rule that skips retries on 4xx errors in the worker. That shows a choice your request left open: does "retry scheduling" include deciding whether to retry, or only how long to wait?

**Settle choices like that now, then approve or correct the plan before four files change.**

---
## Practice

Your assistant will move email sending into a background job across several files. Why ask for its plan before any code?

???

- Correcting a wrong approach is cheaper than reviewing a full diff.

---
## Revision

Before a multi-file refactor, ask your assistant for its steps and ??? so you can correct the approach early.

- intended file scope
- confidence per step
- a time estimate
- preferred naming style
