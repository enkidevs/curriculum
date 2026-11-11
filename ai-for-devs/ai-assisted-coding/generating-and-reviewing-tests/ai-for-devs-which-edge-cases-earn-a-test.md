---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A test case earns a place by reaching real behavior; inputs the code never reads don't.
    requiredConcepts:
      - Drops c, the accented-name case.
      - Because the function doesn't read the name.
    acceptedAnswers:
      - c; it isn't an input.
      - The name one; it isn't an input.
      - Drop the accent case, the name can't change the result.
      - The customer name test, only total and coupon matter.
    hints:
      - What does the function actually read?
      - Which case can't change the result?
    tooVagueExamples:
      - The least important one.
      - The weird one.
    incorrectExamples:
      - a; boundaries are rare.
      - Keep all three; more tests are always better.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Test-Worthy Edge Cases

---
## Content

Ask an assistant for edge cases and you'll get plenty. Each one you keep becomes a test someone maintains, so keep only the ones that could catch a real bug.

Here's its list for a function that checks whether a password-reset token is still valid:

```plain-text
1. now exactly 30 minutes after issue
2. a token that has already been consumed
3. an unknown token id
4. an email address containing an apostrophe
5. a request from an unusual browser
```

- **Cases 1 to 3** earn tests: a boundary, reuse of a spent token, and a missing token. Each one reaches a different path in the code.
- **Cases 4 and 5** can't affect a function that reads only the token and the current time.

**Keep a case when it covers a real risk, a boundary, a past failure, or a separate code path.**

---
## Practice

A discount function reads only cart total and coupon code. Which of these suggested tests do you drop, and why?

```plain-text
a) minimum-total boundary
b) expired coupon
c) accented customer name
```

???

- c; the function never reads the name.

---
## Revision

An unusual input earns a test when it adds real ???.

- risk coverage
- variety
- novelty
- input diversity
