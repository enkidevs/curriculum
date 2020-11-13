---
author: kapnobatai136

type: normal

category: must-know

tags:
  - subqueries

---

# Scalar Value Subquery

---

## Content

As the name suggests, this type of subquery returns a constant value.

You can use these either in the `SELECT` or the `WHERE` statement.

Let's see what scalar value subqueries are all about.

Consider the following table of `students`:

| id | name   | final_grade |
|----|--------|-------------|
| 1  | Annie  | 10          |
| 2  | Jeff   | 6.5         |
| 3  | Britta | 6           |
| 4  | Pierce | 5           |
| 5  | Troy   | 5           |

You want to return only the students that have a `final_grade` higher than or equal to the average.

You can achieve this using subqueries:

```sql
SELECT
  id,
  name,
  final_grade,
FROM students
WHERE final_grade >=
  (SELECT AVG(final_grade)
  FROM students);
```

Which results in:

| id | name  | final_grade |
|----|-------|-------------|
| 1  | Annie | 10          |
| 2  | Jeff  | 6.5         |

Here is the same query, but this time we also include the `avg_grade` in the resulting set:

```sql
SELECT
  name,
  final_grade,
  (SELECT AVG(final_grade) FROM students) AS "avg_grade"
FROM students
WHERE final_grade >=
  (SELECT AVG(final_grade)
  FROM students);
```

And here is the resulting set:

| id | name  | final_grade | avg_grade |
|----|-------|-------------|-----------|
| 1  | Annie | 10          | 6.5       |
| 2  | Jeff  | 6.5         | 6.5       |

> 💬 Can you think of any other way to write the last query? Leave a comment below or view others for inspiration.

---

## Practice

Scalar value subqueries can be used inside a `SELECT` as well as a ??? command.

- WHERE
- FROM
- GROUP
- ORDER BY

---

## Revision

Consider the following `insects` table (`lifespan` is counted in days):

| name      | lifespan |
|-----------|----------|
| Termite   | 730      |
| Spider    | 730      |
| Flies     | 25       |
| Mosquitoe | 30       |

Using subqueries, complete the code to include an `avg_lifespan` in the resulting set:

```sql
SELECT
  name,
  (??? ???(???) 
  FROM insects) AS ???
FROM insects;
```

- SELECT
- AVG
- lifespan
- "avg_lifespan"