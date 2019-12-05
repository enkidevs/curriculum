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
  sql.read-single-table.2: 10

links:
  - '[SQL Tutorial: SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/){website}'

aspects:
  - introduction

---

# SELECT

---
## Content

Queries in SQL are commonly written to return only the columns of interest. Let's take another look at the `pokemon` table:

| id | name      | type_1 | type_2 | hp | attack |
|----|-----------|--------|--------|----|--------|
| 1  | Bulbasaur | Grass  | Poison | 45 | 49     |
| 2  | Ivysaur   | Grass  | Poison | 60 | 62     |
| 3  | Venusaur  | Grass  | Poison | 80 | 82     |

If you only want to see *some* of the columns in a table, use a `SELECT` statement followed by a comma-separated list of the columns you wish to retrieve:

```sql
SELECT 
  name, 
  hp, 
  attack
FROM 
  pokemon;
```

The above command retrieves the `name`, `hp` and `attack` information for all of the *rows* in the `pokemon` table. The resulting table would look something like this:

| name      | hp | attack |
|-----------|----|--------|
| Bulbasaur | 45 | 49     |
| Ivysaur   | 60 | 62     |
| Venusaur  | 80 | 82     |

Note that every time you run a query, you get a copy of your original table that contains only the requested columns. This resulting table is also commonly referred to as the *result set*. It is also important to keep in mind that the *result set* isn't stored permanently in the database, and that it doesn't change any tables in the database.

Although returning all data from a table is commonly used when inspecting new databases, it is advised against using the `SELECT *` syntax for *real production data* (which usually contains a large amount of information) due to the following reasons:
- retrieving more data than the application needs to function
- when working with multiple joined tables it is possible to return two columns of the same name from two different tables (often leading to crashes)
- some databases charge money per retrieved data (Google's BigQuery) leading to unwanted costs

---
## Practice

Which of the following queries will retrieve only the `id` and `name` columns from the `move_names` table?

???

* `SELECT id, name FROM move_names`
* `SELECT *, id, name FROM move_names`
* `SELECT ONLY id, name FROM move_names`
* `SELECT id, SELECT name, FROM move_names`
* `SELECT id AND name FROM move_names`
 
 

