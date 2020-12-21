---
author: kapnobatai136

type: normal

category: must-know

tags:
  - workout
  - joins

---

# What Are Joins?

---

## Content

Joins are a core concept in the world of SQL.

They allow you to connect two (or more) table together using only one common column per pair of joined tables.

The best way to explain joins is through an example.

If, for example, you had a table of `employees`:

| id  | name         | location  |
|-----|--------------|-----------|
| 1   | Sarah Walker | New York  |
| 2   | Bill Sturrok | Stockholm |
| ... | ...          | ...       |

And a table of `managers`:

| id  | employee_id | division |
|-----|-------------|----------|
| 1   | 5           | HR       |
| 2   | 1           | IT       |
| ... | ...         | ...      |

> 💡 Notice how the `managers` table only contains minimal information. We'll go over why the tables were designed like this in the following insight.

Using joins, you can create a result set that contains information from both the `employees` and `managers` tables:

| name         | location | division |
|--------------|----------|----------|
| Sarah Walker | New York | IT       |
| ...          | ...      | ...      |
