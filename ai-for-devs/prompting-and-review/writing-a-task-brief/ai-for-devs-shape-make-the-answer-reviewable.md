---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Ask for the shape you will review next: for a small fix, a focused diff with tests."
    requiredConcepts:
      - A small, focused diff of just the change, not whole files or prose.
    acceptedAnswers:
      - Only the changed lines as a diff.
      - The patch and a test for it.
      - Just the diff, no explanation.
    hints:
      - What will you read in review?
      - What is easiest to check line by line?
    tooVagueExamples:
      - Something shorter.
      - A better answer.
    incorrectExamples:
      - The same file, with comments explaining each change.
      - A longer summary of each change.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The response shape should match what you need to inspect next.
    requiredConcepts:
      - A plan or outline of the approach, not code yet.
    acceptedAnswers:
      - Just the plan and file list, no code.
      - An outline of the approach and which files it touches.
      - A step-by-step plan for review first.
    hints:
      - What do you need to review first?
      - Is a diff useful before the approach is approved?
    tooVagueExamples:
      - Something reviewable.
      - A short answer.
    incorrectExamples:
      - The full diff for every file.
      - A prose summary after it's done.
---

# Response Shape

---
## Content

The last part of a brief says what you want back, such as a plan, a diff, a single function, or a test file.

**Ask for the thing you'll review next, so you don't have to dig it out of a long reply.**

Here's the complete brief for the refund status endpoint, with all five parts:

```plain-text
Task: add GET /refunds/:id/status for support agents. Return status,
  amount, and updated_at.
Scope: one new GET route and its handler. Do not add or modify any
  existing refund route or job. Add refunds:read_status for support.
Constraints: Express router, existing requirePermission middleware,
  refunds:read_status, handler signature matching showRefund. Keep
  refunds:read and refunds:retry on their current routes.
Acceptance: a token with only refunds:read_status gets status 200,
  full-refund 403, and retry 403; existing refund tests pass.
Response shape: a focused unified diff including permission and tests.
  No prose summary.
```

Each part settles something the assistant would otherwise guess, and the last one means you get back a diff you can read line by line.

> 💡 For a small fix, ask for a diff with tests. For a bigger change, ask for a plan first.

---
## Practice

You ask for a one-line fix and get the file rewritten plus three paragraphs. What should your brief have requested?

???

- A focused diff of the fix, with a test.

---
## Revision

You want to approve the approach to a multi-file change before any code exists. What should the assistant return first?

???

- A short plan with the files it would change.
