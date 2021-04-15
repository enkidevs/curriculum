---
author: claremarie

levels:
  - basic
  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.read-single-table.0: 10
  sql.read-single-table.1: 10


links:
  - '[SQL Tutorial: WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}'

aspects:
  - introduction

---

# WHERE

---
## Content

As with returning all columns, you will generally want to restrict the number of records (rows) returned to comply with a constraint. This is done using the `WHERE` keyword and the query would generally look like this:
```sql
SELECT column_1, column_2,... 
FROM table_name
WHERE condition;
```

When added to a SQL `SELECT` statement, `WHERE` allows us to select rows in a table by specifying conditions. The conditional statement that follows `WHERE` will be evaluated for each row. If the statement evaluates to true, the row will be included in the query result.

Some of the simplest conditional statements involve comparison operators like `=` (equal to), `>=` (greater than or equal to), `<=` (less than or equal to), `>` (greater than) and `<` (less than).

Consider the following `pokemon` table:

| id | name       | total | hp | attack | defense |
|----|------------|-------|----|--------|---------|
| 10 | Caterpie   | 195   | 45 | 30     | 35      |
| 11 | Metapod    | 205   | 50 | 20     | 55      |
| 12 | Butterfree | 395   | 60 | 45     | 50      |
| 13 | Weedle     | 195   | 40 | 35     | 30      |
| 14 | Kakuna     | 205   | 45 | 25     | 50      |
| 15 | Beedrill   | 395   | 65 | 90     | 40      |

For example, to retrieve all information in the `pokemon` table about the Pokemon named `"Caterpie"`, query:

```sql
SELECT *
FROM pokemon
WHERE name = 'Caterpie';
```

And the resulting table would look like:

| id | name     | total | hp | attack | defense |
|----|----------|-------|----|--------|---------|
| 10 | Caterpie | 195   | 45 | 30     | 35      |

To retrieve the `name` and `hp` of all pokemon with `attack` greater than or equal to 30, query:

```sql
SELECT name, hp
FROM pokemon
WHERE attack >= 30;
```

This query would return the following table:

| name       | hp |
|------------|----|
| Caterpie   | 45 |
| Butterfree | 60 |
| Weedle     | 40 |
| Beedrill   | 65 |

Note that text needs to be enclosed within quotation marks (`'text'`), while integers (and other numerical types) should not have quotes.

---
## Practice

Complete the following query to retrieve the `id` and `power` from the `move` table where `accuracy` is less than 100.


```sql
SELECT id, power
FROM move
???;
```


* `WHERE accuracy < 100`
* `WHEN accuracy < 100`
* `WHERE accuracy less than 100`
* `IF col accuracy < 100`
* `WHEN accuracy IN move < 100`
* `IF accuracy < 100`


---
## Revision

Which query will return the `language_id` for the move named `Headbutt`?

???

* `SELECT language_id FROM move_name WHERE name = 'Headbutt';`
* `FROM 'Headbutt' SELECT language_id;`
* `WHERE name IS 'Headbutt' SELECT language_id;`
* `SELECT language_id FROM 'Headbutt' WHERE name = move_name;`
* `SELECT language_id FROM move_name WHERE 'Headbutt';`
 
 

