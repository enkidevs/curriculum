---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Splitting a straightforward task across several prompts costs time and can drop context at handoffs.
    requiredConcepts:
      - Extra time or handoffs, or context lost between prompts.
    acceptedAnswers:
      - It costs time and can drop context at each handoff.
      - More copy-pasting between chats.
      - Details get lost moving from one prompt to the next.
    hints:
      - What does each extra prompt add?
      - What might not carry over to the next chat?
    tooVagueExamples:
      - It's a bad idea.
      - Nothing good.
    incorrectExamples:
      - Splitting always makes each individual step less accurate.
      - It prevents you from checking the final answer.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Split when a dependent step needs checking before the next one relies on it.
    requiredConcepts:
      - A step's result must be checked before the next step uses it.
    acceptedAnswers:
      - When you need to check a step before building on it.
      - When a later step depends on an earlier result you should verify.
      - When a mistake in one step would feed into the next.
    hints:
      - What does splitting let you do between steps?
      - Does the number of verbs matter?
    tooVagueExamples:
      - When the task is big.
      - When it's complicated.
    incorrectExamples:
      - When the task sentence has several verbs.
      - When the source is long.

---

# When Not To Split

---
## Content

A straightforward task does not need a workflow. Summarizing a two-page policy for a team meeting can usually start as one well-structured prompt.

Splitting it into four prompts (extract points, group them, draft the summary, check the tone) adds handoffs without adding useful checkpoints.

Each handoff takes time. Context can also be lost when you summarize, copy output, or move it into another chat.

Start with one strong prompt. **Split only when a specific step fails or needs review.**

> 💡 Start whole. Split only where a checkpoint adds value.

---
## Practice

A colleague splits a simple two-page policy summary into four separate prompts. What does that cost?

???

- Extra time, and context can get lost between prompts.

---
## Revision

When is it actually worth splitting a task into several prompts?

???

- When one step's result needs checking before the next step uses it.
