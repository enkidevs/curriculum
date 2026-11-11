---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Hand-pick a few cases from each protected slice and each hard rule, so a small run still catches the worst breaks.
    requiredConcepts:
      - Cases covering the protected slices, or the hard rules such as privacy leaks and schema errors.
    acceptedAnswers:
      - Some from every protected slice and every hard rule.
      - Cases for the riskiest slices and the never-allowed failures.
      - A spread across protected slices, plus privacy and schema checks.
    hints:
      - Which failures must never slip through, even in a quick run?
      - Would 50 random cases cover every high-risk group?
    tooVagueExamples:
      - The important ones.
      - A good mix.
    incorrectExamples:
      - The 50 most recent production chats.
      - The 50 cases the live prompt already passes.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Evals In CI

---
## Content

A prompt change can break a feature as easily as a code change.

**Running evals in CI means your continuous integration (CI) pipeline, which tests every change, also runs an eval whenever a prompt or model setting changes.**

Regressions then show up in code review, before the change merges.

Here's a two-tier setup for a model that drafts refund replies:

```plain-text
every pull request that changes a prompt or model setting:
  quick set: 50 cases, one run, about 3 minutes
  fails on: a schema error, or any reply showing another customer's order
before each release:
  full set: all 200 cases, each run three times
  gate: release thresholds, including protected slices
```

The quick set is cheap enough for every change.

Here's its check on one pull request:

```plain-text
quick eval: 47 of 50 pass
  2 ordinary failures
  1 hard failure: case priv-02 shows order 7731,
    which belongs to another customer
check failed, merge blocked
```

The two ordinary failures alone wouldn't block. With 50 cases, one case is 2 points, too coarse to trust a small drop.

The full run before release gives the counts a release decision needs.

> 💡 Pick the quick set's 50 cases by hand, so a small run still catches the worst breaks. Include a few from each protected slice (one with its own release minimum) and a few for each hard rule (a failure that blocks on its own, like the leak above).

---
## Practice

Your CI quick eval has room for 50 cases. Which cases are worth hand-picking into it?

???

- A few from each protected slice and each hard rule.

---
## Revision

The full eval set, slow and costly to run, fits best ???.

- before release
- on every commit
- once a quarter
- after launch
