---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Generation, because the right passage was retrieved and the model misused it.
    requiredConcepts:
      - Generation, or the model, since the right passage was retrieved.
    acceptedAnswers:
      - Generation. The passage was right and the model misread it.
      - The model's answer, since retrieval found the 50 MB passage.
      - A generation error; retrieval did its job.
    hints:
      - Did the model have the right fact in front of it?
      - Which step produced the 10 MB figure?
    tooVagueExamples:
      - The bot.
      - Something in the pipeline.
    incorrectExamples:
      - Retrieval, because the answer is wrong.
      - Chunking, since the passage was too short.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Retrieval Versus Generation Errors

---
## Content

When a RAG answer is wrong, the problem is in one of two places.

**Either search didn't find the passage with the answer, or it found it and the model misused it.**

Here are two wrong answers a docs bot gave to "How long are API keys valid?" The first:

```plain-text
Retrieved: [1] Create an API key: open Settings > Keys...
Answer: API keys don't expire.
```

Nothing in the retrieved passage mentions expiry, so the model filled the gap. That's a retrieval error: search never returned the passage about expiry.

And the second:

```plain-text
Retrieved: [1] API keys expire after 90 days unless renewed.
Answer: API keys expire after 30 days.
```

This time the right passage was there, and the answer contradicts it. That's a generation error.

They need fixes in different places:

- **Retrieval errors:** fix search, chunking, or metadata
- **Generation errors:** fix the prompt or the model

> 💡 When an answer is wrong, check the retrieved passages first. They tell you which part to fix.

---
## Practice

Your bot says the export limit is 10 MB, but the retrieved passage says 50 MB. Which part failed?

???

- Generation. The right passage was retrieved, and the model misused it.

---
## Revision

When the correct fact never appears in the retrieved passages, the error is in ???.

- retrieval
- generation
- the prompt
- the model
