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
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Syntax


---

## Content

Compared to the `INSERT` and `UPDATE` keywords, `DELETE` has a more plain syntax:

```sql
DELETE FROM 
  table_name
WHERE 
  condition;
```

All you have to do is tell SQL:

- which table it should delete from (`DELETE FROM table_name`)
- which records it should delete (`WHERE condition`)

Take a look at the `favorite_fruits` table:

| id | fruit      |
| -- | ---------- |
| 1  | Strawberry |
| 2  | Raspberry  |
| 3  | Avocado    |

It seems that `"Avocado"` has somehow sneaked its way into the table. This is how you would delete it:

```sql
DELETE FROM 
  favorite_fruits
WHERE 
  fruit = "Avocado";
```

> 💬 Can you think of any other way you could delete the `"Avocado"` record? Leave a comment below or view others for inspiration.

Done, you remove the pesky `"Avocado"` from your table:

| id | fruit      |
| -- | ---------- |
| 1  | Strawberry |
| 2  | Raspberry  |


---

## Practice

Delete all the `students` that have graduated after `"2020-10-28"`:

```sql
??? 
  students
??? 
  graduation_date > ???;
```

- DELETE FROM
- WHERE
- "2020-10-28"
- DELETE
- REMOVE


---

## Revision

Delete all the records from `logs` that have a `transaction_id` ending in `a3g`:

```sql
??? 
  logs
??? 
  transaction_id 
  ??? ???;
```

- DELETE FROM
- WHERE
- LIKE
- "%a3g"
- DELETE
- "a3g%"
- "a3g_"
