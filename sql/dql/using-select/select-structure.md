---
author: claremarie
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [SQL Tutorial:
    SELECT](http://www.sql-tutorial.com/sql-select-sql-tutorial/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# SELECT Structure


---

## Content

Let's quickly go over how queries are structured.

Consider the following table, `pokemon`:

| id | name      | type_1 | type_2 |
| -- | --------- | ------ | ------ |
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

> 💡 All the SQL keywords like `SELECT` and `FROM` **are case insensitive**, so the code below also works.

```sql
select *
from pokemon;
```

The keywords are usually capitalized simply to make the code easier to read. 


---

## Practice

Complete the query to select the `id` and `name` columns from the `pokemon` table:

```sql
??? id, ??? 
??? pokemon
```

- SELECT
- name
- FROM
- RETURN
- id
- pokemon


---

## Revision

Which of these symbols is used to denote "all columns" in SQL?

???

- `*`
- `?`
- `%`
- `#`
