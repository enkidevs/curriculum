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
    expectedPoint: High-stakes work keeps humans on scope and verification.
    requiredConcepts:
      - Human scope and strong human verification.
    acceptedAnswers:
      - People define scope and verify; AI just drafts.
      - Human-scoped, AI-drafted, carefully checked.
      - A person owns scope, AI drafts, then strong review and tests.
    hints:
      - Who should set scope?
      - How strong must checks be?
    tooVagueExamples:
      - Carefully.
      - With a human.
    incorrectExamples:
      - AI picks scope; a human reads the summary.
      - A codemod reuses an old migration.
---

# When To Use A Codemod Instead

---
## Content

Some changes follow one rule with no judgment, like renaming `slaDeadline` to `slaDueAt` across forty files. A codemod[1] or your editor's rename applies that rule the same way to every match.

An assistant's patch can vary from file to file, so you'd have to review every line.

**For mechanical work, use a tool that applies a fixed rule:** renames, formatters, type checks, and exact searches.

When the task needs judgment, you set the scope, the assistant proposes, and you check the result against code, tests, or runtime behavior.

> ‼️ A common mistake is handing high-stakes work to the assistant end to end. For migrations, authentication, payments, and anything destructive, people set the scope and run strong checks on what it drafts.

---
## Practice

You must apply your team's formatting rules to 200 files with no behavior change. The best tool is ???.

- the project's formatter
- an assistant-generated patch
- one prompt per file
- careful manual edits

---
## Revision

A payments migration needs judgment and is costly to reverse. How should work be split between people and AI?

???

- A human scopes, AI drafts, humans verify with strong checks.

---
## Footnotes

[1: Codemod]
A script that rewrites source code mechanically across a project using explicit rules. Given the same input and configuration, it applies the same transformation.
