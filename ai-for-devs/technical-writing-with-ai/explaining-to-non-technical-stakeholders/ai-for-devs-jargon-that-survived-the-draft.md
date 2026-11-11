---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Keep terms the audience uses when they carry the answer; drop internal ones.
    requiredConcepts:
      - Keeps "webhooks".
      - Because support knows it or it identifies the affected accounts.
    acceptedAnswers:
      - Webhooks, since customers set them up and support staff know the word.
      - Keep webhooks; it tells support staff which accounts were hit.
      - Webhooks stays, retry queue goes.
    hints:
      - Which term would a customer recognize?
      - Which term helps support staff find affected accounts?
    tooVagueExamples:
      - The important one.
      - The precise term.
    incorrectExamples:
      - Retry queue, since it names what broke.
      - Neither; remove every technical term.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Cut or explain the internal term support doesn't use; keep the terms they do.
    requiredConcepts:
      - Drops or explains "reconciliation job".
      - Keeps "Pro plan" and "refund".
    acceptedAnswers:
      - Cut "reconciliation job" or say "a nightly check"; keep the other two.
      - Reconciliation job goes, since support doesn't use it; Pro plan and refund stay.
      - Explain the job by what it does, and keep the plan and refund words.
    hints:
      - Which of the three would support not recognize?
      - Does support need the job's name to answer a customer?
    tooVagueExamples:
      - Remove the technical one.
      - Simplify it.
    incorrectExamples:
      - Cut all three terms.
      - Keep "reconciliation job" because it's the precise term.
---

# Jargon Removal

---
## Content

Ask an assistant to "remove the jargon" from an update for support, and it can strip out the very words support needs to find affected customers.

Say the active-users dashboard now counts activity sent through the API. A fully jargon-free draft leaves support with this:

```plain-text
We fixed a problem with the active users number. It is now correct.
```

It has no jargon, and support can't do anything with it. They can't tell which customers were affected.

Support already uses the word "integration," and it describes exactly which accounts were hit. So keep it, and explain "API" by what it does here:

```plain-text
Active-user totals were too low on 37 accounts because activity sent
only through customer integrations, using our API, was omitted. The
dashboard now includes it. No customer data was lost.
```

**Keep the product words support already uses, and briefly explain any other term the answer needs.** Cut internal terms like "aggregation query," since they don't help anyone answer a customer.

> ‼️ A common mistake is asking the assistant to cut every technical word. Ask it to keep the terms your reader uses and cut the ones only your team uses.

---
## Practice

Your update for support says a stalled retry queue delayed webhook accounts. Support staff set up customer webhooks. Which term stays, and why?

???

- "Webhooks"; support staff know it, and it shows who was affected.

---
## Revision

Your update for support says a nightly reconciliation job delayed Pro plan refunds. Support knows plans and refunds, not the job. What should change?

???

- Cut or explain "reconciliation job", like "a nightly check"; keep the other two.
