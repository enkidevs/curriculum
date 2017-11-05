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

There are four *BLOB* types in MySQL:
- `tinyblob`: 1 + 2^8 bytes
- `blob`: 2 + 2^16 bytes
- `mediumblob`: 3 + 2^24 bytes
- `longblob`: 4 + 2^32 bytes

In MySQL, `blob` is similar to `varbinary(n)` and can be used interchangeably. To create the table:
```SQL
CREATE TABLE sprite(
  id serial PRIMARY KEY,
  pokemon longblob
);
```
And to insert values:
```SQL
INSERT INTO sprite
VALUES(LOAD_FILE('pikachu.png'));
-- or
INSERT INTO sprite
VALUES('0xBYTESOFPIKACHUSPRITE');
```
