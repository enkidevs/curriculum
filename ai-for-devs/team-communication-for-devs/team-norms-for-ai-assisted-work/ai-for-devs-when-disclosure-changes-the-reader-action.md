---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Voluntary disclosure matters only when it changes what the reviewer should do.
    requiredConcepts:
      - It can be omitted.
      - Because it changes no review or ownership action.
    acceptedAnswers:
      - Not needed, since it doesn't change how anyone reviews or owns it.
      - "Optional: everything is verified, so it tells the reviewer nothing to do."
      - No, it doesn't affect review or accountability here.
    hints:
      - Would the reviewer act differently after reading it?
      - Is anything left unchecked?
    tooVagueExamples:
      - It depends.
      - Maybe, to be transparent.
    incorrectExamples:
      - Yes, it proves the author verified everything.
      - Yes, it tells the reviewer to apply a stricter standard.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# AI Disclosure

---
## Content

If an assistant helped with a PR or a doc, saying so is useful when it tells the reviewer what to check more closely.

Start with your organization's policy. If it requires disclosure, include it.

**Beyond that, disclose AI help when it changes what the reviewer should do.** Usually that's because an AI-assisted step hasn't been checked. It can also be about where content came from, confidentiality, or who's accountable.

Here's a disclosure that does that:

```plain-text
An assistant produced the seven-call-site list below. I verified
five; please re-run the search and inspect billing/retry.js and
admin/retry.js.
```

It says which part came from the assistant, how much you checked, and exactly what the reviewer should look at.

As a team norm, that becomes:

```plain-text
Team norm: follow disclosure policy, and make voluntary disclosure
specific enough to change review or ownership.
```

> ‼️ A common mistake is ending with "Drafted with AI" and nothing else. It doesn't tell the reviewer what to check, so it changes nothing.

---
## Practice

No policy requires disclosure. A fully verified PR description ends with "drafted with AI." Is the line needed? Why?

???

- No; it changes no review or ownership decision.

---
## Revision

No policy requires disclosure. An assistant wrote your migration's rollback step, which nobody has run. The most useful disclosure says the rollback is ???.

- AI-written and untested
- AI-written
- from a named model
- in an AI-assisted PR
