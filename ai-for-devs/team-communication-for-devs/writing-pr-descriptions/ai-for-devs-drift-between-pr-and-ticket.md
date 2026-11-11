---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Keep and document approved scope; take out unrelated changes.
    requiredConcepts:
      - Keep and record the approved field.
      - Remove the unrelated cleanup.
    acceptedAnswers:
      - Document the timezone approval; put the cleanup in its own PR.
      - Keep the field, note the approval, drop the cleanup.
      - Field stays with its approval noted; the logging change comes out.
    hints:
      - Which change was approved?
      - Does the cleanup belong in this PR?
    tooVagueExamples:
      - Clean up the PR.
      - Explain both.
    incorrectExamples:
      - Remove both since neither was in the ticket.
      - Keep both and explain them in the description.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Mentioning an unapproved change in the PR doesn't make it accepted scope; remove it or get approval.
    requiredConcepts:
      - "No: it needs removal or explicit approval, not just a mention."
    acceptedAnswers:
      - No, mentioning it isn't approval; take it out or get sign-off.
      - Not enough. Get the ticket owner to approve it, or drop it from this PR.
      - No; move the retries to their own PR unless someone approves them.
    hints:
      - Does mentioning a change approve it?
      - Who decides what's in scope?
    tooVagueExamples:
      - Probably not.
      - Flag it.
    incorrectExamples:
      - Yes, as long as the description explains it clearly.
      - Yes, since it's useful and low risk.
---

# Ticket And PR Alignment

---
## Content

Coding assistants often change more than the ticket asked for. Once the PR merges, those extras are part of the product, and nobody agreed to them.

Before you request review, compare the final diff with the ticket. For the refund-status endpoint, they differ like this:

```plain-text
Ticket
  Return status, amount, and updated_at.
  Do not change refund write paths.

Diff
  Also returns currency.
  Renames retryRefundJob to enqueueRefundRetry.
```

- **`currency`** was requested by support, and the ticket owner approved it in a ticket comment. Link that comment and update the acceptance criteria.
- **The rename** has no request or approval behind it. Take it out of this branch.

**Each difference needs a linked approval or a revert before review.**

> ‼️ A common mistake is listing an unapproved change in the PR description and leaving it in. Describing a change doesn't approve it.

---
## Practice

Your PR adds a `timezone` field the ticket owner approved, plus an unrelated logging cleanup. What do you do with each?

???

- Record the approved field; move the cleanup out of this PR.

---
## Revision

While fixing a bug, your assistant also added upload retries nobody asked for or approved. Is describing them in the PR enough? Why?

???

- No; describing them isn't approval. Remove them or get approval.
