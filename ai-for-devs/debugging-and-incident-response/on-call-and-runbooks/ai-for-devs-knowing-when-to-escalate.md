---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Actions that affect safety or security, or exceed your authorization, need the owner's decision.
    requiredConcepts:
      - Names the owner of that risk as the one who decides.
    acceptedAnswers:
      - Whoever owns payments and fraud risk.
      - Escalate to the person who can approve that risk.
      - Not me; the owner who can accept a security risk.
      - Whoever owns those two things.
      - The payments owner.
    hints:
      - Who can accept a security risk?
      - Can you decide this alone?
    tooVagueExamples:
      - Someone senior.
      - Escalation.
    incorrectExamples:
      - You, since it's the fastest fix.
      - The assistant, since it suggested it.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Escalation Criteria

---
## Content

On call, some fixes aren't yours to make, however confident the assistant sounds. Escalating means handing that decision to the person who owns it, so you don't take on a risk you can't approve.

Say the image-processing queue is falling, with the worker pool at the runbook's limit of 35. An assistant suggests two ways to clear it faster:

```plain-text
1. Scale the worker pool to 45.
2. Delete the oldest queued uploads.
```

- **Scaling to 45** goes past the limit you're allowed to approve.
- **Deleting uploads** throws away customer work, and you can't undo it.

Neither decision belongs to you or the assistant. Send the owner the facts, the decision, and why it needs them:

```plain-text
Queue age is falling with 35 workers. Scaling further exceeds the
runbook limit; dropping queued uploads loses customer work. Both need
an owner decision. We will hold at 35 while you choose the next action.
```

**Escalate when the next step goes past what you're allowed to do, affects safety or security, can't be undone, crosses an agreed threshold, or needs a business decision.**

> ‼️ A common mistake is asking the assistant for one more opinion instead. That's still investigating, and the decision is still waiting for its owner.

---
## Practice

You're on call. An assistant says the fastest fix is disabling payment fraud checks for an hour. Who decides?

???

- The owner authorized to accept that risk, not you.

---
## Revision

On call, the next step that needs someone else's sign-off is ???.

- deleting queued emails
- restarting one worker
- adding per-job logging
- a health check
