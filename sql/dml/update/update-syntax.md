---
author: kapnobatai136
type: normal
category: must-know
tags:
  - update
  - syntax
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Syntax


---

## Content

`UPDATE` is a common SQL statement used to edit/modify/update the values stored in the table's columns.

Let's start by taking a look at the `UPDATE` syntax:

```sql
UPDATE 
  table_name
SET 
  column_name = value
WHERE 
  condition;
```

The first thing to do is tell SQL which table it should upload by writing `UPDATE table_name`.

Using the `SET` keyword, you tell SQL which **columns' value** it should update, and the updated value.

Finally, you tell SQL which **records** it should upload using the `WHERE` keyword.

In the following table, someone made a typo when inserting a new manager:

| id | name              | branch   |
| -- | ----------------- | -------- |
| 1  | Robert California | New York |
| 2  | Michael Scot      | Scranton |

For the second record (`id = 2`), the manager's name should be `"Michael Scott"`. This is how you would update it:

```sql
UPDATE 
  managers
SET 
  name = "Michael Scott"
WHERE 
  id = 2;
```

And this is the output:

| id | name              | branch   |
| -- | ----------------- | -------- |
| 1  | Robert California | New York |
| 2  | Michael Scott     | Scranton |


---

## Practice

Write a query that updates the `location` to `"France"` for the employee with `7` as `id`:

```sql
??? 
  employees
??? 
  location = ???
WHERE 
  ??? = 7
```

- UPDATE
- SET
- "France"
- id


---

## Revision

Complete the `UPDATE` syntax:

```sql
??? 
  table_name
??? 
  column_name = value
??? 
  condition
```

- UPDATE
- SET
- WHERE
