---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Fine-tuning on the approved replies, since prompting has already been tried and tone is a pattern.
    requiredConcepts:
      - Fine-tuning on the approved replies.
    acceptedAnswers:
      - Fine-tune on the 5,000 approved replies.
      - Fine-tuning, since prompt edits didn't fix it.
      - Train the model further on the approved examples.
    hints:
      - Is tone a knowledge problem or a pattern?
      - What can you do with 5,000 examples?
    tooVagueExamples:
      - Try something else.
      - A better model.
    incorrectExamples:
      - RAG over the approved replies, so it finds the right facts.
      - Another round of prompt edits.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Prices change often, and fine-tuning would mean retraining every time they do.
    requiredConcepts:
      - Prices change, so a fine-tuned model goes stale or needs retraining after each change.
    acceptedAnswers:
      - You'd have to retrain every time prices change.
      - Prices keep changing, so the tuned model goes out of date.
      - Each price update would need another round of training.
    hints:
      - How often do prices change?
      - What would a price change mean for a fine-tuned model?
    tooVagueExamples:
      - It's too expensive.
      - It's the wrong tool.
    incorrectExamples:
      - Fine-tuning can't learn numbers.
      - Fine-tuning only works on tone.

---

# Prompting, RAG, And Fine-Tuning

---
## Content

There are three main ways to change how a model behaves, and each one fixes a different kind of problem:

- **Prompting:** change your instructions
- **RAG** (retrieval-augmented generation): your app finds relevant documents and adds them to the prompt
- **Fine-tuning:** train the model further on many examples of your task

Here's a support assistant with three problems, and the fix that fits each:

| Problem | Fix |
|---|---|
| Replies run too long | Prompting |
| Quotes old prices | RAG |
| Tone still uneven | Fine-tuning |

Reply length is an instruction, so one line in the prompt fixes it. Prices change, so RAG pulls the current price list into each request.

**Tone is a pattern.** If it stays uneven after prompt changes, fine-tuning on a few thousand approved replies can make it consistent. Fine-tuning would be a poor fit for prices, since you'd have to retrain every time they change.

> 💡 Try the cheapest fix first. A prompt edit takes minutes, RAG needs a pipeline, and fine-tuning needs labeled examples and retraining.

---
## Practice

Prompt edits haven't fixed your assistant's uneven tone, and you have 5,000 approved replies. Which fix fits next?

```plain-text
Prompting
RAG
Fine-tuning
```

???

- Fine-tuning on the approved replies.

---
## Revision

Your assistant quotes outdated prices. Why is fine-tuning a poor fix for keeping them current?

???

- Prices keep changing, so you'd retrain every time they do.
