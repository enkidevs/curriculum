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
    expectedPoint: Polished wording can't supply missing task decisions such as behavior and boundaries.
    requiredConcepts:
      - The rewrite added wording, not the missing decisions (what to build, what it may touch, how to check it).
    acceptedAnswers:
      - It still didn't say what the code should do or what it may change.
      - Wording isn't the problem; the decisions are still missing.
      - Nicer phrasing left the same gaps in scope and success criteria.
    hints:
      - What did the rewrite actually add?
      - What did the assistant still have to guess?
    tooVagueExamples:
      - It wasn't clear enough.
      - It needed more detail.
    incorrectExamples:
      - It needed a stronger persona.
      - The model just ignores long prompts.
---

# Task Briefs

---
## Content

When you ask an AI coding assistant to build something, it has to decide everything your request doesn't say.

Here are two requests for a feature that lets support agents look up a refund's status:

**🚫 Vague**

```plain-text
Add refund visibility for the support team.
```

**🚫 Polished but incomplete**

```plain-text
As an experienced Node developer, please implement a clean, well-tested
refund-status feature for support agents. Follow best practices.
```

- **The first** doesn't say what the feature returns or what code it may change.
- **The second** sounds more professional but leaves the same two questions open.

**Nicer wording doesn't help if the request still leaves the decisions to the assistant.**

A task brief makes those decisions in five parts: task, scope, constraints, acceptance criteria, and response shape.

> 💡 Before you polish a request, list what the assistant would still have to guess.

---
## Practice

You prompt "As a senior developer, write a clean CSV importer" and get the wrong columns. The prompt lacked ???.

- the column names
- a stronger persona
- firmer wording
- a best-practices reminder

---
## Revision

You polish a vague request into longer prose, but the assistant still misses what you needed. Why didn't that help?

???

- Better wording doesn't add the missing decisions, like what it may change.
