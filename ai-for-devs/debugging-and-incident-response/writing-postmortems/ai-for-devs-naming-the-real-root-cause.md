---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Blameless means describing the failing condition, not a person, without hiding the gap.
    requiredConcepts:
      - Describes the defect or gap as a condition, with no person as the cause.
    acceptedAnswers:
      - Cache key omitted billing state; no test caught it.
      - The tax cache key lacked billing state.
      - Billing state was missing from the key, and review didn't flag it.
    hints:
      - Who is the sentence about?
      - What condition let it happen?
    tooVagueExamples:
      - Don't name Sam.
      - Make it blameless.
    incorrectExamples:
      - Sam made a mistake with the cache key.
      - Root cause unknown; no one is at fault.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A complete causal account covers what let the defect ship and go unnoticed, not only the defect.
    requiredConcepts:
      - Names a detection, process, or ownership gap beyond the typo itself.
    acceptedAnswers:
      - No check validated config values before release.
      - Nothing alerted when requests started failing.
      - No one owned reviewing config changes.
    hints:
      - Why did it reach production?
      - What would remain if only the typo were fixed?
    tooVagueExamples:
      - What happened.
      - More testing.
    incorrectExamples:
      - The name of the person who made the typo.
      - Whether the value is fixed now.
---

# Root Cause Analysis

---
## Content

The root cause section of a postmortem is where the team agrees on what went wrong. If it names only the code defect, the gaps that let the defect ship and go unnoticed stay open.

Say an assistant drafts the root cause for the checkout bug, where payment methods didn't refresh after a shipping-country change:

```plain-text
Root cause: the payment methods cache key omitted shipping country.
Contributing: insufficient test coverage of the checkout cache.
```

The cache key[1] error explains the failure. It doesn't explain why no test caught it or why nobody noticed in production. The evidence shows three more gaps:

```plain-text
Detection: no country-change test or alert.
Process: release checklist checked tests, approval, and changelog, but not cache dependencies against the refresh contract.
Ownership: no team owned maintenance of that contract check.
```

Here's the root cause with those included:

```plain-text
Technical: cache key omitted a value required by the refresh contract.
Detection: no test or alert covered the country-change path.
Process and ownership: the checklist lacked a contract check, and no
team was assigned to maintain one.
```

**A gap left out of the root cause doesn't get fixed.**

A blameless[2] postmortem describes these conditions without making a person the cause. It still names the missing test and the missing owner.

> 💡 Write each cause as a condition, like "the cache key omitted shipping country," rather than "Sam forgot shipping country."

---
## Practice

A postmortem says, "Root cause: Sam forgot billing state in the tax cache key." How do you reword that blamelessly without hiding the gap?

???

- The tax cache key omitted billing state; no check caught it.

---
## Revision

A postmortem's only root cause is "a config typo set the rate limit to 10." What else should it cover?

???

- Why no review, test, or alert caught the typo first.

---
## Footnotes

[1: Cache Key]
The value used to decide whether a cached result can be reused. Anything the result depends on has to be part of the key, or a change to it will not produce a fresh result.

[2: Blameless]
An incident record that describes what the conditions allowed rather than who acted. It still names processes, gaps, and missing checks; it just does not name them as somebody's fault.
