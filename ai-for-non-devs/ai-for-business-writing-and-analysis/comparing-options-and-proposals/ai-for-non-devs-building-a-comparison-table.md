---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: You set the criteria and units, so vendor headings don't drive the comparison.
    requiredConcepts:
      - Sets the columns or criteria (or common units) instead of following vendor headings.
    acceptedAnswers:
      - Which criteria the columns compare.
      - The columns, not the vendors' headings.
      - One cost period, like three-year total.
    hints:
      - Who should choose the columns?
      - How do you compare different cost periods?
    tooVagueExamples:
      - The format.
      - How it looks.
    incorrectExamples:
      - Let AI follow each vendor's headings.
      - Which vendor should win.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Missing information is marked not stated, not inferred.
    requiredConcepts:
      - It is marked not stated.
    acceptedAnswers:
      - Not stated.
      - "'Not in proposal', to follow up."
      - Mark it not stated rather than 'no'.
    hints:
      - Did the vendor say no?
      - Should you guess?
    tooVagueExamples:
      - Something.
      - Unknown maybe.
    incorrectExamples:
      - No, probably unsupported.
      - Fails the requirement.

---

# Building A Comparison Table

---
## Content

Three checkout-system proposals use different headings and cost periods.

If you ask only for a comparison, AI may organize it around whichever features each vendor emphasizes.

**Picking the columns yourself, with a page beside each entry, keeps the table on your criteria:**

```plain-text
Compare the proposals on total three-year cost and what it includes, offline card-payment behavior, exit notice, and training time. Use consistent units. Add the proposal page for every entry. Write "not stated" when a proposal does not answer a criterion. Do not infer missing values.
```

Now a gap shows up as "not stated" instead of a believable guess, and it tells you what to ask the vendor.

> ‼️ A common mistake is letting AI guess a missing value. Ask for "not stated" instead.

---
## Practice

Three checkout-system proposals use different headings and cost periods. Before AI builds the comparison table, what should you decide yourself?

???

- The columns: our criteria, in the same units and cost period.

---
## Revision

A vendor proposal never says whether card payments work offline. What goes in that cell of your comparison table?

???

- "Not stated," not a guess that it's unsupported.
