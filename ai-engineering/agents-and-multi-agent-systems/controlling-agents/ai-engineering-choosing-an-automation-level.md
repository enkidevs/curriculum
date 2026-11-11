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
    expectedPoint: Its impact is higher and harder to undo, since it can create a commitment before anyone notices the mistake.
    requiredConcepts:
      - It can create a real commitment or harm, or it's hard to undo once the customer acts on it.
    acceptedAnswers:
      - The customer may rely on a refund that never happened.
      - It makes a promise with real consequences.
      - It commits the company before anyone catches it.
    hints:
      - What does the customer do after reading it?
      - Which error is easy to undo?
    tooVagueExamples:
      - It's worse.
      - It's more wrong.
    incorrectExamples:
      - Numbers are always high risk.
      - Refund wording is harder to generate.

---

# Choosing An Automation Level

---
## Content

**The right automation level for an action depends on what a mistake costs and whether you can undo it.**

Say a travel-booking agent may book on its own only within limits: refundable fares under $800. Your code looks up each fare and checks both conditions before any booking runs:

```plain-text
book_flight(flight="214")
  -> $300, refundable: booked
book_flight(flight="881")
  -> $1,240, nonrefundable: sent for approval
```

- **The first** can be cancelled at no cost if it was booked by mistake, so the agent books it alone.
- **The second** commits $1,240 that can't come back, often before anyone notices the mistake. So that booking waits for a manager.

The same booking action runs at different levels depending on the fare. The check runs in your code, using the airline's fare, so a model's misreading of a fare can't get past it.

> 💡 For each action, ask what a mistake would cost and whether you could undo it. Anything costly and permanent waits for a person.

---
## Practice

If booking a fare charges the card at once and can't be refunded, the highest fitting automation level is ???.

- drafts for approval
- acts within limits
- suggests
- acts and reports after

---
## Revision

One AI-drafted support reply is awkward; another falsely says a refund was issued. Why does the second need stronger controls?

???

- It can create a commitment before anyone notices the mistake.
