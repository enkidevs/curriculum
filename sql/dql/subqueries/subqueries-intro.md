---
author: kapnobatai136

type: normal

category: must-know

tags:
  - subqueries

---

# Introduction

---

## Content

One of the greatest powers of SQL is that you can use a query inside another another command.

They are called subqueries and they can be used inside any of the following statements:
- `SELECT`
- `INSERT`
- `UPDATE`
- `DELETE`

> 💡 We'll only show you how subqueries work within `SELECT` for this course. If you want to see how subqueries work within the other commands, check the [Modifying Data course](#link-to-dml).

The only difference between a subquery and a plain `SELECT` is that **subqueries are enclosed in parentheses**.

```sql
SELECT 
  -- query
  column1,
  -- subquery
  (SELECT MIN(column2)
  FROM table2) 
FROM table1
```

There are three main categories of subqueries:
- scalar value
- row
- table

We'll take a look at each in the following insights.

---

## Practice

The difference between a plain `SELECT` and a subquery is that the latter is ???.

- enclosed between parentheses
- surrounded by quotes
- not a SQL command 

---

## Revision

Subqueries can be used within `SELECT`, `INSERT`, `UPDATE`, and ???.

- DELETE
- DROP
- CREATE