---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The chat history fills the window, because it grows with every turn.
    requiredConcepts:
      - The chat history, or the earlier turns of the conversation.
    acceptedAnswers:
      - The chat history, which grows every turn.
      - All the earlier messages in the conversation.
      - The conversation so far, sent with each request.
    hints:
      - What gets bigger with every turn?
      - What was different on turn one?
    tooVagueExamples:
      - Too much text.
      - The prompt.
    incorrectExamples:
      - The model's training data.
      - The system prompt, which grows each turn.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model loses facts from early in the chat, because the oldest messages are no longer in the request.
    requiredConcepts:
      - The model loses early facts, or the oldest messages are gone from the request.
    acceptedAnswers:
      - It forgets things the person said early on.
      - Early details are no longer in the request.
      - The model answers without facts from the first turns.
    hints:
      - Which messages get dropped first?
      - What did the person say on turn 2?
    tooVagueExamples:
      - It gets worse.
      - Things go missing.
    incorrectExamples:
      - Nothing, since the model remembers the dropped turns.
      - The request is rejected with an error.

---

# Context Window Overflow

---
## Content

A model doesn't remember earlier calls, so a chat app resends the whole chat history with every new message.

**Each request is then bigger than the last, until one is too big for the context window.** That's called context window overflow.

Here's how a docs chatbot's request grows on a 32,000-token window, where a turn is one message and its reply:

```plain-text
turn 1:   13,600 tokens
turn 10:  21,600 tokens
turn 25:  33,450 tokens
```

By turn 25 the request is over the limit, so most APIs reject it with an error:

```plain-text
400 Bad Request: input is 33,450 tokens, max is 32,000.
```

Some chat frameworks avoid the error by quietly dropping the oldest messages.

The request then goes through, but the model loses what was said early on, like the product version named in turn 2.

---
## Practice

Your support chat works for a few turns, then requests start failing as too long. What's filling the context window?

???

- The chat history, which grows with every turn.

---
## Revision

Your chat framework quietly drops the oldest messages once a request gets too long. What does the model lose?

???

- Facts from early in the chat, since those messages are gone.
