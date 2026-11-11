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
    expectedPoint: The line limits the answer to the notes and marks anything missing.
    requiredConcepts:
      - Tells AI to use only the notes and mark gaps instead of filling them.
    acceptedAnswers:
      - If the notes don't cover it, write 'not stated'.
      - Only use what's in my notes; add nothing else.
      - Anything not in the notes gets marked 'not in notes'.
    hints:
      - What should AI do when the notes are silent?
      - How would you spot a gap?
    tooVagueExamples:
      - Summarize accurately.
      - Stick to the facts.
    incorrectExamples:
      - Keep it under ten lines.
      - Write in plain English.

---

# Response: The Shape Of The Answer

---
## Content

**R is for Response.** What shape should the answer take, and **what must be true before you'd use it?**

A format tells AI what to produce: a table, five bullets, an email, or one paragraph.

An acceptance criterion tells it how the result will be judged. For example:

```plain-text
Make a table with three columns: risk, who it affects, action. Eight rows maximum. Every row must use a date or figure from my notes. If the notes don't say, write "not stated".
```

The table is the format. The rule to write "not stated" when the notes don't say is an acceptance criterion. It stops AI from filling gaps with details your notes don't contain.

> 💡 Format shapes the answer. Acceptance criteria make it checkable.

---
## Practice

In a prompt, the line "Where the notes don't say, write 'not stated'" is ???.

- an acceptance criterion
- a tone instruction
- a style instruction
- extra context

---
## Revision

AI's summaries of your meeting notes keep adding details the notes never mention. Write one prompt line that fixes this.

???

- Where the notes don't say, write "not stated" instead of filling it in.
