---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An inspection report is only useful when it cites concrete evidence you can verify.
    requiredConcepts:
      - Concrete, checkable evidence such as file paths, functions, or tests.
    acceptedAnswers:
      - The names of the actual files and functions it found.
      - Evidence I can verify, like paths and test names.
      - Which files hold the payment code and which tests cover it.
    hints:
      - How would you check that it really understood?
      - What could you open to confirm its claim?
    tooVagueExamples:
      - More detail.
      - A better summary.
    incorrectExamples:
      - A diff showing the refactor.
      - A confidence rating for its understanding.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An agent should inspect and report evidence before it edits.
    requiredConcepts:
      - It changed code without first inspecting and reporting what it found.
    acceptedAnswers:
      - It edited before showing what it learned about the code.
      - You have no inspection report to check its plan against.
      - It should have read and reported first, not edited.
    hints:
      - What did it show you before changing code?
      - How would you know it understood the callers?
    tooVagueExamples:
      - It's risky.
      - Needs review.
    incorrectExamples:
      - Nothing; a diff is the fastest way to review.
      - It should have split the diff into smaller commits.
---

# Repository Inspection

---
## Content

When you hand a refactor to a coding agent, have it report what it found before it edits anything. If its first output is a diff, you can't tell whether it understood the code it changed.

Say an agent is pulling retry scheduling out of a webhook worker. Ask it to look first:

```plain-text
Locate the retry implementation, callers, tests, and repository
instructions. Report the relevant paths and facts. Do not edit yet.
```

**A useful report names things you can check: file paths, functions, and tests.** "I reviewed the codebase" gives you nothing.

Here's a useful one:

```plain-text
src/workers/delivery.js: retry scheduling is inline in
scheduleRetry(), called from deliver() and nowhere else.
src/workers/__tests__/delivery.test.js: 12 cases. 3 assert the
1/5/30 schedule, 1 asserts that a 404 does not retry.
CONTRIBUTING.md: new modules go under src/, named in lowerCamelCase.
```

Each line points to something you can open before you approve a plan. It also shows what the agent may have missed, like a caller it didn't list.

---
## Practice

An agent's inspection report says only: "The payment code is well structured and fully tested." What's missing?

???

- Specific file paths, functions, and tests you could check yourself.

---
## Revision

You ask an agent to split `orders.js` into modules. Its first reply is a 400-line diff. What went wrong?

???

- It edited before inspecting and reporting what it found.
