---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The always-on trace holds identifiers, versions, and measurements; redacted text samples go to a separate protected store, a strong extra.
    requiredConcepts:
      - Metadata such as IDs, versions, or metrics instead of full prompts and outputs.
    acceptedAnswers:
      - Identifiers, versions, and measurements only.
      - IDs, config version, and token and latency numbers.
      - Metadata; raw text only in a protected sample store.
    hints:
      - Which facts explain a run without copying its text?
      - What does the always-on line need to explain a slow or costly request?
    tooVagueExamples:
      - Store less data.
      - Redact the logs.
    incorrectExamples:
      - Keep every prompt and output forever for replay.
      - Full prompts and outputs, kept for 7 days.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Safe Logging

---
## Content

Prompts and replies hold whatever customers type, and logs keep it long after the chat ends.

**Safe logging means deciding which parts of prompts and replies to store, removing personal data before storing them, and deleting them on a schedule.**

Here's the logging policy for a mobile carrier's support chat, which sees names, account numbers, and home addresses every day:

```plain-text
every request:  trace ID, config version, tokens, latency, tool names, error codes
1% sample:      prompt and reply text, redacted, in a separate store with limited access
retention:      numbers 13 months, text samples 30 days
```

Here's what the first line stores for one request:

```plain-text
7f3a  config 15  2,236 tokens  2.3 s  get_bill  ok
```

That's enough to find a slow request or a jump in cost, and it holds no customer text.

The sample keeps full text for reading real chats when a number looks wrong. Personal details in it are swapped for placeholders like `[NAME]`.

> 💡 Redaction misses some details, so keep the text sample in a separate store with limited access, and delete it on a schedule.

---
## Practice

A team's always-on trace logs every full prompt, retrieved section, and model output. What should it keep instead?

???

- IDs, versions, and metrics; full text only in a redacted sample.

---
## Revision

Your redacted 1% sample of chat text sits in a limited-access store and is kept forever. It still needs a ??? policy.

- retention
- sampling
- redaction
- access
