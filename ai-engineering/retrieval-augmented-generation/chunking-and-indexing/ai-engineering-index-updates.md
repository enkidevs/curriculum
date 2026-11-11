---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Deleting that page's chunks from the index when the page was removed.
    requiredConcepts:
      - Removing the deleted page's chunks from the index.
    acceptedAnswers:
      - It never deleted that page's chunks.
      - Removing the old page's chunks from the index.
      - The delete step, so its chunks are still searchable.
    hints:
      - Where is the bot still finding that page?
      - Which kind of docs change needs its own index update?
    tooVagueExamples:
      - An update.
      - Some cleanup.
    incorrectExamples:
      - Re-embedding the whole index with a new model.
      - Adding the page's new version to the index.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: New text shifts where the chunk boundaries fall, so the old chunks no longer line up with the page.
    requiredConcepts:
      - The edit shifts the chunk boundaries.
    acceptedAnswers:
      - The edit moves where the chunks start and end.
      - Chunk boundaries shift when the text changes.
      - The old chunks no longer match how the new page splits.
    hints:
      - Where do chunk boundaries fall?
      - What happens to the chunks after the edited paragraph?
    tooVagueExamples:
      - It's simpler.
      - The page changed.
    incorrectExamples:
      - The embedding model has to be changed too.
      - Vector databases can't update a single chunk.

---

# Index Updates

---
## Content

Your search index is a copy of your docs, split into chunks.

**When the docs change, the index has to change with them.**

Each kind of change needs its own update:

- **Page edited:** replace all its chunks
- **Page deleted:** delete its chunks
- **New page:** embed it and add its chunks

An edit replaces all of a page's chunks, even for a one-line change, because new text shifts where the chunk boundaries fall. Storing a page ID on every chunk lets you find them all with one query.

Deletes are the update teams miss most. An indexing job usually loops over the pages that exist today, so it never sees a deleted page. A month after a "Legacy CSV export" page was deleted, a docs bot still answers from it:

```plain-text
Retrieved: [1] Legacy CSV export: Open Reports >
Legacy export and pick a date range.
Answer: Open Reports > Legacy export and pick a
date range.
```

That menu no longer exists.

> 💡 To catch deletes, compare the page IDs in your index with the pages that still exist.

---
## Practice

A docs page was deleted last month, but your bot still quotes it. What did your indexing miss?

???

- Deleting that page's chunks from the index.

---
## Revision

One paragraph of a docs page was edited. Why does the index replace all of that page's chunks?

???

- The edit shifts where the page's chunk boundaries fall.
