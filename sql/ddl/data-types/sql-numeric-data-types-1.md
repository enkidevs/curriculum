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
  - '[ANSI Standard Data Types](https://en.wikibooks.org/wiki/Structured_Query_Language/Data_Types){website}'


aspects:
  - introduction
  - workout


---

# Exact Numeric Data Types

---
## Content

*Numeric values* are probably the most used data type in tables. They can be used for `id`s, `stats`, `damage points` and so on. Although some implementations might have slightly different names, in this workout you will learn about the ANSI Standard[1] data types and what they mean.

Exact numeric data types are used to store numerical values without digits after the decimal or with a fixed number of digits after the decimal. Below you will find a list of all the exact numeric data type that adhere to the ANSI Standards.

- `DECIMAL(n,p)`

The `DECIMAL` type is used when you expect a fixed number of digits inserted in the table. In this case, `n` represents the *total number of digits* the entry can have, and `p` represents the total number of digits that can be found *after* the decimal. The *total number of digits* and *number of digits after decimal* can be changed to fit your requirements.

When trying to insert a number with more than `p` digits after the decimal, all the extra digits are truncated. If you wanted to insert a number that has a *total* number of digits that is higher than `n`, the database would usually throw an 'Out of range error'.  

- `SMALLINT`
- `INTEGER` or `INT`
- `BIGINT`

All of the above represent an exact number with no digits *after* the decimal. The ANSI Standard does not define their size, but `SMALLINT` should be smaller than `INT` which in turn should be smaller than `BIGINT`.

---
## Practice

Which of the following data types is not an exact numeric type?

???


* VARCHAR
* DECIMAL(n,p)
* INT
* SMALLINT
* BIGINT

---
## Footnotes
[1: ANSI Standard]
Since 1970 (the year SQL was invented) improvements have been added constantly and many different SQL *flavors* arose. As an attempt to unify SQL across all *flavors*, the American National Standards Institute (ANSI) has created specific standards for database query languages.