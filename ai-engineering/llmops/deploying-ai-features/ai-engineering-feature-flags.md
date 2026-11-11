---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Independent controls let you restore one component while pinning the rest; a single bundle forces everything to move together.
    requiredConcepts:
      - You can't roll back the prompt alone; the other parts revert with it.
    acceptedAnswers:
      - You can't undo just the prompt change.
      - Reverting means swapping the model and index too.
      - No way to keep the model while restoring the old prompt.
    hints:
      - What else changes when you restore the old version?
      - Which part actually caused the drop?
    tooVagueExamples:
      - It's riskier.
      - Less flexibility.
    incorrectExamples:
      - Prompt edits can't be rolled back at all.
      - The model must be retrained after a prompt change.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Feature Flags

---
## Content

Switching a prompt back through a deploy can take many minutes. A feature flag is a setting your app reads at runtime, so you can switch a behavior or a version in seconds, with no deploy.

**AI features usually give the model, the prompt version, and each risky action a flag of their own, so each one can change alone.**

Here are the flags for a food-delivery app's support chat, which can issue credits for late orders:

```plain-text
support-chat flags
  model:          medium-2026-03
  prompt_version: v9
  issue_credit:   on
```

Say v9 hands out credits it shouldn't. With `issue_credit` set to `off`, your code stops giving the model the credit tool, and the chat answers like this:

```plain-text
customer: "My order is 50 minutes late."
reply:    "Sorry it's so late! I've passed this to our support team to review a credit."
```

The chat keeps answering, and credit requests go to support staff instead of being paid automatically. Setting `prompt_version` to `v7` would undo the prompt alone in the same way.

> ‼️ A common mistake is one flag for everything. It moves the model, prompt, and actions together, so undoing a bad prompt also undoes the rest.

---
## Practice

Your bot's model, prompt, and retrieval index ship only together. Why is rolling back a bad prompt edit harder?

???

- Undoing the prompt also reverts the model and index.

---
## Revision

Switching your prompt version back takes a 40-minute deploy. Moving it into a ??? makes the switch take seconds.

- feature flag
- hotfix branch
- repo config file
- release branch
