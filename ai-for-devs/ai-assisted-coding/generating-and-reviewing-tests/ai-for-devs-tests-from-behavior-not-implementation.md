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
    expectedPoint: Tests drafted from the code alone encode its current behavior, including its bugs.
    requiredConcepts:
      - The tests are based on what the code does, so they repeat its bug instead of checking the intended behavior.
    acceptedAnswers:
      - They test what the code does, not what it should do.
      - The tests are built from the buggy code, so they agree with it.
      - Without the spec, the expected values come from the bug itself.
    hints:
      - Where did the tests get their expected values?
      - What did the chat never see?
    tooVagueExamples:
      - The tests are bad.
      - AI makes mistakes.
    incorrectExamples:
      - Because the bug only shows up in production.
      - Because there weren't enough tests.
---

# Behavior-Based Tests

---
## Content

When you ask an assistant to write tests for a function, it works out the expected results from the code you give it. If that code has a bug, the tests can lock the bug in.

Say the password-reset rule says a token stays valid for 30 minutes. The code says otherwise:

```javascript
const TOKEN_TTL_MS = 30 * 1000;
function isTokenValid(issuedAt, now) {
  return now - issuedAt < TOKEN_TTL_MS;
}
```

`30 * 1000` is 30 seconds. Tests drafted from this function alone may expect valid at 29 seconds and invalid at 31, so they pass and keep the bug.

**Tests written from the rule catch it.** A test that expects a token to be valid at 10 minutes fails against this code.

> 💡 Give the assistant the intended behavior and a few examples of it before the code.

---
## Practice

The spec says prices round to the nearest cent; the code floors. A spec-based test expects `formatPrice(2.678)` to return ???.

- 2.68
- 2.67
- 2.7
- 2.678

---
## Revision

You paste only your buggy `shippingCost()` function into a chat and ask for tests. Why might they all pass?

???

- They copy what the code does, bug included, not the spec.
