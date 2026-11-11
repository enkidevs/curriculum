---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The source, title, and section stored with each chunk, which let your app build the link.
    requiredConcepts:
      - Source, title, and section metadata on each chunk, or at least the source and section.
    acceptedAnswers:
      - The source file, title, and section on each chunk.
      - Each chunk's source path and section heading.
      - Source and section metadata, which build the link.
    hints:
      - What does a link to a section need to know?
      - Is that in the chunk's text, or stored beside it?
    tooVagueExamples:
      - The metadata.
      - Some fields.
    incorrectExamples:
      - The chunk's embedding vector.
      - The version field alone.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Adding a field later means reprocessing every document, because the indexing job is what writes the fields.
    requiredConcepts:
      - Adding a field later means reprocessing or re-indexing every document.
    acceptedAnswers:
      - A new field later means re-indexing everything.
      - You'd have to reprocess every document to add one.
      - The indexing job writes them, so changes mean a full rerun.
    hints:
      - Which job writes the metadata?
      - What does adding a field to a million chunks take?
    tooVagueExamples:
      - It's good planning.
      - To be organized.
    incorrectExamples:
      - Vector databases can't store metadata added later.
      - Metadata changes the embeddings, so it has to be fixed first.

---

# Chunk Metadata

---
## Content

Each chunk in your index stores more than its text.

**Chunk metadata is the extra information stored with a chunk, like its source and version, and each field has a job later.**

Here's one chunk as a docs bot's index might store it:

```plain-text
text: Stop the server first. Then run fernway restore ...
source: docs/admin/backups.md
title: Backups
section: Restore from a backup
version: 5
updated: 2026-09-14
access: public
```

Only `text` gets embedded and searched. The other fields:

- **version:** lets search filter to the customer's version
- **source, title, section:** build a citation link
- **updated:** shows which of two passages is newer
- **access:** lets search show each person only the docs they may see

When an answer uses this chunk, the model writes only `[1]`, and your app fills in the rest from the metadata:

```plain-text
Stop the server before you restore [1].

[1] Backups > Restore from a backup
    docs/admin/backups.md
```

> ‼️ The indexing job writes these fields, so adding one later means reprocessing every document. Decide on them before your first full index.

---
## Practice

Your bot's answers should link to the exact docs section used. Which chunk metadata makes that possible?

???

- The source, title, and section stored with each chunk.

---
## Revision

Why choose your chunk metadata fields before the first full indexing run?

???

- Adding a field later means reprocessing every document.
