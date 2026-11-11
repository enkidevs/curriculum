---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A decision record keeps the cost of the choice visible, not just the choice.
    requiredConcepts:
      - Ad-hoc querying is given up or deferred for now (or no warehouse to run yet).
    acceptedAnswers:
      - No ad-hoc queries until later.
      - We lose ad-hoc querying this quarter.
      - No new service now; ad-hoc querying waits.
    hints:
      - What does the warehouse give that the queue doesn't?
      - What are you giving up for now?
    tooVagueExamples:
      - It's cheaper.
      - Some tradeoffs.
    incorrectExamples:
      - The warehouse is rejected for good.
      - The queue is the best long-term design.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A temporary decision needs a stated condition for reopening it, so it doesn't harden by default.
    requiredConcepts:
      - A specific condition for revisiting, such as an event or a metric limit.
    acceptedAnswers:
      - When to reopen it, such as a cost limit.
      - The trigger that would make us switch.
      - A revisit condition, like volume passing a threshold.
    hints:
      - What would make 'for now' end?
      - What could the team watch for?
    tooVagueExamples:
      - Revisit it someday.
      - More detail.
    incorrectExamples:
      - A stronger statement that it's final.
      - Every attendee's name.
---

# Decision Records

---
## Content

A decision record, often called an ADR, is a short document that tells the next person what your team chose and why. An assistant can draft one from the team's discussion, as long as it keeps the tradeoff that came with the choice.

Here's the benchmark and the thread behind one team's choice of search:

```plain-text
Benchmark: built-in search p95 210 ms on 1.4M items; target <300 ms.
Tom: A cluster adds typo-tolerant ranking and is the better
  long-term fit.
Mira: Nobody here has operated one, and we are short until the new
  hire starts.
Decision: built-in search this quarter. Revisit after the hire or
  if p95 exceeds 300 ms.
```

Here's a draft that keeps the whole tradeoff:

```plain-text
Context: current tag search times out above about 1M items.
Decision: use built-in full-text search this quarter.
Alternative: dedicated cluster with typo-tolerant ranking.
Consequences: no new service now; typo tolerance is deferred.
Revisit: after the new hire starts or if p95 exceeds 300 ms.
```

- **Alternative and Consequences** show what the team gave up: typo tolerance waits.
- **Revisit** names the two things that reopen the decision. The p95[1] limit, the time 95% of searches finish under, makes one of them measurable.

**Without a revisit line, a choice made for this quarter quietly becomes permanent.**

> 💡 When you check an ADR draft, look for what the team gave up and what would reopen the decision.

---
## Practice

The team chose a queue exporter this quarter over a warehouse that adds ad-hoc querying but needs a data engineer they lack. What consequence should the decision record state?

???

- Ad-hoc querying is deferred for now.

---
## Revision

A decision record says the team chose hosted email "for now". A year later, nobody knows whether to reconsider. What should it have included?

???

- What would trigger a revisit, like a cost or volume threshold.

---
## Footnotes

[1: p95]
The value at or below which about 95% of measurements fall. A p95 of 210 ms does not describe the slowest 5%.
