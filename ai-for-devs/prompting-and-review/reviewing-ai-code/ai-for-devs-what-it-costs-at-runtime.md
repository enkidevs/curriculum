---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Batch the per-row lookups into one query.
    requiredConcepts:
      - Fetch the authors in one batch query.
    acceptedAnswers:
      - Collect the author IDs and load them with one `IN` query.
      - One query for posts, one for all their authors.
      - Join authors into the posts query.
    hints:
      - What runs 100 times?
      - Could those lookups be one query?
    tooVagueExamples:
      - Optimize the loop.
      - Make it faster.
    incorrectExamples:
      - Drop the `await` so the lookups run in parallel.
      - Add an index on the authors table.
---

# Runtime Cost

---
## Content

**A generated change can return the right data and still cost too much at runtime.**

This refund list runs one query, then one more for every row:

```javascript
const refunds = await listRefunds(accountId);
for (const refund of refunds) {
  refund.owner = await findUser(refund.ownerId);
}
```

On a 50-row page, that's 51 round trips to the database, one after another. Fetching all the needed users in one batch query makes it two.

Every support ticket starts on this list, so the loop sits on a hot path[1], where traffic multiplies the cost.

> 💡 When you review a loop, count the queries inside it. One query per row becomes 50 per page load.

---
## Practice

A generated report fetches 200 orders in one query, then awaits `getCustomer(order.customerId)` per order. Each run makes ??? round trips.

- 201 sequential
- two
- 200 parallel
- one

---
## Revision

Your page loads 100 posts, then calls `await findAuthor(post.authorId)` per post. What change removes most of those database round trips?

???

- Fetch all the needed authors in one batch query.

---
## Footnotes

[1: Hot Path]
Code that runs for most requests of a common workflow. Small per-request costs become large when traffic repeats them.
