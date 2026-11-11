---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An assistant only knows decisions in what it can access, so tell it the decision, directly or by pointing to where it's written.
    requiredConcepts:
      - Tells the assistant about the decision.
    acceptedAnswers:
      - Add "we're not adding Redis" to the prompt.
      - Point it to the doc where the decision is written.
      - Tell it the team chose to stay without Redis.
      - You explicitly state we agreed no Redis on a call.
      - Tell it we decided against Redis.
      - Mention the no-Redis decision.
      - Say Redis is off the table.
      - Let it know the team ruled out Redis.
    hints:
      - Where is that decision written?
      - What can the assistant actually see?
    tooVagueExamples:
      - Correct it.
      - Explain more.
    incorrectExamples:
      - Ask it to search the repo more carefully.
      - Ask it to reconsider without saying why.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Claims about systems outside an assistant's access are unsupported.
    requiredConcepts:
      - Production flag state is outside what it can access.
    acceptedAnswers:
      - It has no access to the live flag settings.
      - The repo doesn't show what's switched on in production.
      - It can't check production, so it's guessing.
    hints:
      - Where does the live flag setting live?
      - What can it read?
    tooVagueExamples:
      - It might be wrong.
      - AI makes mistakes.
    incorrectExamples:
      - The flag's name is in the code, so it's confirmed.
      - It's right if the code has a default for the flag.
---

# Access Boundaries

---
## Content

**An assistant can use only the material and systems it has access to.**

Say your team agreed on a call to keep the invoice export synchronous until Q3, but nobody wrote it down in the repo. Here's what the assistant suggests:

```plain-text
You: The invoice export times out for large accounts. Suggest a fix.
Assistant: Move the export to a background queue and email the CSV
when it's ready.
```

That's a reasonable answer to what it could see. The decision that rules it out never reached it, so add the decision to your prompt or point to where it's recorded.

Repository access has edges too. Permission to read `src/` doesn't include ticket comments, CI configuration, staging logs, or live settings like feature flags.

> 💡 When an answer surprises you, ask what evidence could change it, and whether the assistant could reach that evidence.

---
## Practice

Your team agreed on a call not to add Redis. An assistant with repo access suggests Redis anyway. What do you do before asking again?

???

- State the decision in the prompt or point to where it's recorded.

---
## Revision

An assistant with read access only to your repo says the `new-checkout` feature flag is on in production. Why not trust that?

???

- It can't see live flag state, so nothing it read shows that.
