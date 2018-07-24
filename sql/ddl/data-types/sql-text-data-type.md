---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  sql.choose-sql-datatype.2: 10

tags:

  - introduction

  - workout

aspects:
  - introduction
  - workout


---

# SQL Text Data Types

---
## Content

While it is not in the standard SQL, some databases decided to support the `text` data type. Similar to `varchar`, it accepts variable length strings. Below, you can find the differences in vendors implementation.

### PostgreSQL

In PostgreSQL, the `text` data types accepts strings of variable length, up to 1GB in size. According to the documentation, there's no difference between `varchar` and `text`, as they both use the same underlying data structures.

### MySQL

MySQL's version of `text` is similar to `varchar(65535)`. While the former has at all times this maximum value, multiple `varchar(n)` columns can have different maximum lengths.

However, this is somehow limiting. Just like for other data types, MySQL has `medium` and `long` modifiers for `text`:
- `mediumtext`: strings up to 16MB
- `longtext`: strings up to 4GB
You should keep in mind that, for variable length character data types, the required disk space depends on the length of the string and the encoding of the table, and not on the maximum declared length.

### Microsoft SQL

SQL Server used to support the `text` data type but this isn't the case anymore. Right now, `text` is considered legacy and its use not recommended anymore.

This doesn't mean that SQL Server has no replacement. `varchar(max)` accepts strings up to 2GB in size.

---
## Practice

Which of the following databases accepts the `medium` and `long` modifiers for the `text` data type?

???


* MySQL
* Microsoft SQL
* PostgreSQL
* Oracle

---
## Revision

Which of the following vendors discontinued the support for the `text` data type?

???


* Microsoft SQL
* PostgreSQL
* MySQL
* All

 
 
