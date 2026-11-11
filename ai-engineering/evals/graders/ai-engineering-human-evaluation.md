---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An example reply for each label shows reviewers where the line between labels sits, so they all apply it the same way.
    requiredConcepts:
      - The examples show where the line between labels is, or keep reviewers labeling the same way.
    acceptedAnswers:
      - So every reviewer draws the line in the same place.
      - It shows what a yes and a no look like, so labels stay consistent.
      - Without examples, reviewers judge borderline replies differently.
    hints:
      - Would two reviewers agree on a polite but vague reply?
      - What does an example show that a label name doesn't?
    tooVagueExamples:
      - For clarity.
      - It helps reviewers.
    incorrectExamples:
      - So reviewers can copy the example replies.
      - To make the rubric longer and more complete.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Human Evaluation

---
## Content

Some criteria are still hard for code or a model to grade reliably. For those, people do the grading, which is called human evaluation.

For a model that drafts refund replies, one such criterion is whether a reply settles the question without a follow-up. Support staff answer those follow-ups, so they judge it best.

Their rubric gives an example reply for each label, called an anchor:

```plain-text
settles the question
  yes: "Your pan arrived 12 days ago, within our 30-day window. Your return label is attached."
  no:  "Returns may be possible. See our policy page."
```

The yes reply gives the decision, the reason, and the next step. The no reply leaves the customer to work out all three, so they write back.

**The anchors put every reviewer's line in the same place.** Without them, one reviewer could pass the no reply for being polite and on topic, while another fails it.

---
## Practice

Your human-eval rubric shows an example reply for each label. What are those examples for?

???

- They show reviewers where the line between labels sits.

---
## Revision

The refund reply "We've received your question and will look into your return." fails "settles the question" because it gives no ???.

- decision
- apology
- order number
- policy link
