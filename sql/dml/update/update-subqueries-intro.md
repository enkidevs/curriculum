---
author: kapnobatai136

type: normal

category: must-know

tags:
  - update
  - syntax

---

# Updating With Subqueries Intro

---

## Content

In the [last workout](#maybe-link-to-said-insight), we looked at how you can use subqueries with `INSERT`.

Let's see how you can use them alongside `UPDATE`.

At your job, employee-related data is stored in the `employees` table:

| id  | name   | salary |
|-----|--------|--------|
| 1   | George | 1400   |
| 2   | Sean   | 1800   |
| ... | ...    | ...    |

And their sales are stored in the `sales` table:

| id  | employee_id | value |
|-----|-------------|-------|
| 1   | 2           | 200   |
| 2   | 7           | 150   |
| 3   | 4           | 250   |
| ... | ...         | ...   |

Your company is running a program that increases all employees' salaries by `100` **if there are more than 100 sales**.

This is how you would do it with a subquery:

```sql
UPDATE employees
SET salary = salary + 100
WHERE 100 > (SELECT COUNT(id) FROM sales)
```

---

## Practice

Update the `hobby` column's value to `false` for all `users` that don't have a record in the `hobbies` table:

```sql
??? users
SET ??? = ???
WHERE id NOT IN 
  (??? user_id
  FROM hobbies);
```

- UPDATE
- hobby
- false
- SELECT

---

## Revision

Update the `title` column's value to `"Sporty"` if the user has the `"Running"` hobby:

```sql
??? users
SET title = ???
WHERE id IN
  (??? user_id 
  FROM hobbies
  ??? hobby_title = ???);
```

- UPDATE
- "Sporty"
- SELECT
- WHERE
- "Running"