---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: After the interface, trace the state transitions; here, the switch to locked at the fifth failure.
    requiredConcepts:
      - The switch to locked (what happens at the fifth failed attempt).
    acceptedAnswers:
      - Whether attempt five still locks the account.
      - The transition from failed attempts to a locked account.
      - "What the fifth failure triggers: the lock and its logging."
    hints:
      - Where does the account's state change?
      - What happens when attempts run out?
    tooVagueExamples:
      - The important parts.
      - The logic.
    incorrectExamples:
      - The config values that just moved.
      - Whichever file has the most changed lines.
---

# Generated Diff Review

---
## Content

An agent's refactor diff is mostly moved code. Reading it in file order spends your attention on the lines least likely to break.

**Start where behavior crosses a boundary, then work down to the moved code.**

For the retry-scheduling extraction, that order looks like this:

1. **Public interface:** confirm the worker calls the new `retryPolicy` correctly.
2. **State transitions:** compare attempts 1 through 4, and follow the `null` result into the dead-letter path.
3. **Errors and side effects:** check enqueueing and logging.
4. **Mechanical movement:** confirm the schedule and helper lines moved unchanged.

---
## Practice

An agent extracted invoice formatting into a new module. Most of the diff is moved code. Review the ??? first.

- new function's call site
- first changed file
- biggest moved block
- new module's helpers

---
## Revision

An agent extracted your login lockout, which locks after five failed logins. Callers are correct; what behavior do you trace next?

???

- The fifth failure, where the account switches to locked.
