---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A saved prompt needs its purpose, inputs, or checks written down.
    requiredConcepts:
      - Its purpose, the inputs it needs, or the checks the output needs.
    acceptedAnswers:
      - What it's for.
      - What data to feed it.
      - What to check in the output.
    hints:
      - What would you forget in a month?
      - What checks does the output need?
    tooVagueExamples:
      - Some notes.
      - Details.
    incorrectExamples:
      - Its creation date and attempt count.
      - Every earlier draft.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Without notes, you forget inputs and checks.
    requiredConcepts:
      - Wrong inputs or skipped checks.
    acceptedAnswers:
      - I forget what to give it and what to verify.
      - Missing inputs and forgotten checks.
      - Using it wrongly and not checking the output.
    hints:
      - What does the prompt text not tell you?
      - What check might you forget?
    tooVagueExamples:
      - It won't work.
      - Problems.
    incorrectExamples:
      - The prompt won't open anymore.
      - You'll get the same answer as last month.

---

# Saving A Working Prompt

---
## Content

**A useful prompt is worth saving with the conditions that made it work.** Store four things together:

- **Purpose:** weekly complaints digest for Tuesday's operations call
- **Inputs:** anonymized complaints with site, date, and repeat status
- **Prompt:** the exact version you tested
- **Known checks:** verify every urgency label against the source

Without those notes, you may reuse the right words with the wrong data or skip an important review.

> 💡 If you make the same correction every time, update the prompt and save the revised version after testing it.

---
## Practice

Besides the prompt text, what's one note worth saving with a reusable prompt so it runs correctly next month?

???

- What the output still needs checking for each time.

---
## Revision

You saved only the prompt text. What could go wrong when you reuse it next month?

???

- You might feed it the wrong inputs and skip required checks.
