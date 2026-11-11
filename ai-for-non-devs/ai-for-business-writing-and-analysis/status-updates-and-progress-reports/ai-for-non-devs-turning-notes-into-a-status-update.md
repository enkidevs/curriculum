---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Giving AI the reporting structure keeps the update organized and comparable month to month.
    requiredConcepts:
      - A set structure or headings to sort the notes into.
    acceptedAnswers:
      - The same headings every month.
      - Last month's update to use as a template.
      - Sections to sort the notes into.
    hints:
      - What should every month's update look like?
      - What does "tidy up" leave up to AI?
    tooVagueExamples:
      - Clearer instructions.
      - More detail.
    incorrectExamples:
      - Let it decide what matters.
      - A shorter version of the notes.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Unconfirmed dates appear as open items, not milestones.
    requiredConcepts:
      - An open item to confirm.
    acceptedAnswers:
      - "May 3 go-live: unconfirmed, needs checking."
      - "Open question: is May 3 confirmed?"
      - Tentative, pending confirmation.
    hints:
      - Is it confirmed?
      - What does the question mark mean?
    tooVagueExamples:
      - Mention it.
      - Carefully.
    incorrectExamples:
      - As the go-live date.
      - Leave it out.

---

# Turning Notes Into A Status Update

---
## Content

A depot project's monthly notes mix completed work, changed dates, open questions, and risks.

Give AI the reporting structure instead of asking it to "tidy this up":

```plain-text
Using only these notes, draft Overall Status, Completed, Changed Since Last Update, Next Steps, Risks, and Decisions Needed. Keep every date and owner attached to its item. Mark unclear details as questions. List any unused note at the end.
```

Then compare the draft with the notes. **Every note should either appear or be left out on purpose.**

An open question about the loading bay goes under risks only if leaving it open could delay a milestone. How long it's been open doesn't decide that.

> 💡 Check that unclear details, like an unconfirmed go-live date, come back as questions and not as settled facts.

---
## Practice

AI "tidies up" your monthly notes into a status update organized differently every month. What should you give it instead?

???

- The fixed headings to use, like Completed, Risks, and Next Steps.

---
## Revision

A source note says "go-live May 3?" with no confirmation. How should the status update show it?

???

- As an open item to confirm, not a settled date.
