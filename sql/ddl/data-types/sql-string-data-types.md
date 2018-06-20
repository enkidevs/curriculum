---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  sql.choose-sql-datatype.1: 10

tags:

  - introduction

  - workout

aspects:
  - introduction
  - workout


---

# SQL String Data Types

---
## Content

In terms of *string data types*, there are less options to be used. However, there are no discrepancies regarding naming conventions between PostgreSQL, MySQL and MSSQL. The three main types are:
- `char(n)`
- `varchar(n)`
- `text`

### char(n)

The fixed-size string data types, which always takes up the number of bytes required to store a string of length `n`. In case the string has less than `n` characters, it will be padded with spaces. If a longer string is inserted, the excess characters are truncated.

`char` fields can have up to *255* bytes which, depending on the encoding used, results in varying max length for filenames. Characters that can be found in ASCII are usually represented in 1 byte, while emoticons and special characters (think Korean alphabet) can take up to 4 bytes.

Use `char` whenever you know the fields would be up a certain length. For example, you can have the 2-letter (International Organization for Standardization - ISO) or 3-letter (United Nations) country codes: `US/USA`, `GB/GBR`, `RU/RUS`, `DE/DEU`, etc. Whichever you were to choose, the space required to store them is always 2 or 3 bytes.

### varchar(n)

A variable length string of potentially size `n`. The maximum size of a string is `2^16-1 = 65535 bytes`, which is also the maximum memory block a whole row is allocated. Since its size is variable, `varchar` needs an overhead of 1 to 4 bytes to store the data length, so the next table field can be easily looked up in memory.

`varchar` values are not padded when stored. Trailing spaces that do not exceed the maximum allocated size of the column are kept.

Use `varchar` when you have to store data of unknown length. Usually names, professions, or hashes are some examples of good `varchar` candidates.

If you are aware of a maximum length for those strings, use `varchar(n)` instead. Note that in most databases inserting a string longer than *n* characters would either give rise to an error or simply remove any additional characters.

---
## Practice

Create a PostgreSQL table that contains a fixed width column and a variable one, such that minimal space is used to store the table in memory:
```sql
CREATE ??? language(
  id bigserial PRIMARY KEY,
  language_name ???,
  iso_code ???
);
```

* `TABLE`
* `varchar(70)`
* `char(2)`
* `char(70)`
* `varchar(2)`

---
## Revision

Which of the following string data types are padded to match its maximum size?

???


* `char(size)`
* `varchar(size)`
* `text(size)`
* `text`

 
 
