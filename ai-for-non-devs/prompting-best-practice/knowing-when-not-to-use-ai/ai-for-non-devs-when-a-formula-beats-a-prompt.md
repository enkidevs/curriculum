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
    expectedPoint: A formula is a method you can check and reuse, not an answer regenerated each time.
    requiredConcepts:
      - the formula can be inspected or tested, or it applies the same rule consistently each time it is reused
    acceptedAnswers:
      - A formula can be tested against known cases and then reused to apply the same rule consistently.
      - You get an inspectable method that applies the same rule consistently.
      - The reusable formula is deterministic, unlike asking for a newly generated total every time.
    hints:
      - Compare receiving one total with receiving the method that produced it.
      - What can you do next quarter with a formula you already checked?
    tooVagueExamples:
      - Formulas are more accurate.
      - You can use it again.
    incorrectExamples:
      - A formula never needs to be reviewed.
      - Asking for a formula guarantees that the current total is correct.

---

# Exact Rules Need Exact Tools

---
## Content

**If the same inputs and rule must produce the same result, use a tool that calculates the same way every time.**

Headcount cost across several growth scenarios belongs in a spreadsheet. AI can help write the formula, but the spreadsheet should perform the calculation:

```plain-text
I have salaries in column C and start dates in column D. Write me a formula for the cost of the portion of this year each person is actually employed, and explain what each part of the formula does.
```

Test the formula against a case you can calculate yourself. Check its cell references, then reuse it while the rule and sheet layout remain unchanged.

> 💡 When a number must be exact, ask AI for the formula and let the spreadsheet do the calculation.

---
## Practice

When the same inputs must always give the same result, do the calculation with ???.

- a tested formula
- a prompt with examples
- a step-by-step prompt
- two compared AI runs

---
## Revision

Why is asking AI for a formula more useful than asking it for one total?

???

- You can test it once, then reuse it to apply the same rule every time.
