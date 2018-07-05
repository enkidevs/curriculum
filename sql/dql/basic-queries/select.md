---
author: lizTheDeveloper

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

inAlgoPool: false

tags:

  - introduction

  - workout

standards:
  sql.read-single-table.0: 10
  sql.read-single-table.1: 10

links:

  - '[SQL Tutorial: SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/){website}'

aspects:
  - introduction
  - workout


---

# SELECT

---
## Content

To get all of the data from a table, you can use a `SELECT` statement.

```sql
SELECT *
FROM pokemon;
```

The above command gets all of the *columns* and all of the *rows* from the `pokemon` table.

We can also use the `SELECT` statement to specify the exact *columns* we want to keep from the table, and to discard the others.

```sql
SELECT id, weight, name
FROM pokemon;
```

The above command gets only the `id`, `weight`, and `name` columns from the table, but keeps all of the rows of the `pokemon` table. Remember, the information is not deleted, you're simply **querying** the database, but doing so in a way where you only receive the information contained in the specified columns.

---
## Practice

Get all of the columns and rows from the `pokemon_form` table.

??? ???
??? ???;


* `SELECT`
* `*`
* `FROM`
* `pokemon_form`
* `GET`
* `FIND`
* `id`
* `FOR`
* `pokemon`

---
## Revision

Get all of the rows and the `id`, `weight`, `name` columns from the `pokemon` table.

??? ??? ??? ???
??? ???;


* `SELECT`
* `id, `
* `weight, `
* `name`
* `FROM`
* `pokemon`
* `moves`
* `GET`
* `FIND`
* `order`
* `FOR`

---
## Quiz 
### What statement gets columns and rows from tables?
Given a table called `ability` from our pokemon database:

```
id   | is_main_series | generation_id |      name      
=====|================|===============|===============
   1 | t              |             3 | stench
   2 | f              |             3 | drizzle
   3 | t              |             3 | speed-boost
   4 | t              |             3 | battle-armor
(...)

```

Choose the query that will get all the entries from this table:

 ???

* SELECT * FROM ability;
* DISPLAY [all] FROM ability;
* SELECT [all] FROM ability;
* FIND * FROM ability;
 
 
