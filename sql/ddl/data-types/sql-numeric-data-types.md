---
author: mihaiberq

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


aspects:
  - introduction
  - workout


---

# SQL Numeric Data Types

---
## Content

Probably the most used data types in tables are *numeric values*. They can be used for `id`s, `stats`, `damage points` and so on. Even *true/false* (`bool`s or `boolean`s) values are considered to be numeric types.

Most SQL implementations (PostgreSQL, MySQL, Microsoft SQL) have numeric types with the same capabilities, but under different names. For this workout, you will learn about the SQL ANSI Standard[1] data types and what they mean.

### Exact Numeric

Exact numeric data types are used to store numerical values without digits after the decimal or with a fixed number of digits after the decimal. Below you will find a list of all the exact numeric data type that adhere to the ANSI Standards.

- `DECIMAL(5,2)`

The `DECIMAL` type is used when you expect a fixed number of digits inserted in the table. In this case, the first digit, `5`, represents the *total number of digits* the entry can have, and the second digit, `2` represents the total number of digits that can be found *after* the decimal. The *total number of digits* and *number of digits after decimal* can be changed to fit your requirements.

When trying to insert a number with more than `2` digits after the decimal, all the extra digits are truncated. For example, if you were to insert '123.456', the database would truncate your entry and it would only store '123.45'. If you wanted to insert a number with more digits than defined *before* the decimal, the database would usually throw an 'Out of range error'.  

- `SMALLINT`
- `INTEGER` or `INT`
- `BIGINT`

All of the above represent an exact number with no digits *after* the decimal. The ANSI Standard does not define their size, but `SMALLINT` should be smaller than `INT` which in turn should be smaller than `BIGINT`.

### Approximate Numeric

These types of data can hold values which have a defined precision after the decimal, but the accuracy depends on the chosen SQL implementation. Usually, approximate numeric types are used when scientific computations are required.

- `FLOAT(2)`

The `FLOAT(2)` data type can store two or more digits after the decimal place, but the precision is only guaranteed for the first two digits (after the decimal). The precision of `FLOAT` can be changed to fit your requirements, and the maximum precision (number between parentheses) depends on the implementation.
- `REAL`
- `DOUBLE PRECISION`

The `REAL` and `DOUBLE PRECISION` types are very similar to `FLOAT`, with the difference being that you cannot choose the precision, this is already defined the the Relational Database Management System (RDBMS). The general convention is that `DOUBLE PRECISION` allows for a higher degree of accuracy than the `REAL` type.

### Booleans

In SQL, the logic is based on three values: `true`, `false` and `unknown`. To define a column which accepts these values you would have to use the `BOOLEAN` data type. Keep in mind that columns with the `BOOLEAN` data type can only store the `true` or `false` values, while the `unknown` value represents storing no value or `NULL`.

### Date & Time

In SQL there are multiple way in which you can store temporal values, depending on what needs to be stored. A list of the main temporal data types recognized by the ANSI Standard is presented below.

- `DATE`
  - stores year, month and day
- `TIME`
  - stores hour, minute and second
- `TIMESTAMP`
  - stores year, month, day, hour, minute and second

---
## Practice

Which of the following data types is not a numeric type?

???


* VARCHAR
* BOOLEAN
* INT
* DOUBLE PRECISION
* TIME

---
## Revision

Create the following table:

| id  | domestic_sales | international_sales | total_sales      | date |
|-----|----------------|---------------------|------------------|------|
| INT | FLOAT(2)       | FLOAT(2)            | DOUBLE PRECISION | DATE |

```sql
??? ??? sales(
  id ???,
  domestic_sales ???,
  international_sales FLOAT(2),
  total_sales ???,
  date ???
);
```

* `CREATE`
* `TABLE`
* `INT`
* `FLOAT(2)`
* `DOUBLE PRECISION`
* `DATE`
* `TIME`
* `DROP`
* `COLUMN`
* `SMALLINT`
* `REAL`
* `TIMESTAMP`

---
## Footnotes
[1: ANSI Standard]
Since 1970 (the year SQL was invented) improvements have been added constantly and many different SQL *flavours* arose. As an attempt to unify SQL across all *flavours*, the American National Standards Institute (ANSI) has created specific standards for database query languages. 