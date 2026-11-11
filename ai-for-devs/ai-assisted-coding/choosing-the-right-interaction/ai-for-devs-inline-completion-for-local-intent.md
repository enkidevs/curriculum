---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check a completion's content against your local intent, not just its shape.
    requiredConcepts:
      - Whether the added statuses really exist or are allowed here.
    acceptedAnswers:
      - That the app really uses archived and deleted.
      - Whether those statuses exist in this project.
      - If those entries match what the app supports.
    hints:
      - Did you mean to add those?
      - Does the app have those states?
    tooVagueExamples:
      - That it's right.
      - The code.
    incorrectExamples:
      - That the keys are alphabetical.
      - That the quote style matches.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Inline Completions

---
## Content

As you type, your editor's assistant, like Copilot or Cursor, offers to finish the next few lines. One keypress accepts them, including any line you didn't mean to write.

**Inline completion works best when the code around it makes your next few lines obvious.**

Say an avatar service accepts PNG, JPEG, and WebP. You start its lookup table:

```javascript
const EXTENSION_BY_MIME = {
  "image/png": "png",
  "image/jpeg": "jpg",
```

A completion suggests two more entries:

```javascript
  "image/webp": "webp",
  "image/gif": "gif",
```

Both are real MIME types, but this service doesn't accept GIF. The suggestion fits the shape of the code and breaks its rule.

> ‼️ A common mistake is accepting a completion because it looks right. Read what each line does against what you meant, the way you'd read a small diff.

---
## Practice

Your `STATUS_LABELS` map has `active` and `paused`. A completion adds `archived` and `deleted`. What should you check before accepting?

???

- Whether this app actually has those two statuses.

---
## Revision

Inline completion is the right-sized choice for ???.

- obvious next cases
- repo-wide renames
- comparing caching designs
- sketching new modules
