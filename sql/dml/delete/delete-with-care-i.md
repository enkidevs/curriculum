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

# Delete With Care I


---

## Content

As with the `UPDATE` command, one of the most important parts of the `DELETE` syntax is the condition.

The `WHERE` in `DELETE` behaves as it would inside a `SELECT` query, and that's why you should take extra care when deleting records from your table.

One mistake you could make is not including the condition.

Using the same `favorite_fruits` table[1] as before, what will happen if we run this command?

```sql
DELETE FROM 
  favorite_fruits;
```

Because we didn't include a constraint, **all of the records** in the `favorite_fruits` table **will be deleted**.

You can achieve the same result by writing:

```sql
DELETE FROM
  favorite_fruits
WHERE TRUE;
```


---

## Practice

Complete the query to delete **all the records** from the `backup_logs` table:

```sql
??? 
  ???
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
DELETE FROM
  characters;
```

```md
| name    | game              |
|---------|-------------------|
| Garrosh | World of Warcraft |
| Kratos  | God of War        |
| Desmond | Assassins Creed   |
```

???

- None
- Garrosh
- Kratos
- Desmond
- All


---

## Footnotes

[1:Favorite Fruits Table]
Here is how the `favorite_fruits` table looked like where we left off:

| id | fruit      |
| -- | ---------- |
| 1  | Strawberry |
| 2  | Raspberry  |
