---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check a claim against the artifact it describes.
    requiredConcepts:
      - The config or code that defines the timeout.
    acceptedAnswers:
      - The session config file.
      - The code where the timeout is set.
      - The actual setting in the repo or environment.
    hints:
      - Where is the timeout defined?
      - What would show it directly?
    tooVagueExamples:
      - The evidence.
      - Something reliable.
    incorrectExamples:
      - A user's report of being logged out.
      - The assistant's own explanation.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Unsupported claims are unverified, not true or false.
    requiredConcepts:
      - Treat it as unverified.
    acceptedAnswers:
      - Unverified until someone checks Safari.
      - An unsupported claim that needs checking.
      - Not established; nothing shared covers browsers.
    hints:
      - What evidence covers Safari?
      - Does unsupported mean false?
    tooVagueExamples:
      - Be skeptical.
      - Double check it.
    incorrectExamples:
      - Accept it since the other claims checked out.
      - Delete it as false.
---

# Claim Checking

---
## Content

When you debug with an assistant, its summary can mix proven facts and guesses in the same confident tone.

Say checkout shows "Payment method unavailable" after a customer changes their shipping country from US to CA. You give the assistant the bug report, logs, and a diff, and it sums them up in four claims:

```plain-text
1. The cache key uses cart ID only.
2. Yesterday's release introduced this behavior.
3. Adding shipping country to the key will fix it.
4. Mobile customers are unaffected.
```

**Check each claim against the artifact that could settle it:**

- **Claim 1:** the diff suggests the cache key[1] uses cart ID only. Confirm it in the actual cache code.
- **Claim 2:** the bug report says when failures began, but not when the diff shipped, so the timing is unproven.
- **Claim 3:** this is a proposed fix, so it still needs a test.
- **Claim 4:** nothing you provided mentions mobile, so it's unverified.

> ‼️ A common mistake is accepting a confident paragraph as a whole. Each claim in it can stand on different evidence, so check each one on its own.

---
## Practice

Your assistant says your app's session timeout is 15 minutes. Where would you look to check if that's true?

???

- The config or code that sets the session timeout.

---
## Revision

Your assistant says "Safari users are unaffected," but nothing you shared mentions browsers. How should you treat that claim?

???

- As unverified, since nothing you provided supports it.

---
## Footnotes

[1: Cache Key]
The value used to decide whether a stored result can be reused. If a relevant input is missing from the key, a changed request may receive an old result.
