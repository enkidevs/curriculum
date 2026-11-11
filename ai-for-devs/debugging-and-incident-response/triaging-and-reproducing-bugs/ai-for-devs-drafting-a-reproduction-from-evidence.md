---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Draft an inferred setup from the evidence: string sorting misorders counts of different lengths."
    requiredConcepts:
      - Counts with different numbers of digits, so text sorting puts them in the wrong order.
    acceptedAnswers:
      - Two projects with 7 and 250 files.
      - Counts like 9 and 100 so string sort puts 9 first.
      - Mixed-length file counts.
    hints:
      - How does "9" compare to "100" as text?
      - What counts would sort wrong as strings?
    tooVagueExamples:
      - Some projects with files.
      - Realistic data.
    incorrectExamples:
      - Two projects with 100 and 200 files.
      - The reporter's exact account; nothing else will do.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Verify inferred steps before handing off.
    requiredConcepts:
      - Run it yourself with matching data.
    acceptedAnswers:
      - Try it myself on an account set up that way.
      - Execute it on seeded data first.
      - Confirm it reproduces before sending.
    hints:
      - Is the inferred step confirmed?
      - Who should verify?
    tooVagueExamples:
      - Double check.
      - Label it.
    incorrectExamples:
      - Send it; the label is enough.
      - Swap in the nearest supported step.
---

# Reproduction Steps

---
## Content

Bug reports rarely include exact steps, so an assistant can draft reproduction steps from the evidence you have. Any step it had to guess needs a label, or someone will treat the guess as a fact.

Say a customer reports that the usage page doesn't show an account's busiest API key first. The API contract says counts are strings. Nobody supplied the exact account data, so the assistant infers the setup:

```plain-text
1. Use an account with at least two API keys whose request counts include 9 and 100. [inferred setup]
2. Open Settings, API keys, Usage.
3. Expected: 100 appears before 9. Predicted actual: 9 appears first.
```

- **Step 1** comes from the string contract, since 9 and 100 sort differently as text and as numbers. The label says nobody has seen it fail yet.
- **Step 3** is a prediction until someone runs it.

**Run the steps yourself on an account seeded with those counts before you hand them off.**

If 9 appears first, the steps are verified. That shows mixed-length counts trigger the bug, though not that they're what hit the reporting accounts. If the order comes out right, revise the steps.

> ‼️ A common mistake is handing off steps because they're labeled. The label marks the guess, and only a run confirms it.

---
## Practice

A list sorted by file count shows the largest project not first; the API returns file counts as strings. What test data would reproduce it?

???

- Projects with mixed-length file counts, like 9 and 100.

---
## Revision

A drafted reproduction includes an unreported precondition marked as inferred. What should you do before handing it to another developer?

???

- Run it yourself on data seeded to match that precondition.
