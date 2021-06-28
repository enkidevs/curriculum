---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [More on MIN and MAX
    clauses](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}
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

# MIN and MAX clauses

---

## Content

The `MIN` and `MAX` clauses return the smallest or largest value in a given column.

Let's use the `pokemon_experience` table for some examples.

| id | level | experience | growth_rate_id |
|----|-------|------------|----------------|
| 1  | 1     | 0          | 1              |
| 2  | 2     | 10         | 1              |
| 3  | 3     | 33         | 1              |
| 4  | 4     | 80         | 1              |
| 5  | 5     | 156        | 1              |

Now, let's select the minimum value of the `experience` column:

```sql
SELECT
  MIN(experience)
FROM
  pokemon_experience;
```

And the output is:

| MIN(experience) |
|-----------------|
| 0               |

What if you wanted the maximum value? Then, you would write this:

```sql
SELECT
  MAX(experience)
FROM
  pokemon_experience;
```

And the output is:

| MAX(experience) |
|-----------------|
| 156             |

---

## Practice

The following `item` table stores information about items and their cost.

```md
| id | cost | name        |
| -- | ---- | ----------- |
| 1  | 0    | master-ball |
| 2  | 1200 | ultra-ball  |
| 3  | 600  | great-ball  |
| 4  | 200  | poke-ball   |
```

How could you find out the most expensive item?

```sql
SELECT
  ???(???)
FROM
  ???;
```

- MAX
- cost
- item
- expenses
- MIN
- FROM


---

## Revision

Take a look at the `move_effect_change` table:

```md
| id | move_effect | version_group_id |
| -- | ----------- | ---------------- |
| 1  | 8           | 11               |
| 2  | 18          | 3                |
| 3  | 29          | 3                |
```

How can you find the move with the **lowest** effect:

```sql
SELECT
  ???(???)
FROM
  move_effect_change;
```

- MIN
- move_effect
- MAX
- AVG
- version_group_id
