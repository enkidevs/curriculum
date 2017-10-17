# Handling Numbers
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

tags:
  - introduction
  - workout


---
## Content

Probably the most used datatypes in tables are **numeric values**. They can be used for *id*s, *stats*, *attack points* etc. Even **true/false** (`bool`s or `boolean`s) values are considered to be numeric types.

Most SQL implementations (PostgreSQL, MySQL, Microsoft SQL) have numeric types with the same capabilities, but under different names.

It is worth noting that, while MySQL and MSSQL support both signed and unsigned values, PostgreSQL accepts only unsigned values.

### Bits

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

### Reals and Floats

They are used to store floating point numeric data. Most used data types are:
- `numeric(m, d)`: *m* is the total number of digits and *d* is the number of digits after the decimal point (PSQL, MySQL, MSSQL)
- `real`: 32bit/4 bytes, single precision (PSQL, MSSQL)
- `float(p)`: *p* is the precision in bits.   

### Booleans




---
## Practice

Which of the following datatypes is not a numeric type?

???

* date
* boolean
* bool
* numeric
* bigserial

---
## Revision

Is the following statement true or false?
```
Most SQL databases support a currency type.
???
```

* True
* False
