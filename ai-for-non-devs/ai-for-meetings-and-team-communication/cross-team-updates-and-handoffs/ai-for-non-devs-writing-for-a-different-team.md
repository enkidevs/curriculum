---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The ambiguous term is replaced or defined with the plain task so finance doesn't read it as month-end accounting.
    requiredConcepts:
      - Uses plain words for the task (matching migrated records) or defines the term.
    acceptedAnswers:
      - Say "matching old and new membership records" instead.
      - "Define it: a migration task, not month-end reconciliation."
      - Swap the word for what we actually mean and keep the date.
      - Match migrated records.
      - Write "matching migrated records" instead.
      - Explain that it means matching old and new records.
    hints:
      - What does "reconciliation" mean in each team?
      - Which facts must stay the same?
    tooVagueExamples:
      - Remove jargon.
      - Make it simpler.
    incorrectExamples:
      - Keep the term because finance already knows the word.
      - Let AI swap it without checking the meaning survives.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A term needs clarifying when the other team could interpret it differently and act on that.
    requiredConcepts:
      - The other team could read the term as meaning something else.
    acceptedAnswers:
      - If it might mean something else in their team, define it.
      - When their team uses the same word for a different thing.
      - When they could take it the wrong way and act on it.
    hints:
      - Could the same word mean something else in their work?
      - What goes wrong if they read it their way?
    tooVagueExamples:
      - If it's confusing.
      - When it's jargon.
    incorrectExamples:
      - If it appears more than once.
      - If it sounds technical to you.

---

# Writing For A Different Team

---
## Content

The migration update says "reconciliation finishes on the 12th."

The project team means matching old membership records with the new system. Finance may read "reconciliation" as a month-end accounting process.

The problem is a familiar word carrying two meanings.

**AI can flag words another team might read differently, so you can choose the replacement**:

```plain-text
Flag terms finance may use differently. For each, show our meaning, their possible meaning, and a clear replacement. Preserve statuses and dates.
```

Check the suggestions against a team glossary or with someone on that team. The fixed line could read:

"Matching old and new membership records finishes on the 12th. This is a migration task, not month-end financial reconciliation."

> 💡 If a word means something else to the other team, define it or use plain words.

---
## Practice

Your team uses "reconciliation" for matching migrated records; finance uses it for month-end accounting. How should your update to finance handle it?

???

- Define it as matching old and new records, or use plain words instead.

---
## Revision

When writing an update for another team, how do you decide whether a term needs clarifying?

???

- Clarify it if their team might read it as something different.
