---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: All of them, because vectors from different embedding models can't be compared with each other.
    requiredConcepts:
      - Every chunk, because vectors from different models aren't comparable.
    acceptedAnswers:
      - All of them. Old and new vectors can't be compared.
      - Every chunk, since queries will use the new model.
      - The whole index, because the models' vectors don't match.
    hints:
      - Which model will embed new questions?
      - Can two models' vectors be compared?
    tooVagueExamples:
      - The important ones.
      - Most of them.
    incorrectExamples:
      - Only chunks edited since the last run.
      - None, since the text hasn't changed.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Build the new index alongside the old one, keep serving search from the old one, and switch once the new one is complete.
    requiredConcepts:
      - A separate new index built in parallel, with a switch when it's complete.
    acceptedAnswers:
      - Build a second index and switch over when it's done.
      - Keep the old index live until the new one is fully embedded.
      - Re-embed into a new index side by side, then cut over.
    hints:
      - Which index answers questions while re-embedding runs?
      - When is it safe to start using the new vectors?
    tooVagueExamples:
      - Do it carefully.
      - Plan downtime.
    incorrectExamples:
      - Re-embed chunks in place, one batch at a time.
      - Switch the query model first, then re-embed the chunks.

---

# Embedding Model Changes

---
## Content

Each embedding model, the model that turns text into vectors, places meanings in its own set of numbers.

**So if you change the embedding model, you have to re-embed every chunk in your index.**

Here's the same heading embedded by two models, with illustrative numbers:

```plain-text
"Restore from a backup"
model A: [0.12, -0.40, 0.33, 0.08, ...]
model B: [-0.27, 0.05, 0.61, -0.19, ...]
```

The text is the same, but the vectors have nothing in common.

Now say a docs bot embeds its questions with model B while its stored chunks still hold model A vectors:

```plain-text
Query (model B): How do I restore a backup?

0.31  Export a dashboard as a PDF
0.29  Restore from a backup
0.27  Set data retention
```

The scores no longer track meaning, so the order is close to random, and nothing raises an error. If the two models' vectors have different lengths, like 768 and 1,536 numbers, the search fails outright instead.

> 💡 Re-embedding a large index takes hours, so build the new index next to the old one, keep searching the old one, and switch once the new one is complete.

---
## Practice

You switch to a new embedding model. Which stored chunks need re-embedding, and why?

???

- All of them, since vectors from different models can't be compared.

---
## Revision

Re-embedding your 2-million-chunk index with a new model will take hours. How do you keep search working meanwhile?

???

- Build the new index beside the old one, then switch.
