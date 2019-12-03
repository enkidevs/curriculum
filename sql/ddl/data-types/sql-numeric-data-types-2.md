---
author: kapnobatai136

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  sql.choose-sql-datatype.0: 10

tags:

  - introduction

  - workout


links:

  - '[PostgreSQL Data Types](https://www.postgresql.org/docs/current/static/datatype.html){documentation}'
  - '[MySQL Data Types](https://dev.mysql.com/doc/refman/5.7/en/data-types.html){website}'
  - '[Microsoft SQL Data Types](https://docs.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql){website}'
  - '[ANSI Standard Data Types](https://en.wikibooks.org/wiki/Structured_Query_Language/Data_Types){website}'


aspects:
  - introduction
  - workout


---

# Approximate Numeric Data Types

---
## Content

These types of data can hold values which have a defined precision after the decimal, but the accuracy depends on the chosen SQL implementation. Usually, approximate numeric types are used when scientific computations are required.

- `FLOAT(n)`

The `FLOAT(n)` data type can store `n` or more digits after the decimal place, but the precision is only guaranteed for the first `n` digits (after the decimal). The precision of `FLOAT` can be changed to fit your requirements, and the maximum precision (number between parentheses) depends on the implementation.

- `REAL`
- `DOUBLE PRECISION`

The `REAL` and `DOUBLE PRECISION` types are very similar to `FLOAT`. However, unlike `FLOAT`, you cannot choose the precision as this is already defined by the Relational Database Management System (RDBMS). The general convention is that `DOUBLE PRECISION` allows for a higher degree of accuracy than the `REAL` type.

---
## Practice

Which of the following data types is not an approximate numeric type?

???


* CHAR
* FLOAT(n)
* REAL
* DOUBLE PRECISION
