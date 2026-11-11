---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A clear name beats a comment explaining an unclear one.
    requiredConcepts:
      - Rename the variable descriptively.
    acceptedAnswers:
      - Give `r` a descriptive name like `response`.
      - Rename `r` so the code explains itself.
      - Use a meaningful variable name instead of `r`.
    hints:
      - Why does the comment exist?
      - Could the code say it instead?
    tooVagueExamples:
      - Improve the code.
      - Clean it up.
    incorrectExamples:
      - Expand the comment with the reason.
      - Add a JSDoc block for the return value.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Comments that restate the operation add nothing.
    requiredConcepts:
      - Remove it because it restates the code.
    acceptedAnswers:
      - Remove it; the line already says that.
      - Drop it since it repeats the code.
      - Delete it; it adds no reason or context.
    hints:
      - What does the comment add?
      - Is anything non-obvious here?
    tooVagueExamples:
      - Improve it.
      - Shorten it.
    incorrectExamples:
      - Move it to the top of the function.
      - Expand it to explain increment.
---

# Comment Quality

---
## Content

An assistant asked to add comments tends to comment every line. Often the better fix is clearer names and no comment at all.

Here's a small helper after the assistant commented it:

```javascript
// Set up an object to hold the totals.
const t = {};
// Go through every SKU.
for (const s of skus) {
  // Add this SKU's quantity to its warehouse total.
  t[s.warehouse] = (t[s.warehouse] ?? 0) + s.qty;
}
```

Each comment translates one line into English. They're only needed because `t` and `s` don't say what they hold.

Rename the variables and the comments have nothing left to explain:

```javascript
const totalsByWarehouse = {};
for (const sku of skus) {
  totalsByWarehouse[sku.warehouse] =
    (totalsByWarehouse[sku.warehouse] ?? 0) + sku.qty;
}
```

**When a comment only says what a line does, delete it.** Otherwise it's one more thing that can go out of date when the code changes.

> 💡 Before you keep a comment, check whether a better name would make it unnecessary.

---
## Practice

A variable `r` carries the comment "r holds the response we are building." What change makes the comment unnecessary?

???

- Rename `r` to a name that says what it holds.

---
## Revision

`retryCount += 1` has the comment `// Increment the retry count`. What should you do with the comment, and why?

???

- Delete it, because it only restates what the code does.
