---
author: SebaRaba
type: normal
category: must-know
tags:
  - workout
links:
  - >-
    [More on AVG
    clause](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# AVG Clause


---

## Content

`AVG` returns the average numerical value of a given column.

Using the following segment of the `experience` **table**:

| id | level | experience | growth_rate_id |
| -- | ----- | ---------- | -------------- |
| 1  | 1     | 0          | 1              |
| 2  | 2     | 10         | 1              |
| 3  | 3     | 33         | 1              |

Let's see what the values of the `experience` **column** look like:

```sql
SELECT experience
FROM experience
```

Output:

| experience |
| ---------- |
| 0          |
| 10         |
| 33         |
| 80         |
| 156        |

Using the `AVG` function, you can find the average of the values in a select column:

```sql
SELECT AVG(experience) as Result
FROM experience
```

Output:

| Result |
| ------ |
| 55.800 |


---

## Practice

Consider the following table `item`. 

| id | cost | name        |
| -- | ---- | ----------- |
| 1  | 0    | master-ball |
| 2  | 1200 | ultra-ball  |
| 3  | 600  | great-ball  |
| 4  | 200  | poke-ball   |

This table has a field called `cost`, indicating how much each item costs. We would like to know an average cost for all items in the table. Fill the gaps accordingly:

```sql
SELECT ???(???)
??? item
```

- AVG
- cost
- FROM
- AS
- LIKE
- AVERAGE
- SUM


---

## Revision

We have a table called `contest_combo`. It holds info about how much damage each combo can give. We want to know an average damage value for the second move:

| id | first_move | second_move |
| -- | ---------- | ----------- |
| 1  | 1          | 3           |
| 2  | 1          | 29          |
| 3  | 1          | 185         |

```sql
SELECT ???(???)
FROM contest_combo;
```

Output:

```md
| avg     |
| ------- |
| 72.3334 |
```

- AVG
- second_move
- SUM
- first_move
