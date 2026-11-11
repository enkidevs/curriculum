---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Reset stale context with a focused new thread.
    requiredConcepts:
      - Fresh thread with current, relevant context.
    acceptedAnswers:
      - Open a new chat with the task and the rule restated.
      - Restart with only the current code and constraints.
      - New thread, current context only.
    hints:
      - What's crowding the context?
      - What does it actually need?
    tooVagueExamples:
      - Remind it.
      - Try again.
    incorrectExamples:
      - Tell it to remember the rule from now on.
      - Repeat the rule more forcefully in this thread.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Irrelevant material competes with useful details for limited context.
    requiredConcepts:
      - They crowd limited context.
    acceptedAnswers:
      - They take up space the important details need.
      - The noise competes with the code and the error.
      - The context window fills up with irrelevant text.
    hints:
      - Is context unlimited?
      - What gets crowded out?
    tooVagueExamples:
      - It's confusing.
      - Too much text.
    incorrectExamples:
      - The logs change the model's training data.
      - It only reads the last message anyway.
---

# Context Windows

---
## Content

Everything the assistant reads for a task, like your messages, the files you paste, and search results, has to fit in a limited space called the context window[1].

**In a long conversation, that space fills up, so the assistant drops or summarizes older messages and can lose details you gave it early on.**

For example, here's what that can look like in a long debugging conversation:

```plain-text
Message 3, you: I replaced formatDate() with formatDisplayDate().
...
Message 41, assistant: Call formatDate(order.createdAt) here.
```

You renamed the function in message 3, but by message 41 that message had been dropped or summarized, so the assistant used the old name again.

Reminding it only helps for a while, because the conversation keeps growing.

> 💡 When the assistant starts forgetting things, start a new conversation. Restate the task and the rules that matter, and paste only the files you need.

---
## Practice

Forty messages in, the assistant ignores the "no new dependencies" rule from your first message. What's the best next step?

???

- Start a fresh thread with the current task, rule, and needed files.

---
## Revision

Debugging one failing test, you paste five full build logs into the chat. Why might the assistant's answers get worse?

???

- The logs crowd useful details out of limited context.

---
## Footnotes

[1: Context Window]
The limited working set an assistant reads for the current task: messages, pasted material, and tool output. Older material can drop out or be compressed.
