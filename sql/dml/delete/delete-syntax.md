---
author: kapnobatai136

type: normal

category: must-know

tags:
  - delete
  - syntax

---

# Syntax

---

## Content

Compared to the `INSERT` and `UPDATE` keywords, `DELETE` has a more plain syntax:

```sql
DELETE FROM table_name
WHERE condition;
```

All you have to do is tell SQL:
- which table it should delete from (`DELETE FROM table_name`)
- which records it should delete (`WHERE condition`)

Take a look at the `favorite_fruits` table:

| id | fruit      |
|----|------------|
| 1  | Strawberry |
| 2  | Raspberry  |
| 3  | Avocado    |

It seems that `"Avocado"` has somehow sneaked its way into the table. This is how you would delete it:

```sql
DELETE FROM favorite_fruits
WHERE fruit = "Avocado";
```

> 💬 Can you think of any other way you could delete the `"Avocado"` record? Leave a comment below or view others for inspiration.

Done, you remove the pesky `"Avocado"` from your table:

| id | fruit      |
|----|------------|
| 1  | Strawberry |
| 2  | Raspberry  |

---

## Practice

Delete all the `students` that have graduated after `"2020-10-28"`:

```sql
??? students
??? graduation_date > ???;
```

- DELETE FROM
- WHERE
- "2020-10-28"
- DELETE
- REMOVE

---
## Revision

Delete the last five records from the `logs` table using their `id`:

```sql
??? logs
??? id IN 
  (SELECT id
  FROM logs
  ??? DESC
  ???);
```

- DELETE FROM
- WHERE
- ORDER BY id
- LIMIT 5
- DELETE
