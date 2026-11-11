---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The wrong decision is corrected to match the meeting record before anyone relies on it.
    requiredConcepts:
      - The wrong decision is corrected to match the record before sending.
    acceptedAnswers:
      - "Replace it: phased rollout rejected, single cutover chosen."
      - Check with the decision owner and correct the summary.
      - Don't send it until the decision line matches the record.
    hints:
      - What source can confirm what the group decided?
      - Should the wrong line go out as it is?
    tooVagueExamples:
      - Fix it.
      - Disagree with the summary.
    incorrectExamples:
      - Forward it with a vague note that it may be wrong.
      - Treat the AI summary as the official record.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An ambiguous decision gets confirmed with the person who owns it, not guessed or blurred.
    requiredConcepts:
      - Confirm with the decision owner before the handoff goes out.
    acceptedAnswers:
      - Ask the decision owner which rollout was picked, then send.
      - Check with whoever made the call before sending it.
      - Get the owner to confirm the option first.
    hints:
      - Who can settle what was decided?
      - Should the handoff go out while it is unclear?
    tooVagueExamples:
      - Make sure it's right.
      - Check the notes again.
    incorrectExamples:
      - Pick the option that sounds more practical.
      - Say both options were discussed and send it.

---

# Correcting An AI Summary

---
## Content

The summary says the team chose a phased rollout. In the meeting, that option was rejected and a single cutover was chosen.

Treat it as a draft, and check its decisions, owners, dates, conditions, and rejected options against the meeting record.

If the record is unclear, ask the person who made the decision before you forward anything.

Then fix the error directly:

```plain-text
Correction: The team rejected a phased rollout and chose one cutover. Sam confirms the cutover date by Friday.
```

**If the wrong summary has already gone out, send a correction to the same people before anyone acts on it.**

> 💡 When the record doesn't show what was chosen, ask the decision owner before sending.

---
## Practice

An AI summary says a phased rollout was chosen; the meeting record shows a single cutover. What do you do before sending?

???

- Fix the summary to say a single cutover was chosen, then send.

---
## Revision

The meeting record doesn't make clear which rollout option was chosen. What should you do before sending the handoff?

???

- Confirm the chosen option with the decision owner before sending.
