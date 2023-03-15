---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [More on aggregate
    functions](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# SUM clause


---

## Content

The `SUM` clause comes in handy when we need to perform numerical addition.

Let's take a look at an example!

We'll use this `experience` table:

| id  | level | experience | growth_rate_id |
| --- | ----- | ---------- | -------------- |
| 1   | 1     | 0          | 1              |
| 2   | 2     | 10         | 1              |
| 3   | 3     | 33         | 1              |
| ... | ...   | ...        | ...            |

You want to find out the **total number of points** required to get your pokémon to level 3. You could sum up all the values yourself, or you could let SQL and `SUM` do all the work:

```sql
SELECT
  SUM(experience)
FROM
  experience
LIMIT
  3;
```

Let's break down the query. We start by telling SQL to `SUM` all the values in the `experience` table, and immediately after we `LIMIT` the number of rows to 3[1]. The result is the sum of the first three values in the `experience` column:

| SUM(experience) |
|-----------------|
| 43              |

---

## Practice

Consider the `move_effect_change` table. We want to know the sum of all values contained in the `move_effect` column:

| id | move_effect | version_group_id |
| -- | ----------- | ---------------- |
| 1  | 8           | 11               |
| 2  | 18          | 3                |
| 3  | 29          | 3                |

Construct a query to do so:

```sql
SELECT
  ???(???) 
FROM
  move_effect_change;
```

- SUM
- move_effect
- AVG
- total
- TOTAL
- ADD


---

## Revision

We have a table called `item` that contains the name and cost of every item in Pokeland. We want to know how much it would cost to buy all items...

| id | cost | name        |
| -- | ---- | ----------- |
| 1  | 0    | master-ball |
| 2  | 1200 | ultra-ball  |
| 3  | 600  | great-ball  |
| 4  | 200  | poke-ball   |

Which query will do so?

???

- `SELECT SUM(cost) FROM item;`
- `SELECT AVG(cost) FROM item;`
- `SELECT MAX(cost) FROM item;`

---

## Footnotes

[1:LIMIT]
`LIMIT` number.

This clause enables users to `SELECT` the first given number of entries
