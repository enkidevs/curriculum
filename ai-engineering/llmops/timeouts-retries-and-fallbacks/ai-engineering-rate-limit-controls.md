---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Per-server limits don't protect shared capacity. A limit across all servers does, and retry backoff is a strong extra.
    requiredConcepts:
      - A limit shared across all servers, such as a global concurrency cap or bounded queue.
    acceptedAnswers:
      - A global cap on in-flight calls for all servers.
      - One shared concurrency limit plus a bounded queue.
      - Admission control across the whole job, with retry backoff.
    hints:
      - Is each server's own limit enough?
      - What limit covers all servers together?
    tooVagueExamples:
      - Slow things down.
      - Handle errors better.
    incorrectExamples:
      - Retry rate-limited calls right away.
      - Raise each call's timeout so fewer fail.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Rate-Limit Controls

---
## Content

On a busy Friday, a food-delivery app's support chat retried every rate-limited call at once, and failures climbed from 20% to 60%.

**Rate-limit controls keep your model calls under the provider's cap, so retries don't turn a busy hour into an outage.**

Three controls do it:

- **Backoff:** each retry waits longer than the last, plus a random delay.
- **Shared concurrency limit:** one cap, across all servers, on calls that are sent and still waiting for a reply.
- **Queue:** extra requests wait, and ones that would miss their deadline get the fallback.

Here's the same Friday with all three in place:

```plain-text
19:02  chat traffic reaches 3x normal
19:03  calls over the shared limit wait in the queue
19:03  2% of calls get rate-limit errors; retries spread out over 1 to 8 s
19:05  chats about to miss their deadline get the fallback
```

Failures stay near 2%. The queue holds calls back before they reach the cap, and the random delay keeps calls that failed together from retrying together.

> ‼️ A common mistake is giving each server its own limit. The provider counts your whole account, so ten servers each under their own limit can still go over it together.

---
## Practice

Your 30 servers each respect their own rate limit, yet together they hit the provider's cap. What control is missing?

???

- One concurrency cap shared across all servers.

---
## Revision

Retries that wait longer after each failure, so they spread out over time, use ???.

- backoff
- queuing
- caching
- batching
