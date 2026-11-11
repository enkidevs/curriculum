---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Model output varies from run to run, and many different outputs can be right, so the useful measure is how often it's right across many inputs.
    requiredConcepts:
      - The output varies between runs (the same input can pass once and fail the next), or several different outputs can all be right.
    acceptedAnswers:
      - Because the output changes from run to run.
      - Many different replies can be correct, so one exact match won't work.
      - It varies, so you need to know how often it's right.
      - Because the reply changes every time it's run.
      - Because it can sometimes pass and sometimes fail.
      - The same input can give different replies.
    hints:
      - Does the same input always get the same reply?
      - Can two differently worded replies both be correct?
    tooVagueExamples:
      - It's more accurate.
      - Because it's AI.
    incorrectExamples:
      - Model APIs are too slow for unit tests.
      - A pass rate hides the failures you don't care about.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Evals

---
## Content

A model can word the same right answer many ways, and its reply can change from run to run.

Say a kitchenware store uses a model to draft replies to refund questions. Here's the same question, run twice:

```plain-text
question: Can I return a pan I got 12 days ago?
run 1:    Yes, you're within our 30-day window.
run 2:    You can! Returns are open for 30 days.
```

Both replies are right, yet a unit test written against run 1's exact text fails run 2:

```plain-text
test_refund_reply FAILED
  expected: "Yes, you're within our 30-day window."
  got:      "You can! Returns are open for 30 days."
```

An eval grades what matters in each reply instead, here the refund decision, so both replies pass.

**An eval has three parts: a set of test inputs, a way to grade each output, and a score that sums up the results.**

Here's a small one:

```plain-text
inputs: 200 real refund questions, each with its order record
grade:  does the reply give the right refund decision?
score:  176 of 200 correct (88%)
```

The score is a rate: how often the decision is right across many questions. Here, about one reply in eight gets it wrong.

That rate is the number a new prompt or model has to beat.

---
## Practice

Why are model features measured by a pass rate across many test inputs?

???

- Their output varies between runs, so you measure how often they're right.

---
## Revision

An eval has three parts: test inputs, a way to grade each output, and a ???.

- score
- system prompt
- fixed seed
- reference model
