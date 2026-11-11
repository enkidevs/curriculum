---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: AI can skip familiar basics and focus on the changes the payroll team needs to act on.
    requiredConcepts:
      - Knowing what the team already knows tells AI what to leave out and what to focus on.
    acceptedAnswers:
      - It can skip the basics and spend the space on what is different.
      - It knows what to add or leave out of the reply.
      - Because the payroll team already uses the system, AI can skip basic explanations and focus on what changes in their work.
      - What they already know tells the assistant what not to explain and where to spend the answer instead.
    hints:
      - What information would be redundant for people who use the system every day?
      - Explain what the answer can focus on once those basics are removed.
    tooVagueExamples:
      - It makes the answer more relevant.
      - It gives context on what information is needed.
    incorrectExamples:
      - It makes the tone warmer because the readers are familiar.
      - It means every point should contain more detail.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A version written for everyone wastes the expert group's time on basics.
    requiredConcepts:
      - It covered basics the daily users already know.
    acceptedAnswers:
      - Too much of it explained what they already know.
      - It was mostly background they didn't need.
      - It over-explained the basics.
    hints:
      - What does the daily team already know?
      - What would they want instead?
    tooVagueExamples:
      - It wasn't good.
      - It was too long.
    incorrectExamples:
      - It used too much technical vocabulary.
      - It was too short to act on.

---

# Audience: Who Reads It

---
## Content

**A is for Audience.** Who receives this, and **what do they already know?**

Here's the same request written for two different readers:

**For the board**

```plain-text
Explain the payroll system migration to our board. They know the budget, not the system. Two paragraphs, no acronyms. Lead with changes to staff pay dates.
```

**For the payroll team**

```plain-text
Explain the payroll system migration to the payroll team. They use the current system every day. Two paragraphs. Lead with the steps that change, and when.
```

The board gets the basics. The payroll team gets only what changes in its routine.

> 💡 Audience tells AI where to start, what to explain, and what it can leave out.

---
## Practice

Why does telling AI that the payroll team uses the current system every day improve the answer?

???

- It can skip the basics and spend the space on what is different.

---
## Revision

The same system-change explanation goes to the board and to the team using it daily. What will that team complain about?

???

- It spent most of its length on things they already knew.
