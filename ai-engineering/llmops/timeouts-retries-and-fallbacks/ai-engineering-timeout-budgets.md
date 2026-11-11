---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Retries spend from the same end-to-end deadline, so a second full attempt overruns it.
    requiredConcepts:
      - The retry pushes the total past the 5-second deadline.
    acceptedAnswers:
      - 3 plus 3 is 6 seconds, past the deadline.
      - The retry doesn't get a fresh budget, so it blows the deadline.
      - No time is left for the retry, validation, or a fallback.
    hints:
      - How long can the whole request take?
      - Does the retry get its own fresh time?
    tooVagueExamples:
      - It's too slow.
      - The timeout is wrong.
    incorrectExamples:
      - Nothing, since each attempt stays under 3 seconds.
      - The retry needs a longer 5-second timeout.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Timeout Budgets

---
## Content

A customer will wait only so long for an answer. A timeout budget splits that time across the steps of a request and keeps some back for a fallback.

Say your food-delivery app's support chat should answer within 6 seconds. Here's how that time is split:

| Step | Budget |
|---|---|
| Order lookup | 0.5 s |
| Help article search | 0.5 s |
| Model call | 4.0 s |
| Fallback reserve | 1.0 s |

The model call's timeout is 4 seconds to match.

Here's a request where the model is slow:

```plain-text
0.4 s  order lookup done
0.9 s  help article search done
4.9 s  model call times out
5.1 s  fallback shown: live order status and a button to reach support staff
```

**The customer gets an answer at 5.1 seconds, inside the deadline, because the last second was kept back for it.**

A retry spends from the same 6 seconds. Retrying at 4.9 seconds instead gives this:

```plain-text
4.9 s  model call times out, retry starts
8.9 s  retry times out, nothing shown yet
```

A second 4-second call can't fit in the 1.1 seconds left, so at 8.9 seconds the customer still has nothing.

---
## Practice

Your endpoint's deadline is 5 seconds. The provider call times out at 3 seconds and retries once. What goes wrong?

???

- The retry overruns the 5-second deadline; retries share one budget.

---
## Revision

A chat request has a 6-second deadline. Setting the model call's timeout to 6 seconds leaves ??? for a fallback.

- no time
- one second
- half the budget
- a retry's worth
