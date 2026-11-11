---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Acceptance criteria must name a result you can watch happen.
    requiredConcepts:
      - No observable, checkable result.
    acceptedAnswers:
      - There's nothing specific to check.
      - It doesn't say what result proves success.
      - It restates the goal without a testable outcome.
    hints:
      - What would you look at?
      - Could it ever fail?
    tooVagueExamples:
      - It's vague.
      - It's unclear.
    incorrectExamples:
      - It doesn't name who confirms it.
      - It leaves timing open.
---

# Acceptance Criteria

---
## Content

Acceptance criteria say how you'll know the change is done.

**Each one names a result you can check, like a passing test, a status code, or a log line.**

For the refund status endpoint, the acceptance criteria are a list of results you can check one at a time:

```plain-text
Acceptance:
- A support token with only refunds:read_status gets 200 from the status route with status, amount, and updated_at.
- The same token gets 403 from the full-refund and retry routes.
- The existing refund route tests still pass.
```

Each line either passes or fails when you test it.

The two 403 results matter most, because they prove the new permission doesn't open up routes support agents shouldn't reach.

> ‼️ A common mistake is a line that just repeats the goal, like "it works correctly". Write down a result you could actually check.

---
## Practice

Your brief adds rate limiting to the login endpoint. The checkable acceptance line says after five failed logins it ???.

- returns 429
- handles abuse sensibly
- follows best practices
- behaves securely

---
## Revision

An acceptance clause says, "Confirm the change works as intended before merging." Why can't anyone check it?

???

- It names no observable result that could pass or fail.
