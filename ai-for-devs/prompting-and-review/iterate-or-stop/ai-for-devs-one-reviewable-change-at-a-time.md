---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Start with a single change you can verify before the next one, and leave callers until the interface is settled.
    requiredConcepts:
      - A single change that can be checked before the next one starts.
    acceptedAnswers:
      - Just the pagination on the endpoint, with a test.
      - Only the param rename, tested before anything else.
      - One endpoint change I could check before touching the pages.
    hints:
      - How many separate changes were in that prompt?
      - When should the pages that call it change?
    tooVagueExamples:
      - Something smaller.
      - A better prompt.
    incorrectExamples:
      - All three changes, plus a request to run the tests.
      - Update the two pages first, then the endpoint.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Each iteration should be independently checkable.
    requiredConcepts:
      - Checkable before the next change.
    acceptedAnswers:
      - One change you can verify before moving on.
      - Small enough to test on its own first.
      - A step you can check before the next begins.
    hints:
      - When do you verify?
      - What if two changes mix?
    tooVagueExamples:
      - Small.
      - Manageable.
    incorrectExamples:
      - Everything the ticket needs.
      - One file, even if untestable alone.
---

# Splitting A Large Request

---
## Content

When you follow up on generated code, it's tempting to ask for everything at once:

```plain-text
Add holiday support, accept string dates, add tests, and update the
three callers to use the new signature.
```

That comes back as one large change with several places it could go wrong. When a test fails, you can't tell which part broke it.

**Each follow-up should produce one change you can check before the next one starts.**

For the date helper, that's three rounds:

1. Holiday support, with a test for a known holiday.
2. String dates, with their own tests.
3. The three callers, once the signature is settled.

> 💡 Count the verbs in your request. Each one you can check on its own is a candidate for its own round.

---
## Practice

In one prompt you ask for `/orders` pagination, a param rename, and updates to its calling pages. What should you have asked for first?

???

- One endpoint change, tested on its own before the rest.

---
## Revision

What's the right size for one AI-assisted iteration?

???

- A change you can check before starting the next one.
