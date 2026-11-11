---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Scaffolding leaves product decisions like caching and freshness open.
    requiredConcepts:
      - "Caching or freshness: whether to reuse rates, and for how long."
    acceptedAnswers:
      - How long a rate can be cached.
      - Whether every checkout really needs a fresh rate.
      - How old a rate can be before it's wrong.
    hints:
      - Does every checkout need a brand-new rate?
      - How old can a rate get before it matters?
    tooVagueExamples:
      - Performance.
      - Edge cases.
    incorrectExamples:
      - Nothing; it already returns correct rates.
      - Which HTTP library it should use.
---

# Scaffolding Review

---
## Content

**A scaffold can handle the happy path while leaving product decisions open.**

The generated feature-flag client fetches a value, but when the flag service is down, it only throws:

```plain-text
Error: Failed to fetch flag: new-checkout
    at getFlag (src/flags/flagClient.js:5:26)
```

Before production, your team still has to decide:

- **Outage:** fail the request, or fall back to a defined default.
- **Caching:** whether to cache flag values, and for how long.
- **Targeting:** whether flags apply per user, per organization, or something else.

Those depend on how available, how fresh, and how targeted your product needs flags to be. Generic scaffolding can't decide them for you.

> 💡 Before shipping a scaffold, list the decisions it left open and make each one on purpose.

---
## Practice

A generated email client just throws when the mail provider is down. Before production, you still must decide whether to ???.

- fail, retry, or queue
- make it async
- reword the error
- swap the mail SDK

---
## Revision

Your scaffolded exchange-rate client calls the provider on every checkout. Besides outage handling, what does that leave you to decide?

???

- Whether to cache rates, and how stale they may get.
