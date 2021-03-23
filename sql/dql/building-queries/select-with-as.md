---
author: lizTheDeveloper
type: normal
category: must-know
links:
  - >-
    [SQL Tutorial:
    SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# SELECT with AS


---

## Content

Let's learn about renaming columns in your results!

Let's say you've written this query:

```sql
SELECT name, total, hp
FROM pokemon;
```

See how the meaning of `hp` might not be obvious to whoever ends up reading the results? 

You can create an *alias* for the `hp` column that reads `'Health Points'`. 

It's represented by the `AS` keyword, and in the query it looks like this:

```sql
SELECT 
  id, 
  hp AS 'Health Points', 
  attack
FROM pokemon;
```

Note that *aliases* exist only for the duration or purpose of the query and do not change the original column name. 

Here is the result of our query:

| id | Health Points | attack |
| -- | ------------- | ------ |
| 10 | 45            | 30     |
| 11 | 50            | 20     |
| 12 | 60            | 45     |
| 13 | 40            | 35     |
| 14 | 45            | 25     |
| 15 | 65            | 90     |

Remember, the information is not deleted from the database. You're simply **querying** the database, but doing so in a way where you only receive the information contained in the specified columns.


---

## Practice

Complete the following query to get the `id` and `pw` columns from the `move` table where:

1. `accuracy` is more than 100;
2. `pw` is renamed to 'Power'.

```sql
SELECT id, pw ???
FROM move
???;
```

- AS 'Power'
- `WHERE accuracy > 100`
- AS 'pw'
- called 'Power
- `WHEN accuracy > 100`
- `IF accuracy > 100`


---

## Revision

Complete the following query to get the `id` and `str` columns from the `move` table where:

1. `accuracy` is not greater than 10;
2. the `str` column is renamed 'Strength'.

```sql
SELECT id, str ???
FROM move
???;
```

- AS 'Strength'
- `WHERE accuracy <= 10`
- Rename 'Strength'
- called 'Power
- `WHEN accuracy <= 10`
- `WHERE accuracy > 10`
- `IF accuracy > 10`


---

## Quiz

### What statement gets columns and rows from tables?


Given a table called `ability` from our pokemon database:

| id  | is_main_series | generation_id | name         |
| --- | -------------- | ------------- | ------------ |
| 1   | t              | 3             | stench       |
| 2   | f              | 3             | drizzle      |
| 3   | t              | 3             | speed-boost  |
| 4   | t              | 3             | battle-armor |
| ... | ...            | ...           | ...          |

Choose the query that will get all the entries from this table:

 ???

- SELECT * FROM ability;
- DISPLAY [all] FROM ability;
- SELECT [all] FROM ability;
- FIND * FROM ability;
