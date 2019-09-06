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

links:

  - '[ANSI Standard Data Types](https://en.wikibooks.org/wiki/Structured_Query_Language/Data_Types){website}'

aspects:
  - introduction
  - workout


---

# SQL String Data Types

---
## Content

In terms of *string data types*, there are fewer options that can be used with the three main types being:

- `CHAR(n)`
- `VARCHAR(n)`
- `CLOB`

### CHAR(n)

The fixed-size string data types always take up the number of bytes required to store a string of length `n`[1]. In case the string has less than `n` characters, it will be padded with spaces. If a longer string is inserted, the excess characters are truncated.

Use `CHAR` whenever you know the length of the inputted values. For example, you can have the 2-letter (International Organization for Standardization - ISO) or 3-letter (United Nations) country codes: `US/USA`, `GB/GBR`, `RU/RUS`, `DE/DEU`, etc. Whichever you choose, the required space to store them is always 2 or 3 bytes. 

### VARCHAR(n)

A variable length string of potentially size `n`[2]. The maximum size of a string depends on the chosen implementation.

`VARCHAR` values are not padded when stored. Trailing spaces that do not exceed the maximum allocated size of the column are kept.

Use `VARCHAR` when you have to store data of unknown length. Usually names, professions, or hashes are some examples of good `VARCHAR` candidates.

If you are aware of a maximum length for those strings, use `VARCHAR(n)` instead. Note that in most databases inserting a string longer than *n* characters would either give rise to an error or simply remove any additional characters.

### CLOB

In the occasion where you need to store strings larger that the upper limit of `VARCHAR`, the `CLOB` data type must be used. This type has different names depending on the implementation, but the functionality is similar.

---
## Practice

Which of the following string data types are padded to match its maximum size?

???

* `CHAR(n)`
* `VARCHAR(n)`
* `CLOB`
* `TEXT`

---
## Revision

Create a table that contains a fixed width column and a variable one, such that minimal space is used to store the table in memory:

```sql
??? ??? language(
  id INT,
  language_name ???,
  iso_code ???
);
```

* `CREATE`
* `TABLE`
* `VARCHAR(70)`
* `CHAR(2)`
* `CHAR(70)`
* `VARCHAR(2)`

---
## Footnotes

[1:Maximum Values]
`CHAR` fields can have different maximum values, depending on the implementation, which results in varying max length for filenames. Characters that can be found in ASCII are usually represented in 1 byte, while emoticons and special characters (think Korean alphabet) can take up to 4 bytes.

[2:VARCHAR Variable Size]
Since its size is variable, `VARCHAR` needs an overhead of 1 to 4 bytes to store the data length, so the next table field can be easily looked up in memory.