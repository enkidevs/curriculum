---
author: kapnobatai136

type: normal

category: must-know

tags:
  - subqueries

---

# Row Subquery

---

## Content

Compared to scalar value subquery, this subquery will return one row with **two or more** values.

Because of that, they can only be used inside a `WHERE` command.

This type of subquery is especially useful when comparing values either from the same table or a different table.

For example, let's say you have two tables (`class_a` and `class_b`) in which you store information about your students.

Both tables have the same columns but contain data from different classes. 

Here is a sample from `class_a`:

| name    | math_grade | chemistry_grade |
|---------|------------|-----------------|
| Rebecca | 8          | 7.5             |
| Robert  | 7          | 9               |

And here is a sample from `class_b`:

| name      | math_grade | chemistry_grade |
|-----------|------------|-----------------|
| Ryan      | 7          | 7               |
| Christina | 6          | 7               |

Using subqueries, you can return all the students from `class_a` that have grades higher than the students from `class_b`:

```sql
SELECT *
FROM class_a
WHERE (math_grade, chemistry_grade) >
  (SELECT MAX(math_grade), MAX(chemistry_grade)
  FROM class_b);
```

> 💡 When comparing two or more values in the `WHERE` clause, they should be enclosed in parentheses: `WHERE (value1, value2) > (value3, value4)`.

Here is the resulting set:

| name    | math_grade | chemistry_grade |
|---------|------------|-----------------|
| Rebecca | 8          | 7.5             |

> 💡 `"Robert"` was not included in the resulting set because his `math_grade` was not higher than `7` (the maximum `math_grade` from the `class_b` table).

---

## Practice

Row subqueries can be used inside a `SELECT` statement.

???

- False
- True

---

## Revision

Row subqueries return ???.

- two or more values
- a list of rows
- a single value