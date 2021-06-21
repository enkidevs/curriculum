---
author: kapnobatai136
type: normal
category: must-know
tags:
  - introduction
  - update
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# DELETE


---

## Content

What if you don't like raspberries as well, but you also don't want to replace it with another fruit?

Introducing the `DELETE` keyword. With it, you can remove entire records from your table.

Using the table from the previous insight[1], we would write:

```sql
DELETE FROM 
  fruits
WHERE 
  name = 'Raspberry';
```

That's it, no more raspberries:

| id | name  |
| -- | ----- |
| 2  | Grape |

> 💡 This is a short introduction to the `DELETE` keyword. We'll explain how everything works in the following workouts.


---

## Practice

Removing records from a table is done using which keyword?

???

- DELETE
- REMOVE
- SELECT
- UPDATE


---

## Revision

Remove the record that has `3` as `id` from the `managers` table:

```sql
??? 
  managers
??? 
  id = 3;
```

- DELETE FROM
- WHERE
- DELETE


---

## Footnotes

[1:Fruits Table]
Here is how the `fruits` table looked like where we left off:

| id | name      |
| -- | --------- |
| 1  | Raspberry |
| 2  | Grape     |
