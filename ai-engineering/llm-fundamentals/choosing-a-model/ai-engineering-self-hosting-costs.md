---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A hosted API, because at low volume per-token billing costs less than GPUs billed every hour.
    requiredConcepts:
      - A hosted API, because volume is low, or because GPUs bill even when idle.
    acceptedAnswers:
      - Hosted. Low volume is cheaper per token.
      - A hosted API, since idle GPUs would cost more.
      - Hosted, since you only pay for what you use.
    hints:
      - What do GPUs cost when no requests come in?
      - How does a hosted API bill?
    tooVagueExamples:
      - The cheaper one.
      - Whatever's easier.
    incorrectExamples:
      - Your own GPUs, since self-hosting is always cheaper.
      - Your own GPUs, so you skip per-token fees.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The hosted bill grows with every call, while the servers cost the same until you need more of them.
    requiredConcepts:
      - Hosted cost grows with each call, or server cost stays fixed as calls grow.
    acceptedAnswers:
      - The hosted bill grows per call; the servers don't.
      - Servers cost the same per hour however many calls they handle.
      - At high volume, per-token fees add up past the GPU cost.
    hints:
      - What happens to the hosted bill when calls grow?
      - What happens to the server bill?
    tooVagueExamples:
      - It scales better.
      - Volume.
    incorrectExamples:
      - GPUs get cheaper the more you use them.
      - Open-weight models write shorter replies.

---

# Self-Hosting Costs

---
## Content

**A hosted API bills per token, so you pay only for what you use, while your own GPU servers cost the same every hour, busy or idle.** So which costs less depends on how many calls you make.

Here's one feature at 300 calls a day, with illustrative prices:

```plain-text
Hosted: 300 calls x $0.002    = $0.60 a day
Own GPU server: 24 h x $2     = $48 a day
```

At this volume, the server sits idle most of the day, and hosted is far cheaper.

Here's the same feature at 100,000 calls a day:

```plain-text
Hosted: 100,000 calls x $0.002 = $200 a day
Own GPU servers: 2 x 24 h x $2  = $96 a day
```

The hosted bill grew with every call, but the server bill only grew when a second server was needed. At steady high volume, your own servers can come out ahead.

> ‼️ This comparison leaves out your team's time. Someone has to keep those servers running, and their hours belong in the total.

---
## Practice

Your new feature makes a few hundred model calls a day. Hosted API or your own GPUs?

???

- A hosted API, since you pay only for the tokens you use.

---
## Revision

A feature grows from 300 to 100,000 model calls a day. Why might self-hosting now cost less?

???

- The hosted bill grows per call; server costs grow far slower.
