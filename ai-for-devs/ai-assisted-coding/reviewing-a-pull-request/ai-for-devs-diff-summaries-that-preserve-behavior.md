---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A useful diff summary states behavior changes, not which files moved.
    requiredConcepts:
      - The behavior changes (for callers, users, data, or operations), not the files.
    acceptedAnswers:
      - What actually behaves differently after this PR.
      - The effects on users and stored data.
      - Which behavior callers will see change.
    hints:
      - Does a file list tell you what changed for users?
      - What would you need to judge?
    tooVagueExamples:
      - More detail.
      - A better summary.
    incorrectExamples:
      - A list of every function it touched.
      - The test coverage percentage.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A behavior summary points you to changes; verify each line, it doesn't approve anything.
    requiredConcepts:
      - Verify it against the diff or tests instead of taking it as true.
    acceptedAnswers:
      - Confirm it in the diff myself.
      - Search the diff for new env or config reads.
      - Verify no new `process.env` lookups were added.
    hints:
      - Where would you confirm that?
      - Is the summary a verdict?
    tooVagueExamples:
      - Think about it.
      - Be careful.
    incorrectExamples:
      - Approve; the summary covers it.
      - Ask the assistant if it's sure.
---

# Behavioral Diff Summaries

---
## Content

When you review a pull request, an assistant can summarize the diff for you. The summary only helps if it says what the change does, since that's what you're approving.

Here's one for a PR that adds an invite-resend endpoint:

```plain-text
Adds routes/invites.js and services/inviteMailer.js, updates
services/invites.js and two test files. 118 lines across 5 files.
```

It only repeats the file list. So ask for the effects you have to judge:

```plain-text
Summarize this diff as what changes for callers, for users, for
stored data, and for operations. Skip anything that is only files
moving.
```

Here's what comes back:

```plain-text
Callers: POST /orgs/:id/invites/:inviteId/resend is new, returns 202.
Users: the invite email is re-sent; the token in it is unchanged.
Stored data: invites.resent_count is incremented. No schema change.
Operations: the request no longer waits for email delivery; provider
failures appear in warning logs instead of the response.
```

Each line names an effect you can look for in the diff, like the new 202 response or the incremented `resent_count`.

**Each statement still needs checking against the diff and tests before you approve.**

---
## Practice

An assistant summarizes a PR as: "Updates billing.js and invoice.test.js; 64 lines changed." What should you ask it to add?

???

- What changes for callers, users, stored data, and operations.

---
## Revision

An assistant's PR summary claims "no new config or environment variables." What should you do with it before approving?

???

- Check it against the diff and tests.
