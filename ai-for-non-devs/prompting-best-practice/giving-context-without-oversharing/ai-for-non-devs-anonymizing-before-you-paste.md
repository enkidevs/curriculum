---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Identifiers go; what failed, how often, and the unanswered calls stay.
    requiredConcepts:
      - Name, account, and address removed.
      - Repeated late deliveries and no call back kept.
    acceptedAnswers:
      - Customer reports four late deliveries since March; calls not returned.
      - Delivery late four times since March, no call back from us.
      - "[Customer]: four late deliveries since March, no reply to calls."
    hints:
      - Which details identify him?
      - Which details shape the reply?
    tooVagueExamples:
      - A customer is unhappy.
      - Remove personal details.
    incorrectExamples:
      - A customer has a delivery complaint.
      - Tom R., account ending 0043, late deliveries.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Removing the facts that shape the problem makes the reply generic.
    requiredConcepts:
      - What failed and how often.
    acceptedAnswers:
      - The facts about the actual problem.
      - What went wrong and how many times.
      - The specifics like double-billing three times.
    hints:
      - Which details shape the reply?
      - What does AI need to know about the problem?
    tooVagueExamples:
      - Too much.
      - Details.
    incorrectExamples:
      - The name and account number.
      - The customer's emotional wording.

---

# Anonymizing Useful Context

---
## Content

**Remove details that identify someone, but keep facts that shape the answer.**

Original:

```plain-text
Maria Delgado, account 4471-2290, at 18 Harcourt Row. I've been double-billed three times this year, and my calls aren't returned.
```

Reduced version:

```plain-text
A customer has been double-billed three times this year and says calls to their local office aren't returned.
```

The repeat billing and unanswered calls shape the reply. The name, account number, and address do not.

If you also remove "double-billed" and "three times," AI no longer knows what failed or how serious it is.

> ‼️ Check combinations too. Several harmless-looking details can still identify someone when placed together.

---
## Practice

Make this complaint safe to paste but still useful for drafting a reply.

```plain-text
Tom Reyes, account 8812-0043, 4 Mill Lane. My delivery has been late four times since March and nobody calls back.
```

???

- A customer's delivery was late four times since March, and nobody returns their calls.

---
## Revision

You anonymized a customer complaint, pasted it, and got a reply too generic to use. What did you probably remove?

???

- The details of what failed and how often.
