---
author: claremarie

levels:
  - basic 
  - beginner

type: normal

category: must-know

inAlgoPool: false

tags:

  - introduction

standards:
  sql.read-single-table.0: 10
  sql.read-single-table.2: 10

links:

  - '[SQL Tutorial: SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/){website}'

aspects:
  - introduction


---

# SELECT

---
## Content

If you only want to see *some* of the columns in a table, use a `SELECT` statement followed by a comma-separated list of the columns you wish to retrieve:

```sql
SELECT name, height, weight
FROM pokemon;
```

The above command retrieves the `name`, `height` and `weight` information for all of the *rows* in the `pokemon` table.

---
## Practice

Which of the following queries will retrieve only the `id` and `name` columns for all row of the `move_names` table?

???

* `SELECT id, name FROM move_names`
* `SELECT *, id, name FROM move_names`
* `SELECT ONLY id, name FROM move_names`
* `SELECT id, SELECT name, FROM move_names`
* `SELECT id AND name FROM move_names`
 
 
