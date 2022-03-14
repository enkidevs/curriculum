---
author: SebaRaba
type: normal
category: must-know
tags:
  - workout
links:
  - >-
    [More on
    DISTINCT](https://www.tutorialspoint.com/sql/sql-distinct-keyword.htm){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Distinct clause


---

## Content

The `DISTINCT` keyword enables users to filter the duplicates that result after doing a `SELECT` query.

We will give some examples based on a database we have set up:

```sql
SELECT COUNT(ability_id)
FROM ability_name;
```

Output:

| count |
| ----- |
| 1397  |

First, we count how many ability ids are there in the `ability_name` table.

If we would like to see how many of them are `DISTINCT`:

```sql
SELECT COUNT(DISTINCT ability_id)
FROM ability_name;
```

Output:

| count |
| ----- |
| 251   |


---

## Practice

We know that the table `pokedex_name` has a field called `name` with 42 entries. We would like to see how many of these are distinct values. Which query do you think will have the desired output?

```sql
-- A
DISTINCT SELECT COUNT(name) 
FROM pokedex_name;

-- B
SELECT * 
FROM pokedex_name;

-- C
SELECT DISTINCT COUNT(name) 
FROM pokedex_name;

-- D
SELECT COUNT(DISTINCT name)
FROM pokedex_name;
```

???

- D
- B
- C
- A


---

## Revision

Consider the following table named `GRADES` with the following query. Fill the gaps such that we will have no duplicate `NAME`s in the resulting table:

| NAME      | GRADE_PERC |
|-----------|------------|
| John      | 56%        |
| Sebastian | 68%        |
| Doris     | 56%        |
| Alice     | 88%        |
| Stefan    | 68%        |
| Raul      | 50%        |

```sql
SELECT ???
FROM ???
??? BY GRADE_PERC;
```

- `DISTINCT name`
- `GRADES`
- `ORDER`
- `EMPLOYEES`
- `*`
