---
author: kapnobatai136

type: normal

category: must-know

tags:
  - subqueries

---

# Table Subquery

---

## Content

Last but not least, the table subquery will return **a list of rows**, commonly known as a table.

This type of subquery is useful when checking that a value is present in another set of values:

If, for example, you stored all your `employees` in a table:

| id  | name   | location |
|-----|--------|----------|
| 1   | Louie  | Belgrade |
| 2   | Nikola | Prague   |
| ... | ...    | ...      |

And you have a different table for `managers`: 

| id  | name    | employee_id |
|-----|---------|-------------|
| 1   | Eduard  | 13          |
| 2   | Leticia | 27          |
| ... | ...     | ...         |

You could return **all the employees that are also managers** by using this subquery:

```sql
SELECT *
FROM employees
WHERE id IN
  (SELECT employee_id
  FROM managers);
```

> 💡 For a quick refresher, here is what the `IN` keyword does[1].

Here is the resulting set:

| id  | name    | location  |
|-----|---------|-----------|
| ... | ...     | ...       |
| 13  | Eduard  | Bucharest |
| ... | ...     | ...       |
| 27  | Leticia | Brussels  |
| ... | ...     | ...       |

> 💡 Table subqueries are also useful when used with `INSERT`, `UPDATE`, or `DELETE`. Click on any of those keywords to open their respective insight.

---

## Practice

Match the subquery with its type:

```sql
-- ???
SELECT *
FROM managers
WHERE id IN
  (SELECT manager_id
  FROM employees);

-- ???
SELECT age
FROM person
WHERE age >
  (SELECT avg(age)
  FROM person);

-- ???
SELECT 
  name,
  expiration_date,
  shelf_life
FROM products
WHERE (expiration_date, shelf_life) >
  (SELECT 
    MIN(expiration_date),
    AVG(shelf_life)
  FROM products);
```

- table subquery
- scalar value subquery
- row subquery

---

## Revision

Match the subquery category with their results:

```plain-text
??? - a list of rows
??? - a value
??? - a single row
```

- table subquery
- scalar value subquery
- row subquery

---

## Footnotes

[1:`IN`]

Using the `IN` keyword, you can determine if a value is present in another set of values:

```sql
SELECT *
FROM products
WHERE category IN
  ["vegetable", "fruit", "meat"]
```

This query returns all `products` that have their `category` value equal to either `"vegetable"`, `"fruit"`, or `"meat"`.