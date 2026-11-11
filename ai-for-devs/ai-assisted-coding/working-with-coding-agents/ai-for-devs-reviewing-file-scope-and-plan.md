---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A file list exposes scope drift before it becomes a large diff.
    requiredConcepts:
      - It goes beyond the approved scope.
    acceptedAnswers:
      - Scope creep beyond the rename.
      - A rename shouldn't touch dependencies, so it's out of scope.
      - The plan is doing more than was asked.
    hints:
      - Does a rename need a dependency change?
      - What did the brief ask for?
    tooVagueExamples:
      - Something's off.
      - Needs review.
    incorrectExamples:
      - It found a required change.
      - It's safer for covering more files.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An unexpected file needs a reason before you accept or cut it.
    requiredConcepts:
      - Ask the agent why it needs the file before deciding.
    acceptedAnswers:
      - Pause and ask what the logging change is for.
      - Get its reason, then decide whether to widen the scope.
      - Ask why before approving or cutting it.
    hints:
      - Do you know why it's there?
      - Is an unexpected file always wrong?
    tooVagueExamples:
      - Review it.
      - Look closer.
    incorrectExamples:
      - Approve it; it's only a plan.
      - Cut it from the plan without asking.
---

# File Scope

---
## Content

Before a coding agent edits anything, it usually lists the files it will change. Comparing that list with what you asked for catches a change growing past the task while it's still cheap to stop.

Here's the plan for pulling retry scheduling into its own module, with no behavior change and no new dependencies:

```plain-text
Files I will change:
  src/workers/delivery.js
  src/scheduling/retryPolicy.js             (new)
  src/workers/__tests__/delivery.test.js
  package.json                               (add p-retry)
  db/migrations/0042_retry_attempts.sql     (store attempt count)
```

- **The first three files** fit an extraction that keeps behavior the same.
- **`package.json`** adds a dependency the task ruled out.
- **The migration** stores attempt counts, which spreads the change into the database.

**An unexpected file isn't automatically wrong, but it needs a reason before the agent starts.** Ask why, and if you accept it, widen the scope on purpose.

---
## Practice

You ask an agent for a plain rename of a helper. Its plan includes `package.json`. What does that suggest?

???

- The plan reaches beyond the requested scope.

---
## Revision

You ask an agent to fix an error-message typo. Its plan also lists `config/logging.js`. What do you do first?

???

- Ask why it needs that file before expanding the scope.
