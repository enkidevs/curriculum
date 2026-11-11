---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Only after the stream ends, because the JSON is incomplete until the last piece arrives.
    requiredConcepts:
      - After the stream ends, or once the full reply has arrived.
    acceptedAnswers:
      - When the stream finishes.
      - Once the last piece arrives and the JSON is complete.
      - Only after the full reply is in.
    hints:
      - Is the JSON valid after the first piece?
      - When does your code have the whole reply?
    tooVagueExamples:
      - Later.
      - When it's ready.
      - When it is sent.
    incorrectExamples:
      - As soon as the first piece arrives.
      - Right away, since streaming makes replies faster.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: You lose the head start, because people see nothing until the whole reply has arrived.
    requiredConcepts:
      - People wait for the full reply, or the head start from streaming is lost.
    acceptedAnswers:
      - The head start. Nothing shows until the reply is complete.
      - People wait the full ten seconds instead of one.
      - The text no longer appears right away.
    hints:
      - What did streaming give people in the first place?
      - When does anything appear on screen if you wait?
    tooVagueExamples:
      - Speed.
      - It's worse.
    incorrectExamples:
      - Accuracy, since the full reply is less reliable.
      - Nothing, since the reply arrives at the same time.

---

# Streaming

---
## Content

Without streaming, your app gets a model's reply only after it's completely written, which can take ten seconds. **With streaming, the API sends the reply in small pieces as it's written, so people start reading within a second.**

That works well for plain text. It's harder when the reply is JSON your code has to read.

Say your support assistant replies with two fields: `reply`, the text to show, and `escalate`, which tells your code whether to hand the chat to a person. Here's what your app has as the pieces arrive:

```plain-text
piece 1: {"reply": "Let me
piece 2: {"reply": "Let me check your order.",
piece 3: {"reply": "Let me check your order.",
          "escalate": false}
```

Only the last one is complete JSON. Until the stream ends, your code can't parse the reply or know whether to escalate.

So apps that need structured output usually wait for the full reply, and give up the head start streaming offered.

> 💡 Stream replies that people only read. Wait for the full reply when your code has to act on it.

---
## Practice

Your app streams a JSON reply from the model. When can your code parse it?

???

- Only once the stream ends and the whole reply has arrived.

---
## Revision

Your support assistant streams JSON with an `escalate` field, so your app waits for the full reply before acting. What does waiting cost?

???

- The head start. People see nothing until the whole reply arrives.
