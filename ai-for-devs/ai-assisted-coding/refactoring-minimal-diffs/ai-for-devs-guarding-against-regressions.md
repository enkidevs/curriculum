---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    // Deliveries retry 1, 5, and 30 minutes after a failure.
    // null means stop retrying and send the job to the dead-letter queue.

    const RETRY_MINUTES = [1, 5, 30];

    // before the refactor, inline in src/workers/delivery.js
    function nextAttemptMinutes(attempt) {
      if (attempt > RETRY_MINUTES.length) return null;
      return RETRY_MINUTES[attempt - 1];
    }

    // after the refactor, in src/scheduling/retryPolicy.js
    const retryPolicy = {
      nextAttemptMinutes(attempt) {
        return RETRY_MINUTES[attempt - 1] ?? 30;
      },
    };

    // Compare them for every attempt number a job can reach:
---

# Regression Testing

---
## Content

> 👩‍💻 Your task is to: **run both retry policies at their boundary, expose the regression, and fix the refactored policy**.

Run `nextAttemptMinutes` and `retryPolicy.nextAttemptMinutes` for attempts 1 through 4. Print both results for each attempt.

The first three should match the documented waits. Attempt 4 checks what happens after every allowed retry has been used. Compare each result with the comment: `null` stops retrying, while a number schedules another attempt.

To solve this, try using:

- the nullish coalescing operator (`??`) and what it returns for a missing index
- the same inputs for both functions
- a loop over `[1, 2, 3, 4]`

Once you find the mismatch, change the refactor so it matches the original at the boundary. Then rerun your comparison.

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Attempts 1, 2, and 3 agree.

At attempt 4, `RETRY_MINUTES[3]` is `undefined`, so `??` returns its fallback.

The old fallback is `null`; the refactor's is `30`. Replace the new fallback with the old result.
