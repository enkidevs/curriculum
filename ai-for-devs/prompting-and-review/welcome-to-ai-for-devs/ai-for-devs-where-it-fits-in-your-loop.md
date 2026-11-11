---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: AI prepares the work; you still decide whether it's correct and ready to ship.
    requiredConcepts:
      - Judging whether the output is correct before it's used.
    acceptedAnswers:
      - Reviewing whether the tests check the right behavior.
      - Checking they're right before merging; it only drafts them.
      - Making sure they cover the cases that matter.
    hints:
      - Who decides if the tests are right?
      - Could passing tests still miss the point?
    tooVagueExamples:
      - Watching over it.
      - The rest.
    incorrectExamples:
      - Nothing; if the tests pass, they're right.
      - Only fixing the formatting.
---

# Development Tasks

---
## Content

AI is most useful for development work that takes a while to do but that you'd review anyway.

For example, it can write a first version of tasks like these:

- **Writing** validation for a signup form with 14 fields
- **Explaining** a 400-line auth middleware nobody has touched in years
- **Rewriting** a config loader from callbacks to async/await
- **Searching** 2,000 log lines for the six that belong to a failing request
- **Summarizing** 34 merged commits into a draft changelog

In every case, the assistant only writes the first version. **You still decide whether it's correct and ready to ship.**

> 💡 A good first task for AI is one you could check faster than you could write it yourself.

---
## Practice

Your assistant drafts unit tests for your date-parsing module. What part of that job is still yours?

???

- Deciding whether the tests are correct and ready to merge.
