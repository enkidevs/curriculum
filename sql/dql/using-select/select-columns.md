---
author: claremarie
type: normal
category: must-know
links:
  - >-
    [SQL Tutorial:
    SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/){website}
  - >-
    [Playground](https://student.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F87bd176653e79ee9f6d7cc91cc70709f%2Fraw%2F35304e8c4731db33c74209eb8c6e7f330f4b175c%2Fsql-selecting-columns.json){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# SELECTing Columns


---

## Content

Queries in SQL are usually written to return only the columns you need. 

Here's the `pokemon` table again:

| id | name      | type_1 | type_2 | hp | attack |
| -- | --------- | ------ | ------ | -- | ------ |
| 1  | Bulbasaur | Grass  | Poison | 45 | 49     |
| 2  | Ivysaur   | Grass  | Poison | 60 | 62     |
| 3  | Venusaur  | Grass  | Poison | 80 | 82     |

To see *some* of the columns in a table, use a comma-separated list of the columns you need, after `SELECT`:

```sql
SELECT 
  name, 
  hp, 
  attack
FROM 
  pokemon;
```

The query above gives the `name`, `hp` and `attack` information for all of the *rows* in the `pokemon` table. It results in:

| name      | hp | attack |
| --------- | -- | ------ |
| Bulbasaur | 45 | 49     |
| Ivysaur   | 60 | 62     |
| Venusaur  | 80 | 82     |

> 💡 Running a query gives a *copy* of your original table that contains only the requested columns. This resulting table is often called the *result set*. 

The *result set* isn't stored permanently in the database, and it doesn't change any tables in the database.

If you want to try this query yourself, check the *Learn More* section for the playground link.

> Returning all data from a table is often useful to inspect new databases. But it's sometimes a bad idea to use the `SELECT *` syntax for *real production data* (which is often a lot of data). A couple reasons:
>
> - **Unnecessary costs!** Some databases charge money per retrieved data (e.g. Google's BigQuery)
> - When working with multiple tables it's possible to return two columns of the same name from two different tables (**often leading to crashes!**).


---

## Practice

Which of the following queries returns only the `id` and `name` columns from the `move_names` table?

???

- `SELECT id, name FROM move_names`
- `SELECT *, id, name FROM move_names`
- `SELECT ONLY id, name FROM move_names`
- `SELECT id, SELECT name, FROM move_names`
- `SELECT id AND name FROM move_names`


---

## Revision

Which of the following is a reason you might not want to use `SELECT *`?

???

- It might end up being expensive
- It will definitely crash your DB
- It's not practically useful in any way
