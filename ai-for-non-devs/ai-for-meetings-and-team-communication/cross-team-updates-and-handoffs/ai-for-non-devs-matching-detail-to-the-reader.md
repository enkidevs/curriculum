---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The person doing the work needs the steps to run it and what to do if something goes wrong.
    requiredConcepts:
      - Steps to carry out the migration, or what to do if something goes wrong.
    acceptedAnswers:
      - Step-by-step instructions plus what to do if it goes wrong.
      - The run sequence and the rollback plan.
      - Exact steps and recovery details so they can do it safely.
      - Every necessary detail like step by step instructions.
      - Instructions on what to do, step by step.
      - Every necessary detail for the migration, like step by step instructions.
      - The exact steps to follow.
      - A backup plan if it fails.
    hints:
      - What will they actually be doing?
      - What do they need if a step fails?
    tooVagueExamples:
      - More detail.
      - Everything relevant.
    incorrectExamples:
      - The director's three-line summary.
      - The history of how each decision was made.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A short version keeps whatever changes what the director decides or does.
    requiredConcepts:
      - Points that affect the director's decision or action.
    acceptedAnswers:
      - Anything that changes what the director needs to decide.
      - The parts that need the director's choice or reply.
      - What affects their decision, like risks needing sign-off.
    hints:
      - What will the director do with this update?
      - Which details would change their choice?
    tooVagueExamples:
      - The important parts.
      - A short summary.
    incorrectExamples:
      - The full cutover sequence.
      - The technical details of every check.

---

# Matching Detail To The Reader

---
## Content

The operations director and billing administrator need different amounts of detail from the same checked migration record.

The director needs the impact on their teams, the risks that matter, the decision or request, and the next milestone.

The administrator running the cutover needs the exact steps, what must be ready first, the checks, the backup plan, owners, and who to call for help.

Write both versions from the same source record. **A shorter version still has to keep any condition or risk that could change the reader's decision.**

A longer version can't add steps the team never agreed to.

Ask AI to draft at the reader's required depth, then verify both versions against the source.

> 💡 Change the depth, not the underlying state of the work.

---
## Practice

A billing administrator will personally run a system migration. What must the migration update written for them include?

???

- The steps to run the cutover and how to recover if it fails.

---
## Revision

You're cutting the migration update down to a few lines for the director. What must those lines still keep?

???

- The points that affect the director's decision or response.
