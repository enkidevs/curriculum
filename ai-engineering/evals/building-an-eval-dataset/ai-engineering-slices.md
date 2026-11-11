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
    expectedPoint: Slices can overlap, so slice counts don't partition the dataset and needn't sum to the total.
    requiredConcepts:
      - Slices can overlap; one case can belong to more than one slice.
    acceptedAnswers:
      - Some cases fall into more than one slice.
      - Slices aren't exclusive, so counts don't add to the total.
      - A short ticket with no order ID counts in both slices.
    hints:
      - Can one case belong to two slices?
      - Do slices have to split the dataset cleanly?
    tooVagueExamples:
      - Counting.
      - It's expected.
    incorrectExamples:
      - Some slices were scored twice by mistake.
      - The slices must be redefined so they don't overlap.

---

# Slices

---
## Content

An overall score can look healthy while one group of inputs fails most of the time.

To see that, you break the eval into slices. A slice is a subset of cases that share a property, like the customer's language or the kind of item.

Here's the live prompt's eval for the store's refund drafter, broken into slices:

| Slice | Cases | Passed |
|---|---|---|
| All cases | 200 | 176 (88%) |
| No order number | 56 | 47 (84%) |
| Final-sale items | 20 | 18 (90%) |
| Not in English | 16 | 9 (56%) |

The overall 88% looks healthy. The not-in-English row shows that customers who write in another language get a wrong reply almost half the time.

**An average can hide a slice that fails, so each slice's score goes next to the overall one.**

Slices can overlap: a Spanish question about a final-sale item counts in both rows.

> 💡 Pick slices where the system's behavior or the cost of a mistake could change, like a policy rule, a language, or a product type.

---
## Practice

In a help-center bot's eval, tickets ??? most clearly earn their own slice.

- on undocumented features
- sent outside office hours
- handled by newer staff
- sent during peak week

---
## Revision

Your eval has 200 unique cases, but its five slice counts add up to 263. What explains the gap?

???

- Slices overlap, so one case can count in several.
