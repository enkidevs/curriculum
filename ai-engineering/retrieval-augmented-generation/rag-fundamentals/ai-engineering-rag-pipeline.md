---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The passages retrieval returned and added to the prompt, so you can see what the model was given.
    requiredConcepts:
      - The retrieved passages, or the document text that went into the prompt.
    acceptedAnswers:
      - The passages retrieval returned for that question.
      - Which doc passages were added to the prompt.
      - The retrieved text the model answered from.
    hints:
      - What did the model read before it answered?
      - Which step chose that text?
    tooVagueExamples:
      - More details.
      - The request.
    incorrectExamples:
      - The model's temperature setting.
      - A list of every document in the index.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# RAG Pipeline

---
## Content

A model was never trained on your company's docs, so to answer from them, your app has to put the right parts in the prompt.

**Retrieval-augmented generation (RAG) does this: your app searches your docs for passages that match the question, adds them to the prompt, and the model answers from them.**

A passage is a short piece of a document. Here's one question to a docs bot, going through the four steps:

```plain-text
Question: How do I change how long data is kept?

1. Index: split the docs into passages and store them so they can be searched
2. Retrieve: search the passages for this question
   -> Admin guide, "Retention settings": "Set retention_days in fernway.yaml to change it."
3. Add to prompt: the question plus that passage
4. Generate: "Set retention_days in fernway.yaml."
```

Step 1 runs ahead of time, whenever the docs change. Steps 2 to 4 run for every question.

The answer rewords whatever search returned, so a wrong passage gives a wrong answer that sounds just as sure. Here's the same question from a customer on version 5, when search returns the version 4 page:

```plain-text
2. Retrieve -> Admin guide v4, "Retention": "Set keep_days in fernway.yaml to change it."
4. Generate: "Set keep_days in fernway.yaml."
```

That setting doesn't exist in version 5, so the customer gets an answer that doesn't work.

> 💡 Log the retrieved passages with each answer. When an answer is wrong, they show whether search or the model got it wrong.

---
## Practice

Your docs bot gave a wrong answer. Besides the answer, what should your logs show for that question?

???

- The passages retrieval returned for that question.

---
## Revision

In a RAG pipeline, ??? runs ahead of time, whenever the docs change.

- indexing
- retrieval
- generation
