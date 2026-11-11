---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A triage note marks missing details as unknown instead of filling them in.
    requiredConcepts:
      - "Names at least two missing details: affected accounts, environment or version, exact inputs, how often or repeatable, evidence, whether the suggested cause is real."
    acceptedAnswers:
      - Who is affected and whether it repeats.
      - Environment and any logs or screenshots.
      - Which exports and what inputs were used.
      - Whether it's really permissions, and who is affected.
    hints:
      - What would you need before trying to reproduce it?
      - What did the report not say?
    tooVagueExamples:
      - More info.
      - The details.
    incorrectExamples:
      - Nothing; permissions is the cause.
      - Which team wrote the update.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Bug Triage

---
## Content

Bug triage means turning a rough report into a note the team can act on. An assistant can draft one in seconds, but it tends to fill gaps with likely guesses, and those guesses then get treated as facts.

Say this lands in the team channel:

```plain-text
Hey, a couple of accounts are saying the usage page looks wrong.
One of them said their busiest key isn't at the top. Might be a
caching thing? Can someone look?
```

Ask the assistant to mark every missing detail as unknown:

```plain-text
Symptom: the usage page may not put the busiest key first.
Affected: a couple of accounts; identities and account state unknown.
Environment and version: unknown.
Frequency and repeatability: unknown.
First seen: unknown.
Evidence: none attached.
Suggested cause: caching; unverified.
```

- **Each "unknown"** becomes a question for the reporter, like which accounts and which version.
- **"Caching; unverified"** keeps the reporter's guess visible as something to test.

**Label a guess where it first enters the note.** Without the label, the next person repeats "caching" as the cause.

> 💡 Before anyone starts debugging, check that the note says who is affected, which version they're on, and how often it happens.

---
## Practice

A report says, "Exports sometimes arrive empty after yesterday's update. Maybe permissions?" Name two unknowns your triage note should list.

???

- Which accounts are affected and which version they're on.

---
## Revision

A reporter adds, "Probably the new retry logic." In your triage note, that line is labeled ???.

- suggested cause, unverified
- evidence
- confirmed cause
- symptom
