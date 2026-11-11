---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Compare options against the current brief; the smaller behavior-preserving change fits.
    requiredConcepts:
      - Picks A.
      - Gives a reason tied to the brief, such as A being the small change that keeps behavior the same, or B changing more than asked.
    acceptedAnswers:
      - A, since B rewrites far more than the brief asked.
      - Option A; smaller change, same behavior.
      - A now, B later as a separate piece of work.
      - A, because it's a small change that doesn't change behavior.
      - A, B changes way too much.
    hints:
      - Which option matches what was asked?
      - What else changes under B?
    tooVagueExamples:
      - A is better.
      - The smaller one.
      - A because adding an index allows faster querying.
    incorrectExamples:
      - B, because a cleaner design is always worth it.
      - Either; both make the query faster.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Technical Tradeoffs

---
## Content

When there are several reasonable ways to make a change, an assistant picks one for you, and the change can grow well past what you asked for.

**Ask it to compare the options' concrete costs before you choose.**

For the retry-scheduling extraction, ask for two options:

```plain-text
Give me two ways to extract the retry schedule, with the diff size,
what changes in the worker, and what each does to the 4xx rules.
```

The costs show how far each one reaches:

```plain-text
A. Policy module: move about 40 lines. Keep 4xx eligibility in the
   worker and preserve existing tests.
B. Retry service: move about 180 lines, including 4xx eligibility,
   and rewrite the worker tests.
```

- **Option A** moves about 40 lines and keeps the existing tests, so it fits a request that says "without changing behavior".
- **Option B** moves the retry rules too and rewrites the worker tests. It may still be worth doing, but it's a bigger refactor and needs its own brief.

> 💡 Compare options on what they touch: diff size, callers, and tests.

---
## Practice

Your brief is to fix one slow query without changing behavior. Option A adds an index; option B rewrites the data layer. Both make the query faster. Which fits the brief, and why?

???

- A; it fits the brief. B needs its own brief.

---
## Revision

An assistant offers two ways to split your payment module, both 60 lines and behavior-preserving. To choose, compare ???.

- affected callers and tests
- the assistant's preference
- which reads cleaner
- how confident each sounds
