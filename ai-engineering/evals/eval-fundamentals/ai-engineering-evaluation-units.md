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
    - fill-in-the-gap
  context: standalone

---

# Evaluation Units

---
## Content

A model feature often works in steps, and you can grade one step, the final reply, or the customer's whole problem. What one grade applies to is called the evaluation unit.

Say a model that drafts refund replies works in three steps: it retrieves policy pages, looks up the order with a tool call, then writes the reply. Here's one question graded at each step:

```plain-text
question: Can I return the bowl from order 5512?
retrieval result: returns policy page    PASS
tool call:        looked up order 5521   FAIL
reply:            "Sorry, that order is past our 30-day window." FAIL
```

**The reply grade only shows the decision was wrong, and the tool-call grade shows why.**

The drafter looked up order 5521 instead of 5512, so it read the wrong order's delivery date.

> 💡 Grade each step where a failure could start, as well as the final reply. Each unit needs its own expected data, like the right policy page or order number.

---
## Practice

To check whether search found the right policy page, the unit you grade is the ???.

- retrieval result
- drafted final reply
- full agent run
- task outcome

---
## Revision

A reply gives the wrong refund decision. To see whether the order lookup caused it, you grade the ???.

- tool call
- final reply
- retrieval result
- task outcome
