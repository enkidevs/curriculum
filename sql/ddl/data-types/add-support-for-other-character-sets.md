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

# Adding Support for Multiple Character Sets

---
## Content

While vendors' default character encoding might not be `UTF-8`, there are some ways in which it can be set.

PostgreSQL accepts database-wide encoding which translates to `UTF8` encoding for all tables:
```sql
CREATE DATABASE application
WITH ENCODING 'UTF8'
LC_COLLATE='en_US.UTF-8'
LC_CTYPE='en_US.UTF-8';
```

MySQL's `utf8` encoding maps to a subset of the `UTF-8` characters (characters that can be stored in maximum 3 bytes). To include support for the missing characters, use `utf8mb`:
```sql
CREATE DATABASE application
CHARACTER SET utf8mb4
COLLATE utf8mb4_bin;
```

Microsoft SQL has special string data types that use `UTF-8` encoding by default. They are referenced by adding the `n` prefix to the basic string data types:
- `nchar(n)`
- `nvarchar(n)`

---
## Practice

Which database has data types that default to `UTF-8` encoding?

???


* Microsoft SQL
* MySQL
* PostgreSQL

---
## Revision

Which database `utf8` options stores a maximum of 3 bytes instead of 4?

???


* MySQL
* PostgreSQL
* Microsoft SQL

 
 
