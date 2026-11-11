---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Only steps in the log actually happened, so with no migration command there, the migration didn't run.
    requiredConcepts:
      - The migration didn't run.
    acceptedAnswers:
      - No, the log shows no migration command, so it never ran.
      - No. The model wrote that it ran, but the assistant never ran it.
      - It didn't; the summary is just text the model wrote.
    hints:
      - What does the log show the assistant actually ran?
      - Which part wrote the summary?
    tooVagueExamples:
      - Maybe.
      - Hard to say.
    incorrectExamples:
      - Yes, the summary says it ran.
      - Yes, migrations don't always show up in the log.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Model And Assistant Layers

---
## Content

An AI coding tool has two layers:

- **The model**, like Claude or GPT, only writes text.
- **The assistant**, like Cursor, Copilot, or Claude Code, is the app around it. It chooses which files the model sees, and it's the part that actually edits files and runs commands.

**So when the model says it did something, check that the assistant actually did it.**

For example, an agent might end a task with this summary:

```plain-text
Done! I fixed the date bug and all tests pass.
```

But the assistant's log shows it read and edited one file and never ran the tests:

```plain-text
Read   src/dates.js
Edit   src/dates.js
```

The summary is text the model wrote. Only the steps in the log actually happened.

> 💡 Trust what the log shows the assistant ran, not what the model says it did.

---
## Practice

An agent's summary says it ran the database migration, but its log only shows edits to two files. Did the migration run?

???

- No. Nothing in the log ran it, so it's only a claim the model wrote.

---
## Revision

A browser chat and an editor assistant share one model; only the editor sees your open file, through its ???.

- tools and permissions
- training data
- larger context window
- conversation history
