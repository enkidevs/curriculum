---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: 75%, because 3 of the 4 relevant passages appear in the top 5.
    requiredConcepts:
      - 75%, or 3 out of 4.
    acceptedAnswers:
      - 75%.
      - 3 of 4, so 0.75.
      - Three quarters of the relevant passages, 75%.
    hints:
      - Recall@5 divides by how many relevant passages exist.
      - How many of the 4 made it into the top 5?
    tooVagueExamples:
      - Most of them.
      - Pretty high.
    incorrectExamples:
      - 60%, since 3 of the 5 results are relevant.
      - 100%, since the top 5 has room for all 4.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Precision@5, because many of the top 5 passages aren't relevant to the question.
    requiredConcepts:
      - Precision@5, or precision at k.
    acceptedAnswers:
      - Precision@5. Too many of the top 5 are off-topic.
      - Precision at k, since irrelevant passages fill the results.
      - Precision; the relevant ones are found, but with a lot of noise.
    hints:
      - Which metric looks at the share of results that are relevant?
      - High recall says the relevant passages are there. What else is there?
    tooVagueExamples:
      - Quality.
      - The accuracy.
    incorrectExamples:
      - Recall@5, since the answers are off.
      - Faithfulness, since the answers drift.

---

# Retrieval Metrics

---
## Content

To measure search on its own, you need a labeled set: test questions where someone has marked which passages answer each one. Then two numbers describe the top k results:

- **Recall@k:** the share of a question's relevant passages that made the top k
- **Precision@k:** the share of the top k that are relevant

Say you run five labeled questions through a docs bot's search and keep the top 5:

| Query | Relevant | In top 5 |
|---|---|---|
| Q1 | 2 | 2 |
| Q2 | 1 | 1 |
| Q3 | 3 | 2 |
| Q4 | 2 | 0 |
| Q5 | 1 | 1 |

For Q3, recall@5 is 2 of 3, or 67%, and precision@5 is 2 of 5, or 40%. Averaged over all five, recall@5 is 73% and precision@5 is 24%.

That precision looks low partly because each question has only one to three relevant passages. Even a perfect search would average just 36% here.

**Recall matters most for RAG, because the model can only use passages that were retrieved.** Q4, with nothing found, is the first to dig into. Precision matters when off-topic passages crowd the prompt.

---
## Practice

A query has 4 relevant passages, and your top 5 results contain 3 of them. What's recall@5?

???

- 75%, since 3 of the 4 relevant passages were found.

---
## Revision

Recall@5 is high, but answers wander through off-topic passages. Which metric is likely low, and why?

???

- Precision@5, because many of the top 5 aren't relevant.
