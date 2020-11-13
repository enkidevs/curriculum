---
author: kapnobatai136

type: normal

category: must-know

tags:
  - update
  - syntax

---

# Updating Multiple Columns

---

## Content

You're not limited to updating only one column's value at a time.

To update more columns, you would use:

```sql
UPDATE table_name
SET 
  column1 = value1,
  column2 = value2,
  column3 = value3
WHERE condition;
```

> 💡 Each **column-value** pair should be separated by a comma (`,`).

Take a look at the following `managers` table:

| id | name          | branch   | branch_id |
|----|---------------|----------|-----------|
| 1  | Sarah Walker  | New York | 13        |
| 2  | Michael Scott | Scranton | 24        |

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

| id | name          | branch   | branch_id |
|----|---------------|----------|-----------|
| 1  | Sarah Walker  | New York | 13        |
| 2  | Michael Scott | Boulder  | 17        |

---

## Practice

Update the student's `math_grade` to `9` and `physics_grade` to `8.5`:

```sql
??? students
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

---

## Revision

In SQL, it is **not possible** to update more than one column's value at a time.

???

- False
- True