---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A generic request to think step by step leads AI to pick the obvious steps you would have taken anyway.
    requiredConcepts:
      - AI tends to pick the obvious steps.
    acceptedAnswers:
      - AI picks the obvious steps, which are the ones you would have taken anyway.
      - It leaves AI to choose the steps, so it usually follows the obvious path instead of the steps that matter most to your decision.
      - Without named steps, the assistant tends to reproduce the standard comparison you could already have made.
    hints:
      - Who decides which steps to take when the prompt does not name them?
      - Which steps matter most to your decision, and would AI pick those first?
    tooVagueExamples:
      - It is not specific enough.
      - It's too vague.
    incorrectExamples:
      - AI ignores the instruction unless it is repeated.
      - The steps will always appear in a random order.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The first step frames the later ones, so a low price can't win before reliability is on the table.
    requiredConcepts:
      - The prices are weighed with each supplier's late deliveries already in view.
    acceptedAnswers:
      - Price gets weighed against reliability.
      - A cheap price can't hide the late deliveries.
      - Reliability frames how the prices are compared.
    hints:
      - What does AI already know when it reaches the prices?
      - What could a low price hide?
    tooVagueExamples:
      - It changes the answer.
      - Order matters.
    incorrectExamples:
      - AI works out the prices more accurately.
      - The prices stop mattering.

---

# Choosing The Steps

---
## Content

"Think step by step" asks for a process but leaves AI to choose it. It may default to the most obvious comparison.

For two office leases, that often means starting with the headline rent. **Name the steps when a different order matters**:

```plain-text
Compare these leases in this order. First, list commitments that run beyond 12 months. Second, calculate the cost of leaving after 18 months. Third, compare the monthly rents beside those exit costs. State any assumptions.
```

This order makes the long-term commitments visible before the attractive monthly figure.

> ‼️ Ordering the steps doesn't make the figures correct. Check the numbers yourself.

---
## Practice

Why is simply saying "think step by step" weaker than naming the steps yourself?

???

- AI picks the obvious steps, which are the ones you would have taken anyway.

---
## Revision

You ask AI to compare two suppliers: first their late deliveries, then their prices. What does that order change?

???

- The prices get judged with the late deliveries already in view.
