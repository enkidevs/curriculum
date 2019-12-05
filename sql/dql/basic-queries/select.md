---
author: lizTheDeveloper

levels:
  - beginner
  - basic
  - medium

type: normal

category: must-know

inAlgoPool: false


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

The `SELECT` command is used to retrieve data from tables. Consider the following table named `pokemon`:

| id | name       | total | hp | attack | defense |
|----|------------|-------|----|--------|---------|
| 10 | Caterpie   | 195   | 45 | 30     | 35      |
| 11 | Metapod    | 205   | 50 | 20     | 55      |
| 12 | Butterfree | 395   | 60 | 45     | 50      |
| 13 | Weedle     | 195   | 40 | 35     | 30      |
| 14 | Kakuna     | 205   | 45 | 25     | 50      |
| 15 | Beedrill   | 395   | 65 | 90     | 40      |

To get all of the data from a table, you can use a `SELECT *` statement.

```sql
SELECT *
FROM pokemon;
```

The above command gets all of the *columns* and all of the *rows* from the `pokemon` table[1].

We can also use the `SELECT` statement to specify the exact *columns* we want to display from the table.

```sql
SELECT name, total, hp
FROM pokemon;
```

Depending on how the database was created, you might have to deal with complicated column names. In order to increase readability, or to avoid repeatedly writing lengthy names, the columns can be renamed using *aliases* represented by the `AS` keyword.

```sql
SELECT 
  id, 
  hp AS 'Health Points', 
  attack
FROM pokemon;
```

The above command gets only the `id`, `hp`, and `attack` columns from the table, but keeps all of the rows of the `pokemon` table. On top of that, we create an *alias* for the `hp` column that reads `'Health Points'`. It is important to keep in mind that *aliases* exist only for the duration or purpose of the query and do not change the original column name. Here is what the result of our query looks like:

| id | Health Points | attack |
|----|---------------|--------|
| 10 | 45            | 30     |
| 11 | 50            | 20     |
| 12 | 60            | 45     |
| 13 | 40            | 35     |
| 14 | 45            | 25     |
| 15 | 65            | 90     |

Remember, the information is not deleted from the database, you're simply **querying** the database, but doing so in a way where you only receive the information contained in the specified columns.

---
## Practice

Get all of the columns and rows from the `pokemon_form` table.

```sql
??? ???
??? ???;
```


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

```sql
??? ??? ??? ???
??? ???;
```

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

| id  | is_main_series | generation_id | name         |
|-----|----------------|---------------|--------------|
| 1   | t              | 3             | stench       |
| 2   | f              | 3             | drizzle      |
| 3   | t              | 3             | speed-boost  |
| 4   | t              | 3             | battle-armor |
| ... | ...            | ...           | ...          |

Choose the query that will get all the entries from this table:

 ???

* SELECT * FROM ability;
* DISPLAY [all] FROM ability;
* SELECT [all] FROM ability;
* FIND * FROM ability;

---
## Footnotes

[1:Shorthand]
To select all the columns from a table, in the order they were define, you can use the `*` shorthand as such:
```sql
SELECT * FROM table_name;
```
