---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An assigned ticket turns unrequested additions into apparent approved scope.
    requiredConcepts:
      - The additions read as approved scope.
    acceptedAnswers:
      - The developer will treat the extras as required work.
      - Unapproved items become part of the job.
      - Everything in it looks agreed, including the extras.
    hints:
      - How will the assignee read the ticket?
      - Who approved the extras?
    tooVagueExamples:
      - It could be confusing.
      - Scope issues.
    incorrectExamples:
      - The developer picks the cheapest extra.
      - Extras move to a follow-up automatically.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Unrequested scope comes out unless its owner decides to add it.
    requiredConcepts:
      - Remove it or get the owner's decision.
    acceptedAnswers:
      - Take it out unless the owner wants it.
      - Cut it or check with whoever owns the scope.
      - Delete it or record it as a separate proposal.
    hints:
      - Did anyone request it?
      - Who decides scope?
    tooVagueExamples:
      - Review it.
      - Think about it.
    incorrectExamples:
      - Keep it; it's closely related.
      - Mark it optional for the developer.
---

# Scope Control

---
## Content

An assistant turning a short request into a ticket often adds extra work that sounds reasonable. Whoever picks up the ticket can't tell which lines anyone actually asked for.

Say the request was to give support access to refund status. The generated ticket also lists these, and nobody asked for them:

```plain-text
- Migrate the permission table to a typed enum.
- Add an audit event for every refund view.
- Include the refund reason code in the support response.
```

- **The enum migration and audit event** are clearly extra work.
- **The reason code** is easier to miss. It sounds helpful, and it reads like a settled requirement.

**Remove all three.** If one is worth doing, record it as a separate proposal for its owner to decide.

> ‼️ A common mistake is assigning a generated ticket as it is. Every line under Requirements looks approved to whoever picks it up.

---
## Practice

A generated ticket added three items nobody requested. What happens if you assign it unchanged?

???

- All three additions look like approved scope to whoever picks it up.

---
## Revision

A generated CSV-export ticket adds "also email the file to the account owner," which nobody requested. What should you do?

???

- Remove it, or ask the responsible owner to decide.
