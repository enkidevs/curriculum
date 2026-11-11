---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Whether refunds reached customers happens after the reply, so the unit is the task outcome, graded with refund records from after the reply.
    requiredConcepts:
      - The task outcome, or whether the customer's refund actually happened, as the unit.
      - Records of what happened after the reply, such as refund, payment, or your own records.
    acceptedAnswers:
      - Task outcome, using the refund records.
      - The whole task's result, checked against payment records.
      - Whether the refund went through, from records after the reply.
      - Task outcome using records.
      - The outcome, by checking your records.
    hints:
      - Can the reply's wording show whether money moved?
      - Where would you see that a refund went through?
    tooVagueExamples:
      - The end result.
      - Check the data.
    incorrectExamples:
      - One reply, graded on its wording.
      - The retrieval result, checked against the policy page.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Task Outcomes

---
## Content

A reply can be right while the customer's problem still goes unsolved.

To catch that, you grade the task outcome, which is whether the problem actually got solved.

The reply can't show you that, so you check what happened after it, like whether the refund was actually issued.

Say a model that drafts refund replies tells a customer their refund for order 5512 is approved. Here's what the refund records show a week later:

```plain-text
order 5512
  delivered:      12 days ago, so eligible
  reply:          refund approved
  refund issued:  none
```

The reply's decision was right, so a grade on the reply passes it.

**The customer still has no money, and only the refund records show it.**

For an agent, the unit can also be its whole run. You grade it from the agent's trace, the log of every step.

---
## Practice

Your model drafts refund replies. To check whether approved refunds actually reached customers, which unit do you grade, with what data?

???

- The task outcome, using refund records from after the reply.

---
## Revision

To grade an agent's whole run, you read its ???.

- trace
- final reply
- last tool call
- task outcome
