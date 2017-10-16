# SELECT
author: lizthedeveloper

levels:

  - beginner

  - basic

type: normal

inAlgoPool: false

category: must-know

links:

  - '[SQL Tutorial: SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/)'

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

Get all of the rows and the `id`, `weight`, `name` from the `pokemon` table.

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
