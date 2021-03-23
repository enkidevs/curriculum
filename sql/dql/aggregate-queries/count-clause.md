---
author: SebaRaba
type: normal
category: must-know
tags:
  - workout
links:
  - >-
    [More on COUNT
    clause](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# COUNT clause


---

## Content

The `COUNT` clause returns the total number of entries in a given column.

Using `COUNT` function[1]:

```sql
SELECT COUNT(experience) AS count
FROM experience
LIMIT 5;
```

| count |
| ----- |
| 5     |

No matter how many entries there are in the `experience` table, we limit the output to 5 rows. Hence, the result is `5`.


---

## Practice

We have a table `location`. It has data stating the region each location belongs to. How many locations are there in each region? Display the result ordered by regions.

```md
| id  | region_id | name          |
| --- | --------- | ------------- |
| 1   | 4         | canalave-city |
| 2   | 4         | eterna-city   |
| 3   | 4         | pastoria-city |
| ... | ...       | ...           |
```

```sql
SELECT ???(name), ???
FROM location
??? region_id
ORDER BY region_id;
```

Output:

```md
| count | region_id |
| ----- | --------- |
| 90    | 1         |
| 64    | 2         |
| 82    | 3         |
| 126   | 4         |
| 121   | 5         |
| 104   | 6         |
```

- COUNT
- region_id
- GROUP BY
- ORDER BY
- SUM
- AVG


---

## Revision

Knowing that the pokemon db has a table called `item` and a field `name`, how do we count all name entries?

```sql
SELECT ???(???)
FROM item;
```

Output:

```md
| count |
| ----- |
| 746   |
```

- COUNT
- name
- DISTINCT name
- item
- all


---

## Footnotes

[1:Pokemon Db]
We will use the same segment of `experience` table for all aggregate functions:

| id  | level | experience | growth_rate_id |
| --- | ----- | ---------- | -------------- |
| 1   | 1     | 0          | 1              |
| 2   | 2     | 10         | 1              |
| 3   | 3     | 33         | 1              |
| ... | ...   | ...        | ...            |

```sql
SELECT experience
FROM experience
LIMIT 5;
```

Output:

| experience |
| ---------- |
| 0          |
| 10         |
| 33         |
| 80         |
| 156        |
