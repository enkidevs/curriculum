---
author: Kirill
type: normal
category: must-know
links:
  - >-
    [SQL Tutorial:
    WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}
  - >-
    [Playground](https://student.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F1cdd1b9fb861adf32b3c64e7eed415b2%2Fraw%2F3c0ae7205b732e3b7d5fb2b4c302e2d00d38d3ec%2Fsql-querying-with-conditions.json){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# WHERE (2)


---

## Content

Conditional statements can include comparison operators like:

1. `=` (equal to), 
2. `>=` (greater than or equal to), 
3. `<=` (less than or equal to),
4. `>` (greater than) and 
5. `<` (less than).

Here's another `pokemon` table:

| id | name       | total | hp | attack | defense |
| -- | ---------- | ----- | -- | ------ | ------- |
| 10 | Caterpie   | 195   | 45 | 30     | 35      |
| 11 | Metapod    | 205   | 50 | 20     | 55      |
| 12 | Butterfree | 395   | 60 | 45     | 50      |
| 13 | Weedle     | 195   | 40 | 35     | 30      |
| 14 | Kakuna     | 205   | 45 | 25     | 50      |
| 15 | Beedrill   | 395   | 65 | 90     | 40      |

Let's look up all the info on the `"Caterpie"` Pokemon:

```sql
SELECT *
FROM pokemon
WHERE name = 'Caterpie';
```

Which results in:

| id | name     | total | hp | attack | defense |
| -- | -------- | ----- | -- | ------ | ------- |
| 10 | Caterpie | 195   | 45 | 30     | 35      |

No prizes for guessing the query which gives the `name` and `hp` of all pokemon with `attack` greater than or equal to 30:

```sql
SELECT name, hp
FROM pokemon
WHERE attack >= 30;
```

The results are:

| name       | hp |
| ---------- | -- |
| Caterpie   | 45 |
| Butterfree | 60 |
| Weedle     | 40 |
| Beedrill   | 65 |

> 💡 Text needs to be enclosed within quotation marks (`'text'`), while integers[1] (and other numerical types) should not have quotes.

If you want to try this query yourself, check the *Learn More* section for a playground link. 


---

## Practice

Complete the following query to retrieve the `id` and `power` from the `move` table where `accuracy` is less than 100.

```sql
SELECT id, power
FROM move
???;
```

- `WHERE accuracy < 100`
- `WHEN accuracy < 100`
- `WHERE accuracy less than 100`
- `IF col accuracy < 100`
- `WHEN accuracy IN move < 100`
- `IF accuracy < 100`


---

## Revision

Which of the following queries will extract the `email` and `phone_number` columns, where the `first_name` is `'Andrei'`?

```sql
# 1
SELECT * FROM employees
WHERE name IS 'Andrei';

# 2
SELECT email, phone_number
FROM employees
WHERE name = 'Andrei';

# 3
SELECT email, phone_number
FROM employees
WHERE name = Andrei;
```

???

- 2
- 1
- 3


---

## Footnotes

[1:Integer]
An integer is nothing more than a whole number. For example, `1`, `12345`, and `-999` are all integers.
