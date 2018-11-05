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

Probably the most used data types in tables are *numeric values*. They can be used for `id`s, `stats`, `damage points` etc. Even *true/false* (`bool`s or `boolean`s) values are considered to be numeric types.

Most SQL implementations (PostgreSQL, MySQL, Microsoft SQL) have numeric types with the same capabilities, but under different names.

It is worth noting that, while MySQL and MSSQL support both signed and unsigned values, PostgreSQL accepts only unsigned values.

### Bits

A string of bits, up to 64 bits long:
- `bit(n)`: where *n* is the maximum length (PSQL, MYSQL)

### Integers

Called either `int` or `integer`, this data type accepts 32bit/4 bytes integers in all SQL implementations. In terms of range, there are some differences:
- unsigned (PSQL, MySQL, MSSQL): `0` to `2^32 - 1` (`0` to `4,294,967,295`)
- signed (MySQL, MSSQL): `-2^31` to `2^31 - 1` (`-2,147,483,648` to `2,147,483,647`)

There are also prefixes for cases when you know the values won't reach a certain bound, which helps mitigating the memory footprint.

Smaller integers are as follows:
- `tinyint`: 8bit/1 bytes (MySQL, MSSQL)
- `smallint`: 16bit/2 bytes (PSQL, MySQL, MSSQL)

Bigger integers are as follows:
- `bigint`: 64bit/8 bytes (PSQL, MySQL, MSSQL)

### Serials

Available only in PSQL and MySQL, serials are unsigned auto-incrementing integers. MySQL's `serial` defaults to 8 bytes values (`bigint`), while in PSQL all three variants are available (`smallserial`, `serial`, `bigserial`).

Note: If you are looking to use serials as IDs, your best bet is unsigned `bigint`[1].

### Reals and Floats

They are used to store floating point numeric data. Most used data types are:
- `numeric(n, d)`: *n* is the total number of digits and *d* is the number of digits after the decimal point (PSQL, MySQL, MSSQL)
- `real`: 32bit/4 bytes, single precision (PSQL, MSSQL)
- `float(p)`: *p* is the precision in bits (MySQL) or a 64bit/8 bytes IEE-754 number (MSSQL)
- `double precision`: 64bit/8 bytes IEEE-754 number (MySQL, PSQL)

### Booleans

A data type accepting `true` or `false` as values:
- `bool`/`boolean`: PSQL, MySQL
- MSSQL has no special `boolean` type, but its behavior can be simulated by `bit(1)`, with 0 for false and 1 for true

### Money

A data type used to store currency values:
- `money`: 64bit/8 byte - supports 2 decimals for PSQL and 4 decimals for MSSQL
- MySQL has no currency data type, but `decimal(n, d)` can be used to simulate the behavior

---
## Practice

Create a table PostgreSQL table with a serial ID column PK that is `bigint`:
```sql
??? ??? gen_100_pokemon(
  id ???,
  name text,
  PRIMARY KEY(???)  
);
```

* `CREATE`
* `TABLE`
* `bigint`
* `id`
* `DROP`
* `COLUMN`
* `serial`
* `bigserial`

---
## Revision

Which of the following data types is not a numeric type?

???


* date
* boolean
* bool
* numeric
* bigserial

---
## Footnotes
[1: Serials]
https://hackernoon.com/the-night-the-postgresql-ids-ran-out-9430a2dbb895
 
 
