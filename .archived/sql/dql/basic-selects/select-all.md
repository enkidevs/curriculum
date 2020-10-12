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

links:
  - '[SQL Tutorial: SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/){website}'

aspects:
  - introduction

---

# SELECT

---
## Content

To retrieve data from a table we usually write queries with the help of the `SELECT` statement. A query is just a way to declare the data that you want returned and where to find it in the database. On top of that, you can specify how you want your data displayed before it is returned but for this insight we will focus on the basics of queries.
 
Consider the following table named `pokemon`:

| id | name      | type_1 | type_2 |
|----|-----------|--------|--------|
| 1  | Bulbasaur | Grass  | Poison |
| 2  | Ivysaur   | Grass  | Poison |
| 3  | Venusaur  | Grass  | Poison |

If you wanted to return all the data in this table, you would use one of the simplest queries. The syntax would look like this:
```sql
SELECT *
FROM pokemon;
```

The query above `SELECT`s all the columns (represented by the `*` symbol), in the order of their definition in the database, `FROM` the table named `pokemon`. The returned table will contain all of the *columns* and all of the *rows* from the table.

Note that all the SQL keywords like `SELECT` and `FROM` are case insensitive, but they are capitalized to improve readability. The example above can also be written as:

```sql
select *
from pokemon;
```

---
## Practice

Which of the following queries will return all columns and all rows from a table called `item`?

???

* `SELECT * FROM item`
* `SELECT all FROM item`
* `CHOOSE * FROM item`
* `SELECT * TABLE item`
* `CHOOSE * TABLE item`
* `SELECT col, row FROM item`

---
## Revision

Which of these symbols is used to denote "all columns" in SQL?

???

* `*`
* `?`
* `%`
* `#`
