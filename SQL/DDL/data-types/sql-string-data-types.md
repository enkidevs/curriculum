# SQL String Data Types
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

In terms of *string data types*, there are less options to be used. However, there are no discrepancies regarding naming conventions between PostgreSQL, MySQL and MSSQL. The three main types are:
- `char(n)`
- `varchar(n)`
- `text`

### char(n)

The fixed-size string data types, which always takes up the number of bytes required to store a string of length `n`. In case the string has less than `n` characters, it will be padded with spaces.

### varchar(n)

A variable length string of size `n`. The size is not always relevant, unless it goes over a certain value, specific to the database implementation.

### text

A `text` data type is in many ways similar to `varchar`s. The only difference comes from the number of indexed characters (if it is the case of indexing for that specific column).

They are similar enough to the point in which MSSQL decided to drop it in the next versions and promote the use of `varchar(n)` and `nvarchar(n)`.

### Character Support

While the default character encoding might not be `UTF-8` (Unicode), there are some ways in which it can be enabled.

PostgreSQL accepts database-wide encoding:
```SQL
CREATE DATABASE language
WITH ENCODING 'UTF8'
LC_COLLATE='en_US.UTF-8'
LC_CTYPE='en_US.UTF-8';
```
MySQL allows for column-only encodings:
```SQL
CREATE TABLE language(
    name CHAR(10) CHARACTER SET utf8
      COLLATE utf8_unicode_ci
);
```
MSSQL has special data types for Unicode characters:
- `nchar(n)`
- `nvarchar(n)`
- `ntext`
---
## Practice

Create a PostgreSQL table where the column `short_name` should take variable entries with no more than 6 characters and `description` should contain a large block of text:
```SQL
CREATE ??? ability(
  id bigserial,
  name char(25),
  short_name ???,
  ??? ???,
  PRIMARY KEY(id)
);
```
* `varchar(6)`
* `description`
* `text`
* `blob`
* `char(255)`
* `char(6)`
* `text(6)`

---
## Revision

Which of the following string data types are padded to match its maximum size?

???

* `char(size)`
* `varchar(size)`
* `text(size)`
* `text`
