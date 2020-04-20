---
author: claremarie

type: normal

category: must-know

tags:
  - introduction

links:
  - '[SQL Tutorial: SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/){website}'

aspects:
  - introduction

---

# SELECT Structure

---
## Content

Let's quickly go over how queries are structured.

Consider the following table, `pokemon`:

| id | name      | type_1 | type_2 |
|----|-----------|--------|--------|
| 1  | Bulbasaur | Grass  | Poison |
| 2  | Ivysaur   | Grass  | Poison |
| 3  | Venusaur  | Grass  | Poison |

To return all the data in this table, you'd use:
```sql
SELECT *
FROM pokemon;
```

The query above:
1. `SELECT`s, 
2. all the columns (represented by the `*` symbol), 
3. in the order of their definition in the database, 
4. `FROM` the `pokemon` table. 

The returned table will contain all of the *columns* and all of the *rows* from the table.

Note: all the SQL keywords like `SELECT` and `FROM` **are case insensitive**, so the code below also works.

```sql
select *
from pokemon;
```

They keywords are usually capitalized simply to make the code easier to read. 

---
## Practice

Which of the following queries do you think will return only the `id` and `name` columns from the `movie_names` table?

???

* `SELECT id, name FROM movie_names`
* `SELECT *, id, name FROM movie_names`
* `SELECT ONLY id, name FROM movie_names`
* `SELECT id, SELECT name, FROM movie_names`
* `SELECT id AND name FROM movie_names`

---
## Revision

Which of these symbols is used to denote "all columns" in SQL?

???

* `*`
* `?`
* `%`
* `#`