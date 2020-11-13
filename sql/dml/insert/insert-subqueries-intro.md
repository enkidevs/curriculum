---
author: kapnobatai136

type: normal

category: must-know

tags:
  - insert
  - syntax

---

# Inserting With Subqueries Intro

---

## Content

In the [Querying Data course](#link-to-querying-data-course), we talked about [subqueries](#link-to-subqueries-workout).

One of the great things about them is that they can be used together with an `INSERT` clause (as well as `UPDATE` and `DELETE`).

For example, you could query one table for some data and insert all the results in another table.

> 💡 One thing to note is that the result of the subquery must match the table in which it will be inserted.
> 
> If the result has three columns but the table has two, the operation won't be possible.

Let's take a look at an example.

Your company used to store all the employee data in one table. To differentiate between managers and regular employees, there is a column `is_manager` which stores either `true` or `false`:

| id  | name   | is_manager |
|-----|--------|------------|
| 1   | Robbie | false      |
| ... | ...    | ...        |
| 5   | Chris  | true       |
| ... | ...    | ...        |

You've been tasked with cleaning the database. One of your responsibilities is moving all the managers from the `employees` table to the `managers` table.

Here is how you could do it using subqueries:

```sql
INSERT INTO managers
(SELECT name
FROM employees
WHERE is_manager = true);
```

> 💡 When inserting with subqueries, you don't need to write `VALUES`.

And this is the resulting `managers` table:

| name  |
|-------|
| Chris |
| ...   |

> 💡 In the following workouts, we'll look at how to use subqueries with `UPDATE` and `DELETE`.

---

## Practice

Which of the following is the correct syntax for inserting with a subquery?

```sql
-- A
INSERT INTO all_flowers
VALUES
(SELECT * FROM eastern_flowers);

-- B
INSERT INTO all_flowers
(SELECT * FROM eastern_flowers);
```

???

- B
- A

---

## Revision

When inserting values with a subquery, you ??? use the `VALUES` keyword.

- shouldn't
- should