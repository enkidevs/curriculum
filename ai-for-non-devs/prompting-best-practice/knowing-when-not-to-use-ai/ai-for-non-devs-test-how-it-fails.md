---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Awkward cases show what failure looks like, or whether the process would catch that failure before AI becomes a routine step.
    requiredConcepts:
      - What failure looks like, or whether you'd catch it.
    acceptedAnswers:
      - It shows what failure looks like and whether you would notice it in the real process.
      - Edge cases reveal whether AI flags a problem, asks for help, or silently fills a gap.
      - You learn which failures can pass through while the process still looks successful.
    hints:
      - Would AI flag a missing field or fill it in?
      - "Which failure is worse: one that stops things or one nobody notices?"
    tooVagueExamples:
      - It proves whether AI works.
      - You find errors.
    incorrectExamples:
      - It measures how quickly AI can process a normal batch.
      - It tells you how often the easy cases are correct.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Test on awkward cases, safely sourced, not typical or easy ones.
    requiredConcepts:
      - Tricky or awkward cases, not typical ones.
    acceptedAnswers:
      - Hard edge cases using safe or synthetic data.
      - The awkward ones that need a second look.
      - Unusual cases, made up or approved for testing.
    hints:
      - Which cases would show it failing?
      - Is real sensitive data OK to use?
    tooVagueExamples:
      - Some test cases.
      - Real ones.
    incorrectExamples:
      - A random sample of normal records.
      - Cases everyone agrees are easy.

---

# Testing Failure Before Routine Use

---
## Content

**Before AI becomes a repeated process step, test normal cases and the awkward ones that make a person stop and think.**

For application summaries, use approved or made-up cases with two roles, a long gap, or missing fields.

Set the expected behavior first:

- flag missing information
- never invent it
- send uncertain cases to a person

Then watch what failure looks like. Does AI flag the gap, ask for help, or fill it silently?

> ‼️ Do not make it routine until the process catches the failures your tests reveal.

---
## Practice

Before AI summarizes job applications routinely, you test it on ones with missing fields. What does that show?

???

- How it fails, like inventing details, and whether you'd catch it.

---
## Revision

Before adding AI to a monthly process, what kinds of cases should you test it on first?

???

- Approved or made-up tricky cases that would make a person pause.
