---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Use fixed-size chunks with overlap, so each chunk repeats the end of the one before and a step cut at a boundary appears whole in one of them.
    requiredConcepts:
      - Overlap between fixed-size chunks, or each chunk repeating the end of the previous one.
    acceptedAnswers:
      - Fixed-size chunks with overlap.
      - Let each chunk repeat the last sentence or two of the one before.
      - Overlapping chunks, so a cut step still shows up whole once.
    hints:
      - The section is too long for one chunk. What can neighboring chunks share?
      - How can a step cut at a boundary still appear whole?
    tooVagueExamples:
      - Split it carefully.
      - Smaller chunks.
    incorrectExamples:
      - Keep the whole section as one chunk anyway.
      - Split it at every sentence.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Chunking By Section

---
## Content

Most docs already have structure: headings, with a few steps under each.

**Chunking by section splits a document at its headings, so each chunk holds one heading and everything under it.**

Here's a backups page from an analytics product's admin docs, split by section:

```plain-text
chunk 1: Schedule a backup. Open Settings > Backups
and pick a daily time.
chunk 2: Restore from a backup. Stop the server
first. Then run fernway restore --from <file>. A
restore overwrites current data.
```

For "How do I restore a backup?", search returns chunk 2, which holds every step, including the warning to stop the server first. That's why splitting by section is the usual choice for structured docs.

Some sections are too long for one chunk. Those get split into fixed-size chunks with overlap, where each chunk repeats the last sentence or two of the one before. Here's the same page cut every 20 words:

```plain-text
chunk 1: Schedule a backup. Open Settings > Backups
and pick a daily time. Restore from a backup. Stop
the server first.
chunk 2: Restore from a backup. Stop the server
first. Then run fernway restore --from <file>. A
restore overwrites current data.
```

Chunk 2 repeats the end of chunk 1, so the warning to stop the server sits right next to the restore command.

---
## Practice

One section of your setup guide is 3,000 words, too long for one chunk. How do you split it so a step cut at a boundary isn't lost?

???

- Fixed-size chunks with overlap, each repeating the end of the one before.

---
## Revision

Help articles with short sections under clear headings are usually best chunked by ???.

- section
- fixed size
- sentence
- whole article
