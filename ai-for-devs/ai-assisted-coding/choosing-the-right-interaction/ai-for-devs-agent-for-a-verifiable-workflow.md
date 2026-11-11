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
    expectedPoint: "An agent brief needs a firm boundary: what must not change, and the checks and evidence to report."
    requiredConcepts:
      - Keep the value and behavior unchanged.
      - Run checks and report evidence, such as test results or files changed.
    acceptedAnswers:
      - Don't change the 30s value; run tests and list the files.
      - Keep behavior the same and report the test results.
      - Value stays 30 seconds; show what it ran and changed.
    hints:
      - What did the agent change that it shouldn't have?
      - How would you check its 'Done'?
    tooVagueExamples:
      - Be more careful.
      - Give more detail.
    incorrectExamples:
      - Ask it to work faster next time.
      - Let it pick the best timeout value.
---

# Coding Agents

---
## Content

A coding agent, like Claude Code or Cursor's agent mode, can search your repo, edit files, and run commands on its own. That fits a change that touches several files and needs tests run afterward.

Say the same 5 MB upload limit appears in a route, a resize worker, a browser validator, and the docs. You want it in one place without changing behavior.

**An agent still needs a firm boundary: what must not change, which checks to run, and what to report back.**

Here's that brief:

```plain-text
Search for code and documentation references to the 5 MB upload limit.
Export MAX_UPLOAD_BYTES from src/uploads/limits.js and replace matching
code literals without changing the value. Update any inconsistent docs.
Run the upload tests, then report the commands and files changed.
```

- **"Without changing the value"** stops it from "fixing" the limit while it's there.
- **"Run the upload tests, then report"** gets you commands and files you can check, rather than a bare "Done."

> 💡 Pick the smallest tool that fits: a completion for the next line, a chat to understand a choice, and an agent for a multi-file change with checks.

---
## Practice

To move `formatDate()` into `lib/dates.js`, fix every import in the repo, and run the tests, the smallest tool that fits is ???.

- a scoped agent
- per-import completions
- a snippet chat
- per-file chats

---
## Revision

An agent centralized the 30-second timeouts, set the constant to 60 seconds, and reported only "Done." What did your brief miss?

???

- Keep 30 seconds, run the tests, and report what changed.
