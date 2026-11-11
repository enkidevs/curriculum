---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Plan first when a wrong approach would be costly, such as multi-file or auth changes.
    requiredConcepts:
      - Picks the session-token change.
      - Because it spans several files or touches auth.
    acceptedAnswers:
      - The auth change, since it's multi-file and security-sensitive.
      - Token checks; a mistake there is costly and spread across files.
      - The session one; a wrong approach there is expensive to undo.
    hints:
      - Which mistake would cost more?
      - Which touches sensitive behavior?
    tooVagueExamples:
      - The bigger one.
      - The second, it's harder.
    incorrectExamples:
      - The typo, since users see error messages.
      - Both; always plan before any AI change.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Skip the plan when the diff itself is quicker to review.
    requiredConcepts:
      - The diff is quicker to review than a plan.
    acceptedAnswers:
      - Reading the small diff is faster than reading a plan.
      - A plan would take longer than checking the change.
      - The change is easy to inspect directly, so a plan adds nothing.
    hints:
      - Which is faster to check here?
      - What could a plan catch that the diff can't?
    tooVagueExamples:
      - It's simple.
      - It's small.
    incorrectExamples:
      - Log messages can't cause bugs.
      - Plans are only for new features.
---

# When A Plan Is Worth It

---
## Content

Asking for a plan before code costs an extra round trip. It pays off when a wrong approach would be expensive to review or undo.

**Ask for a plan first when the change has any of these signs:**

- code you don't know well
- several files
- a public interface
- a migration or deletion
- payment or authorization behavior

Pulling retry scheduling out of the webhook delivery worker has two of them: it spans several files, and other jobs may depend on its behavior.

> 💡 Skip the plan for a local rename or a one-line fix. Reading the diff is faster than reading a plan.

---
## Practice

You'll fix a typo in an error message and change session token checks across four files. Which needs a plan first, and why?

???

- The token change; it spans several files and touches auth.

---
## Revision

Your assistant offers a plan before changing one log message in one file. Why isn't the plan worth it?

???

- The one-line diff is faster to review than a plan.
