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

tags:

  - introduction

links:

  - '[SQL Tutorial: WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}'

aspects:
  - introduction


---

# WHERE

---
## Content

When added to a SQL `SELECT` statement, `WHERE` allows us to select rows in a table by specifying conditions.

The conditional statement that follows `WHERE` will be evaluated for each row. If the statement evaluates to true, the row will be included in the query result.

Some of the simplest conditional statements involve comparison operators like `=`, `>=`, `<=`, `>` and `<` (equal to, greater than or equal to, less than or equal to, greater than, and less than, respectively).

For example, to retrieve all information in the `pokemon` table about the Pokemon named "caterpie", query:

```sql
SELECT *
FROM pokemon
WHERE name = 'caterpie';
```

To retrieve the `name` and `cost` of all items with `fling_power` greater than or equal to 30, query:

```sql
SELECT name, cost
FROM item
WHERE fling_power >= 30;
```

Note that text needs to be enclosed with quote marks (`'text'`), while integers (and other numerical types) should not have quotes.


---
## Practice

Complete the following query to retrieve the `id` and `power` for all the rows from the `move` table where `accuracy` is less than 100.


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
 
 
