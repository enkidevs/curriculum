---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Checkpoint where a result is checkable before the next risky step.
    requiredConcepts:
      - Between writing the module and moving callers.
    acceptedAnswers:
      - Once the module exists but callers haven't switched yet.
      - After the policy module, before touching callers.
      - Before callers move, once the module can be checked.
    hints:
      - Where can you check something?
      - What step is riskier?
    tooVagueExamples:
      - Midway.
      - Regularly.
    incorrectExamples:
      - Every five minutes.
      - After all edits, before the summary.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A focused run can miss failures elsewhere; verify with the full suite yourself.
    requiredConcepts:
      - Run the full or wider test suite yourself instead of trusting the focused run.
    acceptedAnswers:
      - Run the whole suite myself.
      - Run npm test for everything and check the results.
      - Check the rest of the tests, not just that file.
    hints:
      - What did the one file not cover?
      - Whose check should you rely on?
    tooVagueExamples:
      - Double-check it.
      - Be skeptical.
    incorrectExamples:
      - Nothing; passing is passing.
      - Ask the agent to confirm again.
---

# Agent Checkpoints

---
## Content

On a longer task, you can have a coding agent stop at set points and wait for your go-ahead. The useful stops come right after it produces something you can check.

Here's one from a refactor that moves retry scheduling into its own module:

```plain-text
Checkpoint: src/scheduling/retryPolicy.js written, 9 lines.
Nothing imports it yet. Continue?
```

Review the new module now, before any call site moves to it. If it's wrong, the fix is still small.

At the end, the agent reports:

```plain-text
Done. Extracted the schedule into src/scheduling/retryPolicy.js.
All tests pass.
```

The summary doesn't say which tests ran.

**So run the full suite yourself and read the output:**

```plain-text
$ npm test
FAIL  src/scheduling/__tests__/index.test.js
  ● exports every scheduling module
Tests:       1 failed, 46 passed, 47 total
```

The agent's focused test passed, but the full suite shows a missing barrel export[1].

> 💡 Before you accept the work, run the full test suite, plus the project's lint, type, and build checks.

---
## Practice

An agent will extract a retry policy into a new module, then move callers. When is the best checkpoint?

???

- After the new module is written, before callers move to it.

---
## Revision

An agent reports "All tests pass" but ran only one test file. What do you do before trusting that?

???

- Run the full test suite yourself and read the output.

---
## Footnotes

[1: Barrel Export]
A single `index.js` that re-exports every module in a directory so callers can import from one place. A module missing from it is invisible to anything importing through the barrel.
