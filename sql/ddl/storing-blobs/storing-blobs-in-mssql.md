---
author: mihaiberq
type: normal
category: how-to
tags:
  - introduction
  - workout
  - deep
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Handling Blobs in SQL


---

## Content

Similar to MySQL, MSSQL uses `varbinary(n)` to store raw bytes. The maximum number of bytes is `4 + 2^32` (4.2 GB).

Creating a table is easy:

```sql
CREATE TABLE sprite(
  id bigint NOT NULL PRIMARY KEY,
  pokemon varbinary(MAX)
);
```

However, data insertion is done quite differently:

```sql
INSERT INTO sprite
VALUES((SELECT *
FROM OPENROWSET (BULK 'pikachu.png',
  SINGLE_BLOB)) AS data);
```


---

## Practice

In SQL Server, insert a BLOB into `image` column:

```sql
??? ??? sprite(image)
VALUES((???
FROM ???(??? ???,
  SINGLE_BLOB)) ??? data);
```

- `INSERT`
- `INTO`
- `SELECT *`
- `OPENROWSET`
- `BULK`
- `'pikachu.jpg'`
- `AS`


---

## Revision

In SQL Server, insert a BLOB into `image` column:

```sql
??? ??? sprite(image)
VALUES((???
FROM OPENROWSET(??? 'pikachu.jpg',
  ???)) ??? data);
```

- `INSERT`
- `INTO`
- `SELECT *`
- `BULK`
- `SINGLE_BLOB`
- `AS`
