---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Release needs representative cases, not just memorable ones.
    requiredConcepts:
      - The set doesn't represent usual inputs.
    acceptedAnswers:
      - It isn't representative of real traffic.
      - Remembered incidents don't show typical performance.
      - It misses the everyday inputs.
    hints:
      - What does most traffic look like?
      - Why were these cases chosen?
    tooVagueExamples:
      - It's biased.
      - Too few cases.
      - Because it didn't use real user cases.
    incorrectExamples:
      - Incidents are too severe to evaluate.
      - Forty cases can never compare candidates.
      - Because it didn't pass all of them.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A frequency-matched sample underweights known failures and rare high-impact cases, so those get added on top.
    requiredConcepts:
      - Known past failures, or rare cases where mistakes are costly.
    acceptedAnswers:
      - Rare cases where mistakes are costly.
      - Past failures, tagged so they're reported apart.
      - High-impact paths a random sample misses.
    hints:
      - What does a random sample underweight?
      - Where are errors most costly?
    tooVagueExamples:
      - Edge cases.
      - Harder ones.
    incorrectExamples:
      - More cases exactly like the common ones.
      - Questions that arrive after hours.

---

# Representative Cases

---
## Content

An eval only tells you how your system does on inputs like the ones it holds. So its cases need the same mix of inputs your users actually send.

**Representative cases are eval inputs sampled from real usage, so the dataset matches that mix.**

Say a kitchenware store uses a model to draft refund replies. Here's the team's hand-written test set next to last month's real questions:

```plain-text
written by the team: 30 questions
  all in English, all with an order number
real refund questions last month: 4,000
  no order number: 1,120
  about a final-sale item: 400
  not in English: 320
```

A random sample of 200 real questions keeps that mix, so about 56 of them have no order number.

Here's the live prompt scored on both sets:

```plain-text
team's 30 questions:   29 of 30 (97%)
random sample of 200: 176 of 200 (88%)
```

More than a quarter of real questions have no order number, and the team's set has none, so its 97% says nothing about them.

> 💡 A sample catches rare inputs only by luck, so add known failures and rare costly cases, like a $900 espresso machine refund, on top. Tag them and score them apart, so the sample's score still predicts real traffic.

---
## Practice

A candidate model passes 39 of 40 eval cases, all taken from past incidents. Why is that weak evidence for release?

???

- The incident set says little about the inputs it usually gets.

---
## Revision

Your eval set is a random sample of real traffic. What extra cases go on top?

???

- Known failures and rare cases where mistakes are costly.
