# SQL Character Support
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
    name CHAR(10) CHARACTER SET utf8mb4
      COLLATE utf8mb4_bin
);
```
MSSQL has special data types for Unicode characters:
- `nchar(n)`
- `nvarchar(n)`
- `ntext`

---
## Practice


---
## Revision
