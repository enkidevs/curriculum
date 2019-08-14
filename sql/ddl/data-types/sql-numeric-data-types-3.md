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

# Date and Booleans

---
## Content

Although it might not seem like it, dates and even *true/false* (`bool`s or `boolean`s) values are considered to be numeric types.

### Booleans

In SQL, the logic is based on three values: `true`, `false` and `unknown`. To define a column which accepts these values you would have to use the `BOOLEAN` data type. Keep in mind that columns with the `BOOLEAN` data type can only store the `true` or `false` values, while the `unknown` value represents storing no value or `NULL`.

### Date & Time

In SQL there are multiple ways in which you can store temporal values, depending on what needs to be stored. A list of the main temporal data types recognized by the ANSI Standard is presented below.

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


* CLOB
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
