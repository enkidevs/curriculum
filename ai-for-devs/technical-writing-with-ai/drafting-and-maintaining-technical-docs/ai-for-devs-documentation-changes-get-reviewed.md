---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Docs must not describe behavior that isn't implemented and verified.
    requiredConcepts:
      - Removes the claim or holds it back.
    acceptedAnswers:
      - Pull the email line until it's built and tested.
      - Block that claim until code and tests exist.
      - Take it out for now; nothing implements it.
      - Remove the unsupported promise.
      - Delete the email line.
      - Take the claim out of the docs.
      - Don't publish that line yet.
    hints:
      - What proves the email is sent?
      - Is a closed ticket enough?
    tooVagueExamples:
      - Check it.
      - Make it clearer.
    incorrectExamples:
      - Accept it; the ticket is done.
      - Keep it as a promise for later.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check doc claims against evidence of real behavior, not the note's wording.
    requiredConcepts:
      - "Evidence of actual behavior: the merged code, its tests, the public contract, or the Node URL docs."
    acceptedAnswers:
      - The code on main and a test with a relative URL.
      - What the API promises plus the tests.
      - Node's URL docs and the merged implementation.
    hints:
      - What shows real behavior?
      - What does `new URL()` need for a relative path?
    tooVagueExamples:
      - The source.
      - The facts.
    incorrectExamples:
      - The ticket status and author's summary.
      - The previous release note.
---

# Documentation Review

---
## Content

Review doc changes, including AI-drafted ones, the way you review code. A confident sentence about behavior that doesn't exist becomes a promise other teams build against.

Say this docs diff ships with a change that moves feed URL validation from `url.parse()` to `new URL()`:

```plain-text
+Feed URLs are validated with `new URL()`. The legacy `url.parse()`
+API is no longer used here.
+Feed URLs are re-checked every 24 hours, and a feed that stops
+resolving is disabled.
```

Check each claim against what it describes:

- **The `new URL()` line** matches the merged code.
- **The `url.parse()` line** is accurate. Node 20.11.1 still has it, marked as deprecated in the docs,[1] and this code no longer calls it.
- **The 24-hour re-check** has no merged code or test behind it. There's only a ticket marked done.

**A ticket marked done doesn't mean the behavior shipped.** Remove that sentence, or hold it until the code and a test exist.

> 💡 Review each doc claim next to the code, tests, or public docs it describes. Clear writing can still promise something that isn't there.

---
## Practice

You're reviewing docs promising an email when an export finishes. The ticket is done, but no merged code sends one. What do you do?

???

- Remove or hold the claim until the behavior exists and is verified.

---
## Revision

A release note says relative URLs still work after moving to `new URL()`. What do you check that claim against?

???

- The merged code and its tests.

---
## Footnotes

[1: Node.js URL Documentation]
Official Node.js v20.11.1 documentation for `url.parse()` and `new URL()`.
https://nodejs.org/download/release/v20.11.1/docs/api/url.html
