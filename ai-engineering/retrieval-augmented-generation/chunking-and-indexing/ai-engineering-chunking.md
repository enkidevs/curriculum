---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Retrieval may return only one half of the step, so the answer leaves out part of it.
    requiredConcepts:
      - Only half the step gets retrieved, or the answer misses part of the step.
    acceptedAnswers:
      - Search may return only half of step 3.
      - The answer could skip the part in the other chunk.
      - Neither chunk holds the whole step, so the answer is incomplete.
    hints:
      - Which chunk holds the whole step?
      - What if search returns only one of the two?
    tooVagueExamples:
      - The answer is worse.
      - Chunks are messy.
    incorrectExamples:
      - The embedding fails because the chunk is too short.
      - Nothing, since search returns both chunks together.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Its one vector blends all five tasks, so it matches a question about any one of them only weakly.
    requiredConcepts:
      - One vector covers all the tasks, or each task gets only a weak match.
    acceptedAnswers:
      - One vector mixes all five tasks, so each match is weak.
      - The page's vector is an average of everything on it.
      - No single task stands out in a vector made from the whole page.
    hints:
      - How many vectors does a whole page get?
      - What does that vector represent when the page covers five tasks?
    tooVagueExamples:
      - It's too big.
      - Search gets confused.
    incorrectExamples:
      - Embedding models can't read more than one task at a time.
      - Whole pages can't be stored in a vector database.

---

# Chunking

---
## Content

Embedding a whole page as one vector works poorly.

**One vector for a page that covers five tasks matches a question about any one of them only weakly.**

So RAG pipelines split documents into smaller passages, called chunks, and embed and search each one separately. This is called chunking.

Here's a page from an analytics product's admin docs:

```plain-text
Schedule a backup
Open Settings > Backups and pick a daily time.

Restore from a backup
Stop the server first. Then run fernway restore
--from <file>. A restore overwrites current data.
```

The simplest way is a fixed-size split, which cuts every N words wherever the count runs out. Real chunks are a few hundred words, but here's a 20-word split to keep it short:

```plain-text
chunk 1: Schedule a backup. Open Settings > Backups
and pick a daily time. Restore from a backup. Stop
the server first.
chunk 2: Then run fernway restore --from <file>. A
restore overwrites current data.
```

For "How do I restore a backup?", search may return only chunk 2, since most of chunk 1 is about scheduling. The bot replies:

```plain-text
Run fernway restore --from <file>. This
overwrites your current data.
```

The warning to stop the server first was in chunk 1, so the answer leaves it out.

> ‼️ A fixed-size split can cut one step in half, and then the answer is missing part of it.

---
## Practice

Fixed-size chunking cuts a setup guide's step 3 across two chunks. What can go wrong when answering?

???

- Search may return only half the step, so the answer misses part.

---
## Revision

A docs page covers five separate tasks. Why does embedding the whole page as one chunk make search worse?

???

- Its one vector blends all five, so each match is weak.
