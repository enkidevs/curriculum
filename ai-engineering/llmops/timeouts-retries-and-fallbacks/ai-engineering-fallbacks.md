---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A degraded mode offers what still works and labels the capability that was lost.
    requiredConcepts:
      - Show the transcript and clearly label the summary as missing or queued.
    acceptedAnswers:
      - The transcript plus a notice that the summary will come later.
      - Give them the raw transcript and say the AI summary is unavailable right now.
      - Show the transcript, marked summary pending.
    hints:
      - What still works?
      - How will people know the summary is missing?
    tooVagueExamples:
      - A fallback.
      - Something useful.
    incorrectExamples:
      - The previous meeting's summary, until the summarizer recovers.
      - A template summary shown like a normal one.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Fallbacks

---
## Content

A model call can fail, so an AI feature needs a plan for what it shows instead. That plan is called a fallback, and there are four usual options:

- **Backup model:** often from a second provider, it can answer what your own data can't.
- **Cached answer:** a saved reply for general questions.
- **Path without AI:** your code answers from your own data.
- **Clear error:** the last resort, when no path has a right answer to give.

When the model times out, a food-delivery app's support chat still has the order data. So a path without AI can answer the most common question, where the order is:

```plain-text
Our assistant isn't available right now. Your order
from Pizza Corner is on its way, arriving around
7:42 pm. Tap here to chat with support staff.
```

**The arrival time comes straight from the order system, so it's right whatever the model is doing.**

The first sentence tells the customer the assistant is down, so they don't mistake this short reply for its full answer. The last offers a person for anything else.

> 💡 Show what still works, and say plainly which part is missing.

---
## Practice

Your meeting app's AI summarizer is down, but transcripts still save. What should people see after a meeting?

???

- The transcript, with a clear note that the summary is unavailable or queued.

---
## Revision

When the model times out, an order-status fallback reads the arrival time from the ???, so it's right whatever the model does.

- order system
- last reply
- model's cache
- help articles
