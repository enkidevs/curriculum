---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Exact strings such as error codes, SKUs, version numbers, or names.
    requiredConcepts:
      - Any two of error codes, SKUs or product codes, version numbers, and names.
    acceptedAnswers:
      - Error codes and SKUs.
      - Version numbers and people's names.
      - Product codes and exact error IDs.
    hints:
      - Which queries depend on one exact string?
      - What happens to codes that look almost alike?
    tooVagueExamples:
      - Hard queries.
      - Technical questions.
    incorrectExamples:
      - Questions phrased in casual language.
      - Long questions with several sentences.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The version string barely changes what the passages mean, so v5.1 and v5.2 passages get nearly identical embeddings.
    requiredConcepts:
      - Near-identical strings get near-identical embeddings, or embeddings capture meaning rather than exact characters.
    acceptedAnswers:
      - The two version strings get almost the same vector.
      - Embeddings see "v5.2" and "v5.1" as nearly the same.
      - It matches by meaning, and the versions mean almost the same thing to it.
    hints:
      - How much does "v5.2" change what a passage is about?
      - What do embeddings capture well?
    tooVagueExamples:
      - Search is imperfect.
      - Bad results.
    incorrectExamples:
      - The index only stores the newest version.
      - The query was too short to embed.

---

# Embedding Limits

---
## Content

An embedding captures what a passage is about as a whole.

**So embedding search often misses exact strings, like error codes, product codes, version numbers, and names.** A code like `E4021` barely changes a passage's vector.

Here are a docs bot's top three results for an error-code question, with illustrative scores:

```plain-text
Query: What does error E4021 mean?

0.86  Error E4012: Export timed out
0.85  Error E4210: Disk quota reached
0.81  Error E4021: API key lacks permission
```

The question means little beyond its code, so it's about equally close to every page that explains an error. Small differences decide the order, and the E4021 page lands third.

With only the top two passages in the prompt, the bot replies:

```plain-text
E4021 means your export timed out. Try a
smaller date range.
```

The E4021 page never reached the model, so the bot explained the wrong error.

> 💡 For questions with exact strings, add keyword search, which matches the string itself. Using both together is called hybrid search.

---
## Practice

Name two kinds of search queries where embedding search often misses the exact match.

???

- Error codes and product SKUs.

---
## Revision

Someone searches your docs for "v5.2" and gets passages about v5.1. Why might embedding search do that?

???

- The version string barely changes the passages' embeddings.
