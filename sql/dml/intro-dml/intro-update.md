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

# UPDATE


---

## Content

On second thought, you realize that you don't enjoy pineapples that much.

Using the same `fruits` table:

| id | name      |
| -- | --------- |
| 1  | Raspberry |
| 2  | Pineapple |

Let's see how you can update the `Pineapple` entry to `Grape`.

Updating is done through, no points for guessing, the `UPDATE` keyword:

```sql
UPDATE 
  fruits
SET 
  name = 'Grape'
WHERE 
  id = 2
```

Done 🎉. The `fruits` table now looks like this:

| id | name      |
| -- | --------- |
| 1  | Raspberry |
| 2  | Grape     |

> 💡 This is a short introduction to the `UPDATE` keyword. We'll explain how everything works in the following workouts.


---

## Practice

Modifying the value of an existing column is done using the ??? keyword.

- UPDATE
- INSERT
- SELECT
- FROM


---

## Revision

Update the value of the `name` column to `"Artemis"` **if** the `id` is `6`:

```sql
??? 
  pets
??? 
  name = ???
??? 
  id = 6
```

- UPDATE
- SET
- "Artemis"
- WHERE
