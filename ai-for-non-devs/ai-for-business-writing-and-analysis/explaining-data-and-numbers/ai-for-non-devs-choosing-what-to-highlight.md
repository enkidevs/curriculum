---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A useful action investigates where or why reopens rose before prescribing a fix.
    requiredConcepts:
      - Investigates where or why reopens rose before fixing anything.
    acceptedAnswers:
      - Break reopens down by queue and channel.
      - Review reopened tickets to see where they cluster.
      - "Support lead: find the pattern by Tuesday."
    hints:
      - What would you need to know before fixing it?
      - How can you act without assuming why?
    tooVagueExamples:
      - Look into it.
      - Improve quality.
    incorrectExamples:
      - Retrain the agents on the new macros.
      - Keep monitoring it.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An action needs an owner, a concrete step, and a deadline or decision.
    requiredConcepts:
      - Missing owner, step, or deadline.
    acceptedAnswers:
      - No owner or deadline.
      - Nobody owns it and nothing specific happens.
      - It lacks a who, what, and when.
    hints:
      - Who does what by when?
      - What decision does it feed?
    tooVagueExamples:
      - It's vague.
      - Weak wording.
    incorrectExamples:
      - It overreacts to a short pilot.
      - It hides the finding.

---

# Naming The Action Beside A Finding

---
## Content

**A finding is only useful with a specific next step beside it.**

"Keep monitoring" does not name a change, owner, deadline, or decision.

Late deliveries rose from 4% to 11%, but the comparison does not show why. A useful action finds the cause before fixing anything:

```plain-text
Operations lead: break late deliveries down by store, distance, and hour before Friday's rollout decision.
```

You can ask AI to suggest actions, then check each one:

- Who owns it?
- What will they change, check, or decide?
- By when?
- Does it assume a cause the data hasn't shown?

> 💡 When you don't know the cause, make the next step finding it, like breaking late deliveries down by store.

---
## Practice

Ticket reopens rose from 6% to 14% and nobody knows why. What next action doesn't guess the cause?

???

- Find which queues or agents the extra reopened tickets come from.

---
## Revision

Why is "Keep monitoring late deliveries" a weak action item?

???

- It names no owner, next step, deadline, or decision.
