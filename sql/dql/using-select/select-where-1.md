---
author: claremarie
type: normal
category: must-know
links:
  - >-
    [SQL Tutorial:
    WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# WHERE (1)


---

## Content

Aside from columns, you might also want to restrict the number of records (rows) returned. 

Introducing: the `WHERE` keyword! Here it is in action:

```sql
SELECT column_1, column_2,... 
FROM table_name
WHERE condition;
```

When added to a SQL `SELECT` statement, `WHERE` allows us to select rows in a table based on conditions you set. 

The conditional statement that follows `WHERE` is evaluated for each row. If it's evaluated as true, the row will be included in the query result.


---

## Practice

The `WHERE` keyword is used to select ??? based on conditions.

- rows
- columns
- tables


---

## Revision

Which query will return the `language_id` for the move named `Headbutt`?

???

- `SELECT language_id FROM move_name WHERE name = 'Headbutt';`
- `FROM 'Headbutt' SELECT language_id;`
- `WHERE name IS 'Headbutt' SELECT language_id;`
- `SELECT language_id FROM 'Headbutt' WHERE name = move_name;`
- `SELECT language_id FROM move_name WHERE 'Headbutt';`
