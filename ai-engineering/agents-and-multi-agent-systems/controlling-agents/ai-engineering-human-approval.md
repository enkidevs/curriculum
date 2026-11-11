---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Approval binds to the exact action reviewed, not to the price.
    requiredConcepts:
      - It no longer holds, because the action changed from what was approved.
    acceptedAnswers:
      - No; I never approved this flight.
      - No, the booking changed, so it needs a new approval.
      - No. Approval covers only the exact booking I saw.
    hints:
      - What did you actually approve?
      - Does a matching price mean a matching booking?
    tooVagueExamples:
      - Probably not.
      - It depends.
    incorrectExamples:
      - Yes, because the fare is still $1,240.
      - Yes, until the approval expires.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Approval requests should be triggered by facts the application can check itself, not by the model's self-reported confidence.
    requiredConcepts:
      - Facts your code can check, such as amount, refundability, or action type.
    acceptedAnswers:
      - Checkable facts like the amount or whether it's refundable.
      - Risk facts code can verify, not the model's confidence.
      - Rules on the action itself, like cost or irreversibility.
    hints:
      - Can a model's confidence be trusted on a wrong answer?
      - What can your code check on its own?
    tooVagueExamples:
      - Better signals.
      - More review.
    incorrectExamples:
      - Confidence, with a threshold tuned weekly.
      - A random sample of requests.

---

# Human Approval

---
## Content

Some actions are irreversible, cost money, or reach people outside your company.

For these, the agent pauses and a person confirms the action before your code runs it. This is called human approval.

Before buying a nonrefundable fare, a travel-booking agent's code sends a manager this:

```plain-text
Approve this booking for Dana Ortiz?
  Flight 881, SFO to London, Mon 4:10 pm
  Fare: $1,240, nonrefundable
  Charged to: Sales travel budget
  [Approve]  [Reject]
```

**Your code stores this exact booking and runs only that on Approve, so the model can't change it in between.** If the airline changes the fare first, the manager is asked again:

```plain-text
The fare for flight 881 changed from $1,240
to $1,295. Approve the new fare?
```

Your code decides when to ask from facts it can check, like whether a fare is refundable. The model's confidence is a poor trigger, because models can be confidently wrong.

> ‼️ A common mistake is asking too often. A manager asked about every $150 refundable fare learns to tap Approve without reading, even on the $1,240 one.

---
## Practice

You approve a $1,240 booking, then the agent swaps in a different flight at the same fare. Does your approval hold?

???

- No. It no longer matches the booking you approved.

---
## Revision

Your team wants approval requests only when the model reports low confidence. What should trigger them instead?

???

- Risk facts your code can check itself, like amount or refundability.
