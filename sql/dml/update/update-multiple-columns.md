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
  context: standalone
---

# Updating Multiple Columns


---

## Content

You're not limited to updating only one column's value at a time.

To update more columns, you would use:

```sql
UPDATE 
  table_name
SET 
  column1 = value1,
  column2 = value2,
  column3 = value3
WHERE 
  condition;
```

> 💡 Each **column-value** pair should be separated by a comma (`,`).

Take a look at the following `managers` table:

| id | name              | branch   | branch_id |
| -- | ----------------- | -------- | --------- |
| 1  | Robert California | New York | 13        |
| 2  | Michael Scott     | Scranton | 24        |

The manager `"Michael Scott"` was moved to a different branch in `"Boulder"`, which has `17` as `branch_id`.

This is how you would update the table:

```sql
UPDATE managers
SET
  branch = "Boulder",
  branch_id = 17
WHERE
  name = "Michael Scott";
```

And this is the resulting table:

| id | name              | branch   | branch_id |
| -- | ----------------- | -------- | --------- |
| 1  | Robert California | New York | 13        |
| 2  | Michael Scott     | Boulder  | 17        |


---

## Practice

Update the student's (`id = 21`) `math_grade` to `9` and `physics_grade` to `8.5`:

```sql
??? 
  students
???
  ??? = 9,
  ??? = 8.5
???
  id = 21;
```

- UPDATE
- SET
- math_grade
- physics_grade
- WHERE
- FILTER
- grade
- UPGRADE
- EQUALS
- SELECT 


---

## Revision

In SQL, it is **possible** to update more than one column's value at a time.

???

- True
- False
