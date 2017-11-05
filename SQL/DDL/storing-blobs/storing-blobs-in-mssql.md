# Handling Blobs in SQL
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: how to

tags:
  - introduction
  - workout
  - deep

---
## Content

Similar to MySQL, MSSQL uses `varbinary(n)` to store raw bytes. The maximum number of bytes is `4 + 2^32`.

Creating a table is easy:
```SQL
CREATE TABLE sprite(
  id bigint NOT NULL PRIMARY KEY,
  pokemon varbinary(MAX)
);
```
However, data insertion is done quite differently:
```SQL
INSERT INTO sprite
VALUES((SELECT *
FROM OPENROWSET (BULK 'pikachu.png',
  SINGLE_BLOB)) AS data)
```
