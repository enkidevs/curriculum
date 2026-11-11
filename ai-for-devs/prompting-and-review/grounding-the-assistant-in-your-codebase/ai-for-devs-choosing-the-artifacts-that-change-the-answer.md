---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Share only artifacts that can change the approach or the check.
    requiredConcepts:
      - Names the user table export and the hiring plan.
    acceptedAnswers:
      - User data and the hiring plan.
      - The hiring plan and the real user rows.
      - Skip the user export and the hiring doc.
      - Hiring plan, user table export.
      - Hiring plan user table export
    hints:
      - Which items could change the fix?
      - Which one is also sensitive?
    tooVagueExamples:
      - The irrelevant ones.
      - The extra stuff.
    incorrectExamples:
      - The regex and the failing test.
      - Nothing; more context is always better.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Include artifacts that change how the result will be verified, not only the approach.
    requiredConcepts:
      - It affects how the result is checked.
    acceptedAnswers:
      - So you can confirm the speedup with the same numbers.
      - It defines how success is measured.
      - It's how you'll verify the fix actually works.
    hints:
      - What happens after you get an answer?
      - How will you know it's faster?
    tooVagueExamples:
      - It's relevant.
      - It adds context.
    incorrectExamples:
      - It makes the prompt look thorough.
      - It proves the fix is already correct.
---

# Relevant Artifacts

---
## Content

When you ask an assistant to fix a bug, the files and logs you paste are what it works from. More isn't automatically better.

**Include an artifact only if it can change the approach or how you'll check the fix.**

Say your invoice export times out for large accounts. Three artifacts pass that test.

The ticket sets the boundary:

```plain-text
Invoice CSV export times out for accounts over roughly 50,000 invoices.
Smaller accounts finish in under two seconds.
```

The log shows what happens at runtime:

```plain-text
export.invoices account=8812 db_queries=1 rows_buffered=61204
heap_mb=1180 duration_ms=31842 status=timeout
```

One query loads all 61,204 rows into memory, and the export times out after about 32 seconds.

The current function shows where that comes from:

```javascript
const rows = await db.query(INVOICES_SQL, [accountId]);
return rows.map(toCsvLine).join("\n");
```

It loads every row, then builds the whole CSV in memory. Customer rows and last quarter's roadmap can't change this approach, so they stay out.

---
## Practice

You ask an assistant to fix a signup email bug. Which two would you not share: ticket, validation regex, failing test, user table export, or hiring plan?

???

- The user table export and the hiring plan.

---
## Revision

You ask an assistant to speed up a slow endpoint. The code shows the cause. Why still share the benchmark?

???

- It shows how the fix will be checked.
