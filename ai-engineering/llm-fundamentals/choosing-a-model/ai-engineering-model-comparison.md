---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Which receipts each model got wrong, and whether those failures matter for your product.
    requiredConcepts:
      - Which receipts each model missed, or whether the misses matter for your product.
    acceptedAnswers:
      - Which receipts each one got wrong.
      - Whether the misses are the kind your app sees a lot.
      - Look at the failed receipts and see if they matter.
    hints:
      - Are all misses equally costly?
      - What do the failed receipts have in common?
    tooVagueExamples:
      - The details.
      - More tests.
    incorrectExamples:
      - Nothing, just pick the higher score.
      - Their public benchmark rankings.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A benchmark measures a different task, so only your own examples show how the model does on your product.
    requiredConcepts:
      - Benchmarks measure a different task, or only your own examples show how it does on yours.
    acceptedAnswers:
      - The benchmark tests someone else's task.
      - Your inputs, like handwritten receipts, may trip it up.
      - Only my own data shows how it does on my product.
    hints:
      - Who chose the benchmark's test set?
      - Does it include inputs like yours?
    tooVagueExamples:
      - Benchmarks can be wrong.
      - To be safe.
    incorrectExamples:
      - Benchmarks are usually faked.
      - To check its price.

---

# Model Comparison

---
## Content

Once you have a shortlist, run each model on the same examples from your own product. **Public benchmarks, the standard tests models get scored on, measure someone else's task, so only your own examples show how a model does on yours.**

Here are three models run on the same 200 real receipts:

| Model | Correct | Per 1,000 |
|---|---|---|
| Large | 194 | $4.00 |
| Medium | 191 | $1.20 |
| Small | 172 | $0.30 |

The medium model gets 3 fewer right than the large one, for less than a third of the price. The small one misses 28.

Which receipts each model missed tells you more than the count. Here's a typical miss, a handwritten receipt with a total of €18.40:

```plain-text
Large:   {"total": 18.40, "currency": "EUR"}
Medium:  {"total": 18.40, "currency": "EUR"}
Small:   {"total": 13.40, "currency": "EUR"}
```

The small model read the handwritten 8 as a 3, and most of its misses look like this.

> 💡 Read each model's misses before you pick. If your users send a lot of handwritten receipts, the small model is out.

---
## Practice

Two models read 194 and 191 of your 200 test receipts. Before picking, what else do you check?

???

- Which receipts each one missed, and whether those misses matter.

---
## Revision

A model tops a public benchmark. Why still test it on your own product's examples before picking it?

???

- Benchmarks measure someone else's task, so they can't show how it does on yours.
