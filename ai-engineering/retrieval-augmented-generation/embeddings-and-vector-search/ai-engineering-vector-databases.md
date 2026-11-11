---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Few or no passages may be left, because most of the top 5 can belong to other versions.
    requiredConcepts:
      - Too few passages, or none, are left after dropping the other versions.
    acceptedAnswers:
      - You can end up with one passage, or none.
      - Most of the top 5 may be dropped, leaving too little to answer from.
      - The model gets fewer passages than you asked for.
    hints:
      - What if four of the five are for another version?
      - Where could the filter go instead?
    tooVagueExamples:
      - It's slower.
      - Results get worse.
    incorrectExamples:
      - The vector database rejects the request.
      - The other versions' passages still reach the model.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Vector Databases

---
## Content

Searching embeddings means finding the stored vectors nearest to the question's vector.

**A vector database stores those vectors and finds the nearest ones quickly, even across millions of passages.**

To stay fast, it doesn't check every vector. It checks a small share of them and usually finds the true nearest ones. This is called approximate nearest-neighbor (ANN) search.

Next to each vector, it stores the passage's text and metadata, extra fields like its product version. You can filter on those fields as part of the search. Here's a search for a customer on version 4:

```plain-text
search(
  vector = embed("How do I schedule a report?"),
  filter = {"version": "4"},
  top_k = 5
)
```

The `filter` line keeps all five results inside version 4. Here's the same search without it:

```plain-text
0.93  v5  Scheduling reports
0.91  v5  Report schedules and time zones
0.90  v5  Scheduled report emails
0.89  v4  Scheduling a report
0.87  v5  Editing a report schedule
```

If your app drops the v5 rows afterward, the model gets one passage instead of five.

> ‼️ Filter inside the search request. Filtering the results afterward can leave the model with almost nothing to answer from.

---
## Practice

Your app retrieves the top 5 passages, then drops any for other product versions. What can go wrong?

???

- Few or no passages may be left for the model.

---
## Revision

To stay fast over millions of vectors, nearest-neighbor search in a vector database is usually ???.

- approximate
- exhaustive
- keyword-based
