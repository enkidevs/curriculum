---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: It reads the question and each passage together, where embedding search compares vectors made separately.
    requiredConcepts:
      - It reads the question and the passage together.
    acceptedAnswers:
      - It reads the query and passage side by side.
      - It scores each question and passage pair together.
      - Embeddings are made separately; the reranker sees both at once.
    hints:
      - When is each embedding created?
      - What does a cross-encoder look at?
    tooVagueExamples:
      - It's a better model.
      - It's smarter.
    incorrectExamples:
      - It uses larger embedding vectors.
      - It searches more documents than embedding search.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Rerank the retrieved passages so the one that answers the question moves up into the top 3.
    requiredConcepts:
      - A reranker scores each passage against the question and moves the answering one into the passages kept.
    acceptedAnswers:
      - Rerank them so the answering passage moves into the top 3.
      - Score each passage against the question and reorder before keeping 3.
      - A reranker can lift the 4th passage above the general ones.
    hints:
      - What does a reranker look at that the first search didn't?
      - Which passages reach the prompt?
    tooVagueExamples:
      - Improve the search.
      - Make it smarter.
    incorrectExamples:
      - Keep only the top 1 passage instead.
      - Re-embed the passages with a bigger model.

---

# Reranking

---
## Content

In embedding search, each passage's vector was made at indexing time, before any question existed. So search can find passages on the right topic and still miss the one that actually answers the question.

**A reranker is a second model that reads the question and each retrieved passage together, scores how well the passage answers it, and reorders the list.**

Here's a docs bot's search for "Why are my scheduled reports arriving empty?", before and after reranking, with illustrative scores:

```plain-text
Before:
1. Scheduling a report
2. Report templates
3. Email delivery settings
4. Troubleshooting empty reports

After:
1. 0.94  Troubleshooting empty reports
2. 0.41  Scheduling a report
3. 0.22  Email delivery settings
4. 0.08  Report templates
```

The first search matched the topic, scheduled reports, and put the general pages first. The reranker saw that only one passage is about empty reports and moved it to the top.

If the bot kept the top three without reranking, the page with the answer would never reach the prompt.

---
## Practice

Why does a reranker usually rank passages more precisely than embedding search?

???

- It reads the question and each passage together.

---
## Revision

Your bot keeps the top 3 passages from embedding search, and the one that answers the question ranks 4th. How can a reranker help?

???

- It reorders them so the answering passage moves into the top 3.
