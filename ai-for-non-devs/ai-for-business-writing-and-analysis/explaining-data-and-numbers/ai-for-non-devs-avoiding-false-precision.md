---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Exact arithmetic doesn't make a projection certain; the figure rests on a short pilot and an assumption.
    requiredConcepts:
      - The exact figure suggests more certainty than six weeks of data supports.
    acceptedAnswers:
      - It's a guess from six weeks, not a measured year.
      - The exact number implies false confidence.
      - It assumes the pilot pattern holds all year.
    hints:
      - How much data is behind a full year?
      - What does an exact number suggest?
    tooVagueExamples:
      - It's wrong.
      - It's too big.
    incorrectExamples:
      - The multiplication is probably wrong.
      - Nothing; the math checks out.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Avoiding False Precision

---
## Content

Say a three-week pilot is stretched to a full year, giving a projection of $42,300.

**The arithmetic may be exact. The forecast is not.**

A number that exact sounds more certain than three weeks of data can support.

Rounding helps, but the reader also needs to know what it's based on:

```plain-text
Roughly $40,000 a year if the three-week pilot pattern continues. Actual results may differ with seasonality and store conditions.
```

Give a range only when the data supports one. Don't ask AI to make up a range around a single weak estimate.

> 💡 State what the estimate assumes and how little evidence it rests on.

---
## Practice

A six-week pilot extended to a year projects $97,150 in savings. The math is correct. Why is "$97,150" still misleading?

???

- It looks exact, but it's six weeks of data stretched to a year.

---
## Revision

A $42,300 yearly projection from three weeks of pilot data is best presented as ???.

- an estimate with assumptions
- an exact forecast
- a measured result
- a guaranteed return
