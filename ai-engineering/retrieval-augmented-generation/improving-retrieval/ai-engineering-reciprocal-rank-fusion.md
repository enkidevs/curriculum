---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Passage B, because it collects a score from both lists, and two second places add up to more than one first place.
    requiredConcepts:
      - Passage B, because it scores in both lists, or because the scores from both lists add up.
    acceptedAnswers:
      - B. Its two scores add up to more than A's one.
      - Passage B, since it appears in both lists.
      - B, because 2nd in both beats 1st in only one.
    hints:
      - How many lists does each passage get a score from?
      - How different are the scores for 1st and 2nd place with 60 added?
    tooVagueExamples:
      - The better one.
      - It depends on the scores.
    incorrectExamples:
      - Passage A, because first place always wins.
      - Passage A, since keyword matches count for more.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Reciprocal Rank Fusion

---
## Content

Hybrid search gets two ranked lists back, one from keyword search and one from embedding search.

**Reciprocal rank fusion (RRF) merges them by giving each page a score of 1 / (60 + its rank) in each list, then adding up its scores.**

Here are both lists for "E4021 after upgrade" in a docs bot:

```plain-text
Keyword search
1. Error E4021
2. Upgrade guide

Embedding search
1. Upgrade guide
2. Error E4012
3. Error E4210
4. Error E4021
```

And here's the math:

```plain-text
Upgrade guide  1/62 + 1/61 = 0.0325
Error E4021    1/61 + 1/64 = 0.0320
Error E4012    1/62        = 0.0161
Error E4210    1/63        = 0.0159
```

The upgrade guide and E4021 are in both lists, so each collects two scores and finishes well ahead of the look-alike codes, which appear in only one list.

RRF uses ranks because the two searches' raw scores are on different scales, like 12.4 and 0.86, so they can't be added directly.

The 60 keeps one first place from beating everything else. Without it, first place alone scores 1/1 = 1.0, more than a page ranked second and third, 1/2 + 1/3 = 0.83.

---
## Practice

Passage A is 1st in the keyword list only. Passage B is 2nd in both lists. Which wins after reciprocal rank fusion, and why?

???

- B, since its scores from both lists add up to more.

---
## Revision

Reciprocal rank fusion ignores raw scores because keyword and similarity scores ???.

- use different scales
- favor longer passages
- shift after reindexing
- are often tied
