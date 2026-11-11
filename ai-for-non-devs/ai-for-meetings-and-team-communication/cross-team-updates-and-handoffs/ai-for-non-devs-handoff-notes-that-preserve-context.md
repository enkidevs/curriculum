---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Besides the pass, the handoff covers the earlier failures and what to do if it fails again.
    requiredConcepts:
      - Mentions the earlier failures or why it failed, or says what to do if it fails again.
    acceptedAnswers:
      - It failed twice, so retest if it breaks and use the fallback.
      - The two failures, and what to do if it happens again.
      - Its failure history and the backup plan.
      - Why it fails and how they can proceed if it does.
      - That it failed twice before.
      - What to do if it fails again.
    hints:
      - Is the final status enough to continue safely?
      - What would they need if the problem returns?
    tooVagueExamples:
      - Mention the test.
      - Add more background.
    incorrectExamples:
      - Nothing else; it passed.
      - Reopen the test without saying why.
      - Confirm in the meeting records.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An item with no confirmed owner is shown as unassigned and flagged so someone confirms an owner.
    requiredConcepts:
      - It is shown as unassigned, with a flag to confirm the owner.
    acceptedAnswers:
      - "Owner: unassigned, to be confirmed."
      - List it as having no owner yet and ask who takes it.
      - Leave the owner blank and mark it for confirmation.
    hints:
      - Should the receiver become the owner by default?
      - How would someone see it still needs an owner?
    tooVagueExamples:
      - Note it somewhere.
      - Mention it in the handoff.
    incorrectExamples:
      - Assign it to the person receiving the handoff.
      - Leave it out until someone claims it.
      - Confirm in the meeting records.

---

# Handoff Notes That Keep The Context

---
## Content

You are away for two weeks while a colleague takes over the billing migration.

**A useful handoff lets them continue without reconstructing the project.**

Include:

- where things stand and what's confirmed done
- the next step
- pending items with owners, dependencies, and dates
- decisions and assumptions that shape the work
- what to watch for and the backup plan
- links, access, and who to call for help

Say the direct-debit test passed after failing twice. The pass goes under Done. The two failures, when to retest, and the backup plan go under Watch.

Mark unknown owners or dates to confirm. Don't make your colleague the owner by default.

> 💡 For anything that failed before, note what to watch for and the backup plan.

---
## Practice

A payment test passed after two failures. Besides the pass, what should the handoff to your colleague say?

???

- That it failed twice before, what to watch for, and the fallback.

---
## Revision

You're writing a handoff note before going on leave. One open item has no confirmed owner yet. How should you record it in the note?

???

- Mark it unassigned and flag that an owner needs confirming.
