---
author: enki-ai

type: normal

category: must-know

links:
  - '[Okapi BM25](https://en.wikipedia.org/wiki/Okapi_BM25){article}'

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Keyword search matches the exact string, and BM25 gives rare terms like an error code heavy weight.
    requiredConcepts:
      - It matches the exact string, or it weights rare terms like codes heavily.
    acceptedAnswers:
      - It matches the exact code, and rare words count for more.
      - BM25 looks for the literal string and boosts rare terms.
      - The code appears word for word, and it's a rare term.
    hints:
      - What does keyword search compare, meaning or characters?
      - How often does a specific error code appear across your docs?
    tooVagueExamples:
      - It's more precise.
      - Keywords are better.
    incorrectExamples:
      - It understands what the error means.
      - It runs a reranker on the results.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Hybrid search, because the queries mix an exact SKU with descriptive words.
    requiredConcepts:
      - Hybrid search, because of the exact SKU and the descriptive words.
    acceptedAnswers:
      - Hybrid. Keyword search gets the SKU, embeddings get the rest.
      - Hybrid search, since there's an exact code plus a description.
      - Both combined, because the SKU needs an exact match.
    hints:
      - Which part of the query needs an exact match?
      - Which part describes the item in plain words?
    tooVagueExamples:
      - The best one.
      - A mix, maybe.
    incorrectExamples:
      - Embedding search, since it understands meaning.
      - Keyword search alone, since SKUs are exact.

---

# Hybrid Search

---
## Content

Keyword search finds passages that contain the query's words, and embedding search finds passages by meaning.

**Hybrid search runs both on the same query and merges the two result lists, so you get exact matches and matches by meaning.**

Keyword search usually ranks results with BM25[1], which gives extra weight to rare words like an error code.

Here are each search's top results for "E4021 after upgrade":

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

Keyword search puts the exact code first. Embedding search finds the upgrade guide by meaning, but ranks two look-alike codes above E4021.

A common way to merge the lists gives a higher score to pages found by both searches:

```plain-text
1. Upgrade guide
2. Error E4021
3. Error E4012
4. Error E4210
```

Now both pages the question needs come first.

---
## Practice

Why does BM25 keyword search find an exact error code that embedding search ranks low?

???

- It matches the exact string and weights rare terms heavily.

---
## Revision

Your parts catalog gets queries like "BX-2290 hinge for oak doors". Which search fits these?

```plain-text
Keyword search
Embedding search
Hybrid search
```

???

- Hybrid, since the queries mix an exact SKU with description.

---
## Footnotes

[1:BM25]
A standard formula for ranking keyword matches. A passage scores higher when it contains the query's words, especially words that are rare across your documents.
