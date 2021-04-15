---
author: kapnobatai136
type: normal
category: must-know
tags:
  - update
  - syntax
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Updating With Different Conditions II


---

## Content

We've talked about how you can update all the records or one of the records in your `UPDATE` command, but what if you want to target multiple records?

This is controlled through the `WHERE` condition, which behaves exactly as it does in a `SELECT` query.

Take this `employees` table for example:

| id  | name | branch   | branch_id |
| --- | ---- | -------- | --------- |
| 1   | Jim  | Scranton | 24        |
| 2   | Pam  | Scranton | 24        |
| 3   | Ryan | Scranton | 24        |
| ... | ...  | ...      | ...       |

All of these employees in the `"Scranton"` branch were moved to the `"Boulder"` branch (`id = 17`), along with their boss Michael Scott.

You need to update the table to reflect their new `branch` and `branch_id`.

There are multiple ways in which you can do this. Here is one:

```sql
UPDATE 
  employees
SET
  branch = "Boulder",
  branch_id = 17
WHERE
  branch = "Scranton";
```

And this is the resulting table:

| id  | name | branch  | branch_id |
| --- | ---- | ------- | --------- |
| 1   | Jim  | Boulder | 17        |
| 2   | Pam  | Boulder | 17        |
| 3   | Ryan | Boulder | 17        |
| ... | ...  | ...     | ...       |

> 💬 Can you think of any other ways in which you can update the table? Leave a comment below or check others for inspiration.


---

## Practice

Write a query that moves all the managers' `location` from `"New York"` to `"Washington DC"`:

```sql
??? 
  managers
???
  ??? = "Washington DC"
???
  location = ???;
```

- UPDATE
- SET
- location
- WHERE
- "New York"
- "Washington DC"


---

## Revision

In SQL, it is possible to update more than one record at the same time.

???

- True
- False
