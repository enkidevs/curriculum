---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Parameterize user input so it can't change the SQL.
    requiredConcepts:
      - Use a bound query parameter.
    acceptedAnswers:
      - Use a parameterized query for q.
      - Bind the value instead of building the SQL string.
      - A placeholder plus a parameter, no string interpolation.
    hints:
      - What if q contains SQL?
      - How do drivers keep data separate from the query?
    tooVagueExamples:
      - Sanitize it.
      - Make it secure.
    incorrectExamples:
      - Strip quotes from the value.
      - Log queries to catch injections.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: SELECT * exposes columns added later without anyone deciding to.
    requiredConcepts:
      - Columns added later get exposed without a decision.
    acceptedAnswers:
      - If someone adds a private column, the page shows it automatically.
      - Future fields leak because nobody picked the columns.
      - Any new column, say home address, becomes public with no review.
    hints:
      - What happens when the table gets a new column?
      - Who decides what the page shows?
    tooVagueExamples:
      - It's bad practice.
      - Too much data.
    incorrectExamples:
      - The response gets bigger.
      - The query runs slower.
---

# Security Review

---
## Content

When you review a route an assistant generated, one correct security check can make the rest look safe.

This refund list has the right read permission:

```javascript
router.get("/refunds", requirePermission("refunds:read"), async (req, res) => {
  const rows = await db.query(
    `SELECT * FROM refunds WHERE status = '${req.query.status}'`
  );
  res.json(rows);
});
```

**The permission check controls who can call the route. It says nothing about what their input does to the query.**

There are two more problems:

- **`req.query.status`** goes straight into the SQL text, so a crafted value can change the query. Pass it as a bound parameter instead.
- **`SELECT *`** returns every column, so one added later reaches support staff without anyone choosing to expose it. Name the columns the response needs.

> 💡 In the same pass, check input validation, secrets, how broad the permission is, and whether the route can write anything it shouldn't.

---
## Practice

Your assistant writes a search route whose SQL contains `WHERE name LIKE '%${req.query.q}%'`. What's the essential fix?

???

- Pass the search term as a bound query parameter.

---
## Revision

Your public team page's endpoint returns `SELECT * FROM staff`. Every column is public today. What's the risk?

???

- Any column added later goes public without anyone choosing it.
