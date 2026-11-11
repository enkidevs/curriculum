---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An early mistake can feed the steps that follow it, or it can become an action before a person sees it.
    requiredConcepts:
      - An early mistake can feed later steps, or it can turn into an action before a person sees it.
    acceptedAnswers:
      - An early mistake can become the input for later steps, so the agent may continue confidently in the wrong direction.
      - Every step adds another chance to misread something, and later actions can build on the error.
      - More autonomy lets a mistake travel through the workflow before a person notices it.
    hints:
      - What does step three use from step two?
      - When does a mistaken answer become a real-world action?
    tooVagueExamples:
      - Agents make mistakes.
      - Longer tasks are risky.
    incorrectExamples:
      - Every agent step is automatically less accurate than a chatbot answer.
      - An agent becomes safer when nobody interrupts its workflow.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check real results, not the agent's own report.
    requiredConcepts:
      - Real files checked, not the agent's summary.
    acceptedAnswers:
      - Open some filed receipts and compare dates.
      - Spot-check actual files.
      - A sample of the real output against the receipts.
    hints:
      - Can you trust its own summary?
      - What's the real result?
    tooVagueExamples:
      - Check it.
      - The results.
    incorrectExamples:
      - The agent's own run summary.
      - How confident its report sounds.

---

# Where They Go Wrong

---
## Content

**Every extra step creates another place for an agent to go wrong.**

A mistake at step two can become the input for step three. The agent may then carry the wrong assumption through the rest of the job.

The quiet failures are hardest to spot. Say it files 200 receipts by the date they were scanned instead of the date printed on them. It does this consistently and never shows an error.

Three checks help:

- try the first run on a small batch you're allowed to use
- require your approval before it sends, pays, deletes, or does anything hard to undo
- check the results themselves against the originals

> ‼️ A common mistake is trusting the agent's report. Check a sample of what it actually did.

---
## Practice

Why does giving an agent more steps and autonomy create more risk than asking for one answer?

???

- An early mistake can shape later steps and become an action before anyone notices it.

---
## Revision

An agent reports that it filed a batch of receipts correctly. What should you check before trusting that?

???

- A sample of the actual filed receipts against their printed dates.
