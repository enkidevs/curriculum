---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Ask AI for competing hypotheses and checks, not a single root-cause verdict.
    requiredConcepts:
      - Several candidate causes rather than one root-cause answer.
    acceptedAnswers:
      - A few ranked hypotheses, each with a way to test it.
      - Possible causes and how to check each one.
      - Ranked explanations with supporting evidence, not just the answer.
    hints:
      - Could more than one thing explain the failure?
      - How would you know which one is right?
    tooVagueExamples:
      - Help debugging it.
      - An explanation.
    incorrectExamples:
      - The root cause and a fix.
      - Its single best guess at what broke.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Ranking first doesn't make a hypothesis a verdict.
    requiredConcepts:
      - It's still unconfirmed (a hypothesis) until a check settles it.
    acceptedAnswers:
      - Just a hypothesis until tested.
      - Unconfirmed until a check backs it up.
      - A leading guess, not the root cause yet.
    hints:
      - Has anything confirmed it yet?
      - What would prove it?
    tooVagueExamples:
      - Likely.
      - Probably right.
    incorrectExamples:
      - As the root cause, since it ranks first.
      - Roll back the upgrade and close the ticket.
---

# Debugging Hypotheses

---
## Content

When a test fails, an assistant can help you work out why from the failure, the logs, and the recent diff. If you ask it for the root cause, you get one confident guess, and it can send you fixing the wrong thing.

Say a checkout test fails after the shipping country changes:

```plain-text
CheckoutPaymentMethodsTest.canRefreshMethodsAfterCountryChange
Expected: card_available
Received: no_methods
```

The runtime log and the recent diff add two clues:

```plain-text
payment_methods.refresh skipped:
cached_methods_country=US
requested_country=CA

Recent diff: cached methods are reused whenever cart ID is unchanged.
The cache key does not include shipping country or currency.
```

**Ask for several possible causes, the evidence for each, and a check that tells them apart.**

Here's what that gets you:

```plain-text
1. Cache key omits country.
   Evidence: recent diff and US/CA mismatch in the log.
   Check: inspect the computed key for both requests.
2. The CA provider returned no methods.
   Evidence: no_methods result only.
   Check: call the provider directly with the same inputs.
```

- **The first** has two clues behind it: the diff and the US/CA mismatch in the log.
- **The second** rests only on the `no_methods` result, but nothing rules it out yet.

The cache key[1] cause ranks first, and it's still a guess until its check comes back.

> ‼️ A common mistake is fixing the top-ranked cause before checking it. Compare the computed key for the US and CA requests first. If both get the same key, the cache is your cause.

---
## Practice

You paste a failing test, its log, and the recent diff into an assistant. What should you ask for?

???

- Several possible causes, with evidence and a check for each.

---
## Revision

An assistant's top-ranked cause for a failing build is a dependency upgrade, still unchecked. How should you treat it?

???

- As the lead hypothesis to test, not the confirmed cause.

---
## Footnotes

[1: Cache Key]
The value used to decide whether a cached result can be reused. The key or invalidation logic must account for inputs that change the result, or stale data may be reused.
