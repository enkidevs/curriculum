---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A low temperature, because it gives the most consistent output.
    requiredConcepts:
      - A low temperature.
    acceptedAnswers:
      - A low temperature, for consistent output.
      - Low, close to zero.
      - Keep it low so the fields come back the same way.
    hints:
      - Do you want variety or consistency here?
      - Which way does temperature push the draw?
    tooVagueExamples:
      - The right one.
      - The default.
    incorrectExamples:
      - A high temperature, so it tries harder.
      - Temperature doesn't affect extraction.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Temperature Settings

---
## Content

Temperature changes how much a model's picks vary from run to run, so it matters which setting you choose.

Say your app asks a model to sort invoices into categories from a fixed list. Here's one invoice run three times at temperature 1:

```plain-text
run 1: Software
run 2: SaaS subscription
run 3: Software
```

Run 2 made up a label that isn't on your list, so that invoice won't appear in any report that filters by category.

**The right temperature depends on whether the task has one right answer:**

- **Near 0** for tasks with one right answer, like sorting invoices, so every run gives the same label.
- **Higher** for tasks where you want variety, like marketing copy, so you get a range of ideas.

---
## Practice

Your invoice extractor should return the same fields every run. What temperature setting fits?

???

- A low temperature, for the most consistent output.

---
## Revision

Compared with classifying invoices, writing five varied taglines for a sale calls for a temperature that's ???.

- higher
- lower
- the same
