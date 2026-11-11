---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Test a detail by asking whether the answer would change if the detail were left out.
    requiredConcepts:
      - whether the answer would change without the detail
    acceptedAnswers:
      - Ask whether the answer would change if you left the detail out.
      - Remove it in your head and check whether AI would need to answer differently.
      - Keep the detail only if omitting it would materially change the result.
    hints:
      - Use a test based on the answer, not on whether the detail feels related.
      - Imagine deleting the detail before you send the prompt.
    tooVagueExamples:
      - Ask if it is relevant.
      - Include only important details.
    incorrectExamples:
      - Include every detail that is connected to the situation.
      - Keep a detail whenever it is short.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Pasting the whole thread made the internal disagreement look important.
    requiredConcepts:
      - the supplied material made the side issue look important
    acceptedAnswers:
      - The whole thread made the side issue look important.
      - By including the argument, you gave AI a reason to treat it as part of the notice.
      - Too much context gave the internal disagreement more weight than the lock update.
    hints:
      - Think about what the amount of space given to the disagreement signals.
      - Compare the internal approval argument with what tenants actually need to know.
    tooVagueExamples:
      - There was too much information.
      - The thread was too long.
    incorrectExamples:
      - The disagreement appeared only because it was the newest message.
      - The problem was that the requested notice had no word limit.

---

# The Minimum Useful Context

---
## Content

Start with the context, then trim it. For each detail, ask: **Would the answer change without it?**

You need a tenant notice about a broken lock. The source is a 40-message thread with internal debate. Only a few facts affect the notice:

```plain-text
The building's front-door lock has been broken since Friday. The replacement arrives Wednesday. Until then, the side entrance is open from 7:00 a.m. and security is on site. Write a notice for tenants.
```

The approval argument is related, but does not change what tenants need. Pasting it gives that side issue more weight than it deserves.

> 💡 Keep a detail only if it changes what AI should say or do.

---
## Practice

How can you test whether a detail belongs in a prompt?

???

- Ask whether the answer would change if you left the detail out.

---
## Revision

You pasted a whole thread to get a tenant notice, and half the notice covers an internal disagreement. Why?

???

- The whole thread made the side issue look important.
