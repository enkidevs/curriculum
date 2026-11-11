---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An index rebuild can change retrieval everywhere, so retrieval needs testing across the whole corpus, not a few cases.
    requiredConcepts:
      - The rebuilt index can change retrieval for all queries, or new failures can appear outside the cases rechecked.
    acceptedAnswers:
      - It affects retrieval for every query, not just the broken ones.
      - Every search result could shift, so test retrieval corpus-wide.
      - The whole index changed, so all retrieval needs checking.
      - Only past failures were checked; there could be new ones.
      - New failures on other queries.
    hints:
      - Which queries does the rebuilt index touch?
      - What did rebuilding the index change?
    tooVagueExamples:
      - It needs more tests.
      - Twelve is too few.
    incorrectExamples:
      - It is enough, since the regular suite passed.
      - Only the grader needs rechecking.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Index Rebuild Evals

---
## Content

A rebuilt index can change what search returns for any question, even ones that worked before.

**So after an index rebuild, you check search on every topic, which is called an index rebuild eval.**

Say the support assistant's index is being rebuilt with each article split into smaller chunks.

On top of the full eval set, the rebuild gets one retrieval check per topic. Each check asks a question and confirms the right article's passage comes back, before the model writes anything.

Here's the result:

```plain-text
retrieval checks, 40 topics: 38 pass
  fail: "cancel my contract"
        -> top passage from "Upgrade your phone"
  fail: "port my number out"
        -> top passage from "Add a new line"
```

Both failing topics worked before the rebuild. Smaller chunks changed which passage scored highest, so those questions now get an article about something else.

> ‼️ A common mistake is rechecking only the questions that failed before the rebuild. That would have missed both of these.

---
## Practice

Your eval set passes after an index rebuild, so a teammate rechecks only a dozen past failures. What does that miss?

???

- A rebuild can change retrieval for every query, so test all topics.

---
## Revision

After an index rebuild, a retrieval check confirms that a question brings back the ???.

- right passage
- correct reply
- old answer
- fastest result
