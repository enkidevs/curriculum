---
author: SebaRaba

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.aggregate-single-table.0: 10


links:

  - '[More on aggregate functions](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}'

aspects:
  - workout

---

# SUM clause

---
## Content

The `SUM` clause comes in handy when we need to perform numerical addition.

Below we will see some examples based on a hypothetical database containing important information on pokemon. First, we will extract a limited number of entries[1]:

| id  | level | experience | growth_rate_id |
|-----|-------|------------|----------------|
| 1   | 1     | 0          | 1              |
| 2   | 2     | 10         | 1              |
| 3   | 3     | 33         | 1              |
| ... | ...   | ...        | ...            |

```sql
SELECT experience
FROM experience_table
LIMIT 5;
```

Output:

| experience |
|------------|
| 0          |
| 10         |
| 33         |
| 80         |
| 156        |

We can use the `SUM` function to quickly add up all the totals above[2]:

```sql
SELECT SUM(experience) FROM
(SELECT experience
  FROM experience_table
  LIMIT 5);
```

Output:

| sum |
|-----|
| 279 |

---
## Practice

Consider the `move_effect_change` table. We want to know the total amount of values contained in the `move_effect` column:

| id | move_effect | version_group_id |
|----|-------------|------------------|
| 1  | 8           | 11               |
| 2  | 18          | 3                |
| 3  | 29          | 3                |

Construct a query to do so:

```sql
SELECT ???(???) 
FROM move_effect_change;
```

* SUM
* move_effect
* AVG
* total
* TOTAL
* ADD

---
## Revision

We have a table called `items` that contains the name and cost of every item in Pokeland. We want to know how much it would cost to buy all items...

| id | cost | name        |
|----|------|-------------|
| 1  | 0    | master-ball |
| 2  | 1200 | ultra-ball  |
| 3  | 600  | great-ball  |
| 4  | 200  | poke-ball   |

Which query will do so?

???

* SELECT SUM(cost) FROM item;
* SELECT AVG(cost) FROM item;
* SELECT MAX(cost) FROM item;

---
## Footnotes
[1:LIMIT]
`LIMIT` number.
This clause enables users to `SELECT` the first given number of entries

[2:Nested Query]
We need to use nested queries to be able to `SELECT SUM()` only on the first 5 entries.
In this particular case we say: Compute the `SUM` on the experience column, taking into account only the 5 entries of the table. `AS` must be specified when using nested queries.

Check out this [great resource](https://www.tutorialspoint.com/sql/sql-sub-queries.html) if you want to find out more about nested queries.
