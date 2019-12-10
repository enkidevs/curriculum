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

tags:

  - workout

links:

  - '[More on AVG clause](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}'

aspects:
  - workout


---

# AVG clause

---
## Content

`AVG` returns the average numerical value of a given column.

Using `AVG` function[1] to get the average of only the first five rows:

```sql
SELECT AVG(experience) as Result
FROM experience
LIMIT 5;
```

Output:

| avg    |
|--------|
| 55.800 |

---
## Practice

Consider the following table of items. This table has a field called `cost`, indicating how much each item costs. We would like to know an average cost for all items in the table. Fill the gaps accordingly:

| id | cost | name        |
|----|------|-------------|
| 1  | 0    | master-ball |
| 2  | 1200 | ultra-ball  |
| 3  | 600  | great-ball  |
| 4  | 200  | poke-ball   |

```sql
SELECT ???(???)
??? item
```

* AVG
* cost
* FROM
* AS
* LIKE
* AVERAGE
* SUM

---
## Revision

We have a table called `contest_combo`. It holds info about how much damage each combo can give. We want to know an average damage value for the second move:

| id | first_move | second_move |
|----|------------|-------------|
| 1  | 1          | 3           |
| 2  | 1          | 29          |
| 3  | 1          | 185         |

```sql
SELECT ???(???)
FROM contest_combo;
```
Output:

| avg     |
|---------|
| 72.3334 |

* AVG
* second_move
* SUM
* first_move

---
## Footnotes
[1:Pokemon Db]
We will use the same segment of `experience` table for all aggregate functions:

| id | level | experience | growth_rate_id |
|----|-------|------------|----------------|
| 1  | 1     | 0          | 1              |
| 2  | 2     | 10         | 1              |
| 3  | 3     | 33         | 1              |

```sql
SELECT experience
FROM experience
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
