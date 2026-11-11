---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The two sentences mean nearly the same thing, and embeddings represent meaning, so their vectors land close together.
    requiredConcepts:
      - They have similar meanings, and embeddings capture meaning rather than exact words.
    acceptedAnswers:
      - They mean almost the same thing.
      - Embeddings encode meaning, and both ask to stop paying.
      - Same intent, so the embedding model places them close.
    hints:
      - What does an embedding represent?
      - What do the two sentences ask for?
    tooVagueExamples:
      - They're similar.
      - The model is smart.
    incorrectExamples:
      - They have the same number of words.
      - Embeddings match on shared keywords.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Embeddings

---
## Content

To search by meaning, your app needs a way to compare what two pieces of text mean.

**An embedding model turns text into a list of numbers, called an embedding or vector, and texts with similar meanings get vectors that sit close together.**

Here a docs search compares a question with two page headings. The similarity scores are illustrative, and higher means closer in meaning:

```plain-text
A: How do I reset my password?
B: Steps to recover a forgotten login
C: Exporting a dashboard as a PDF

A and B: 0.89
A and C: 0.21
```

A and B share almost no words, but they score high because they ask about the same thing. C is about something else, so it scores low.

That's what makes embeddings useful for docs search: people describe problems in their own words, which rarely match your headings.

In a RAG pipeline, each passage gets embedded once, when you index the docs. Each question gets embedded when it arrives, with the same model, and search looks for the passages with the nearest vectors.

---
## Practice

"Cancel my subscription" and "How do I stop paying?" share no words. Why do their embeddings land close together?

???

- They mean nearly the same thing, and embeddings capture meaning.

---
## Revision

An embedding represents a text's meaning as a list of ???.

- numbers
- keywords
- tokens
- synonyms
