---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Code from a conversation is a draft until you verify it against the real code and tests.
    requiredConcepts:
      - Verifying it against the real code or tests before trusting it.
    acceptedAnswers:
      - Running the tests against it.
      - Checking it fits the actual handler.
      - Verifying it; compiling doesn't prove it works.
    hints:
      - Does compiling prove the behavior is right?
      - What would show it works in your project?
    tooVagueExamples:
      - Being careful.
      - More work.
    incorrectExamples:
      - Nothing; it compiled.
      - Asking the chat whether the fix is correct.
---

# Conversational Drafting

---
## Content

A chat with the assistant fits when you need to understand a choice before you edit. You get an explanation and a draft, and nothing in your files changes until you decide.

Say an avatar route reads a whole upload before checking its size, and you're not sure where the parser lets you reject an oversized file earlier. Ask for an explanation and a small draft:

```plain-text
Using the handler and parser documentation below, explain when the
route can detect an oversized upload. Compare the two available
rejection points, then draft the smallest handler change. Keep the
route signature, and do not edit any files.
```

You get an explanation, two options, and a code block to review, and every edit is still yours to make.

**The draft is a starting point until you check it against the real handler and run the tests.** Code that compiles can still behave differently from what you need.

---
## Practice

Your pagination query skips rows. To understand the cause and compare two fixes before editing, use ???.

- an explanatory chat
- a code-only chat
- an inline completion
- an editing agent

---
## Revision

A chat drafts a fix for your upload handler. It compiles, so you commit it. What did you skip?

???

- Checking it against the real handler and running the tests.
