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
    expectedPoint: Fall back, because a safe alternative exists, a person who can finish the listing.
    requiredConcepts:
      - Fall back, or queue it for a person.
    acceptedAnswers:
      - Fall back and send it to a person.
      - Queue it for someone to finish.
      - Fallback, since there's a safe alternative.
    hints:
      - Is there still a safe way to get this listing done?
      - When is failing the right call?
    tooVagueExamples:
      - Handle it.
      - Do something else.
    incorrectExamples:
      - Fail, since the retries didn't work.
      - Keep retrying until it passes.

---

# Repair, Fallback, And Failure

---
## Content

Besides retrying, your app has three other ways to handle a reply that fails validation. **Each one fits a different kind of failure:**

- **Repair it in code** when there's one right fix. If the schema wants a number and the reply has `"weight_kg": "1.2"`, then `float("1.2")` fixes it without another model call.
- **Fall back** when there's a safe alternative. If a listing still fails after its retries, your code can queue it for a person to finish.
- **Fail with a clear error** when nothing safe is left, such as `listing 4417: missing field category`. The broken listing never goes live.

A missing `category` can't be repaired in code, because picking one takes judgment. That one goes back to the model, or to a person.

---
## Practice

A reply has `"quantity": "3"` where the schema wants an integer. The cheapest recovery is a ???.

- code repair
- model retry
- fallback
- clear error

---
## Revision

A listing still fails validation after its retries, and a person could finish it. Fall back or fail?

???

- Fall back, and queue it for a person to finish.
