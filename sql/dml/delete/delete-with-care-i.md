---
author: kapnobatai136

type: normal

category: must-know

tags:
  - delete
  - syntax

---

# Delete With Care I

---

## Content

When deleting records from your table, you should take extra care.

One mistake you could make is not including the condition.

Using the same `favorite_fruits` table[1] as before, what will happen if we run this command?

```sql
DELETE FROM favorite_fruits;
```

> 💬 What do you think will happen? Leave a comment below with your answer.

Because we didn't include a constraint, **all of the records** in the `favorite_fruits` table **will be deleted**.

---

## Practice

Complete the query to delete **all the records** from the `backup_logs` table:

```sql
??? ???
```

- DELETE FROM
- backup_logs
- DELETE
- REMOVE
- WHERE id >=1
- DELETE backup_logs

---

## Revision

Which of the following records will be left in the `characters` table after running the following command?

```sql
DELETE FROM characters;
```

| name    | game              |
|---------|-------------------|
| Garrosh | World of Warcraft |
| Kratos  | God of War        |
| Desmond | Assassins Creed   |

???

- None
- Garrosh
- Kratos
- Desmond
- All

---

## Footnotes

[1:`favorite_fruits` Table]
Here is how the `favorite_fruits` table looked like where we left off:

| id | fruit      |
|----|------------|
| 1  | Strawberry |
| 2  | Raspberry  |