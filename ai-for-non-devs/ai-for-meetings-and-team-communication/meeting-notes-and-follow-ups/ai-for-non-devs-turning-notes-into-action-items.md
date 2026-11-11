---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Show the action as unassigned and undated until someone confirms an owner and deadline.
    requiredConcepts:
      - The owner and deadline stay unconfirmed until someone agrees to them.
    acceptedAnswers:
      - Unassigned and undated until someone confirms.
      - Unassigned, with no deadline.
      - Mark the owner and date as unconfirmed.
      - Remove Marco and the date, and ask who'll take it.
      - As needing an owner and a deadline.
    hints:
      - What did the notes explicitly say?
      - Can proximity to a name create a commitment?
    tooVagueExamples:
      - Check with Marco.
      - Fix the action list.
    incorrectExamples:
      - Assign it to Marco since AI picked that name.
      - Keep Friday because every action needs a date.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Turning Notes Into Action Items

---
## Content

The notes say "someone to redo the help page." The generated action list says:

```plain-text
Redo the help page. Owner: Priya. Due: June 12.
```

Neither the owner nor date appears in the notes. **A nearby name is not a commitment.**

A stricter request stops that:

```plain-text
Extract each action, owner, and deadline. Include the source note. Use an owner or date only when explicitly stated. Otherwise write "unassigned" or "not set" and mark it for confirmation. Do not infer from nearby text.
```

Ask the group to fill in the blanks. Until someone agrees, the task exists but nobody has taken it on.

> ‼️ A common mistake is sending an action list with owners nobody agreed to. Mark them "unassigned" until someone does.

---
## Practice

Notes say "someone to update the pricing sheet"; AI assigns Marco, due Friday. How should the follow-up show that action?

???

- Unassigned and undated until someone confirms.

---
## Revision

AI assigns a task to the nearest named attendee. Treat that as ???.

- unconfirmed
- an accepted commitment
- a sensible default
- the note-taker's call
