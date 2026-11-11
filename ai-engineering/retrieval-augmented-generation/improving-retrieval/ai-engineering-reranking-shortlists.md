---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The reranker never sees that passage, so it can't move it up, and the answer stays out of the prompt.
    requiredConcepts:
      - The passage isn't on the shortlist, so the reranker can't promote it.
    acceptedAnswers:
      - The reranker never sees it, so it can't move it up.
      - It's outside the shortlist, so it never reaches the prompt.
      - Reranking only reorders the top 10, so rank 23 stays out.
    hints:
      - Which passages does the reranker read?
      - Can it promote a passage it never scored?
    tooVagueExamples:
      - Reranking fails.
      - The answer is worse.
    incorrectExamples:
      - The reranker finds it anyway, since it reads the question.
      - The reranker moves it to the top because it scores best.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Rerank a shorter list, such as the top 50 from the first search.
    requiredConcepts:
      - Rerank fewer passages.
    acceptedAnswers:
      - Rerank only the top 50.
      - Send a shorter shortlist to the reranker.
      - Cut the number of candidates you rerank.
    hints:
      - What does the reranker's time grow with?
      - Which number in the setup do you control?
    tooVagueExamples:
      - Make it faster.
      - Optimize it.
    incorrectExamples:
      - Remove the first search and rerank everything.
      - Keep more passages in the final prompt.

---

# Reranking Shortlists

---
## Content

A reranker reads every passage it's given, so you only give it a shortlist from the first search, such as the top 50.

**A shorter list is faster, but the reranker can only move up passages that are on it.**

At an illustrative 8 ms per passage:

```plain-text
Shortlist 200: 1,600 ms per question
Shortlist 50:    400 ms per question
Shortlist 10:     80 ms per question
```

Say the first search ranks the page with the answer 23rd:

```plain-text
Shortlist 50: reranked to 1st, kept for the prompt
Shortlist 10: never scored, left out of the prompt
```

With a shortlist of 10, the reranker never saw the page, so the bot answers without it.

> 💡 A common setup takes the top 50 from the first search, reranks them, and keeps the top 5.

---
## Practice

Your reranker scores the top 10 passages from the first search. The passage with the answer ranked 23rd. What happens?

???

- The reranker never sees it, so it can't move it up.

---
## Revision

Reranking 200 passages per question makes your bot too slow. What do you change?

???

- Rerank a shorter list, like the top 50.
