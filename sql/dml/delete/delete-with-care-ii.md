---
author: kapnobatai136
type: normal
category: must-know
tags:
  - delete
  - syntax
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Delete With Care II


---

## Content

You should also take extra care when writing your conditions.

If they are too lenient, you will delete more records than you intend.

If they are too strict, you won't delete all the intended records.

For example, here is a table name `friends`:

| id | name     | city        |
| -- | -------- | ----------- |
| 1  | Rigby    | London      |
| 2  | Mordecai | London      |
| 3  | Pops     | Paris       |
| 4  | Don      | Los Angeles |

You had a falling out with `"Rigby"` and you want to remove him.

Since he is from `"London"`, one way you could write your constraint is by matching the `city`:

```sql
DELETE FROM 
  friends
WHERE 
  city = "London";
```

In this case, although `"Rigby"` is from `"London"`, so is `"Mordecai"`. Running the command above will delete **both records** from the `friends` table:

| id | name | city        |
| -- | ---- | ----------- |
| 3  | Pops | Paris       |
| 4  | Don  | Los Angeles |

> 💬 What are the correct ways to remove the `"Rigby"` record from the `friends` table? Leave a comment below or view others for inspiration.


---

## Practice

Using the following `friends` table:

```md
| id | name    | city     |
|----|---------|----------|
| 1  | John    | London   |
| 5  | Sarah   | New York |
| 3  | Miranda | New York |
| 4  | Bill    | Atlanta  |
```

Which records will remain after we run this command?

```sql
DELETE FROM 
  friends
WHERE 
  id > 3
```

???

- John & Miranda
- John
- Sarah & Bill
- Miranda, Sarah & Bill


---

## Revision

In the `DELETE` command, if your constraint is too lenient you will ??? and if it is too strict you will ???.

- delete more records than needed
- won't delete all the needed records
