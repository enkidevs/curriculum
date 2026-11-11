---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A prompt with an example should name which parts of it to copy.
    requiredConcepts:
      - Which parts of the example to copy, or which to leave out.
    acceptedAnswers:
      - That only the rounding rule should be copied.
      - Which parts to copy and which to ignore.
      - To leave the debug logging out.
      - A rule on what not to copy.
    hints:
      - How would it know what matters?
      - What else got copied?
    tooVagueExamples:
      - Use it as a guide.
      - More detail.
    incorrectExamples:
      - A second example to copy from.
      - Who wrote the function.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A working example from the codebase shows the local pattern better than a style description.
    requiredConcepts:
      - A real code example from the repo.
    acceptedAnswers:
      - Paste an existing function that handles errors our way.
      - Show it a file that already follows the pattern.
      - Give it a concrete example instead of describing the style.
    hints:
      - What does "our style" leave out?
      - What could show the pattern directly?
    tooVagueExamples:
      - More context.
      - Clearer instructions.
    incorrectExamples:
      - A longer description of the style.
      - Ask it to be more consistent.
---

# Codebase Examples

---
## Content

When you ask an assistant to write code that fits your project, it has to learn your conventions from something. "Follow our style" gives it nothing to copy.

**A working example from your codebase shows the pattern better than any description.**

Say you're rewriting the invoice export so it streams rows instead of loading them all at once. The payments exporter already streams one row at a time:

```javascript
export async function streamPayments(accountId, res) {
  const cursor = db.query(PAYMENTS_SQL, [accountId]).stream();
  cursor.on("data", (row) => res.write(toCsvLine(row)));
  cursor.on("end", () => res.end());
}
```

As with constraints in a brief, name the parts of the example to copy:

```plain-text
Follow streamPayments for cursor creation, writing each row, and ending
the response. Keep the existing invoice column order unchanged.
```

The example shows what your style looks like in real code, and the instruction narrows it to the parts that apply here.

---
## Practice

You paste `formatPrice()` so the assistant copies its rounding rule. The result copies its debug logging too. What did your prompt leave out?

???

- Which parts of the example to follow.

---
## Revision

You ask an assistant to "follow our error-handling style." Its error handling doesn't match your repo's. What would help more in the prompt?

???

- A real function from the repo that shows the pattern.
