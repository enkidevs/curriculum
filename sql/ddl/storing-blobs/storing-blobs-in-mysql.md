---
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

# Handling Blobs in SQL

---
## Content

There are four *BLOB* types in MySQL:
- `tinyblob`: 1 + 2^8 bytes (0.256 MB)
- `blob`: 2 + 2^16 bytes (65 MB)
- `mediumblob`: 3 + 2^24 bytes (16.7 MB)
- `longblob`: 4 + 2^32 bytes (4.2 GB)

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

---
## Practice

In a MySQL database, store a BLOB by loading the contents of a file:
```SQL
??? ??? sprite(image)
VALUES(???(???));
```

* `INSERT`
* `INTO`
* `LOAD_FILE`
* `'pikachu.jpg'`
* `pikachu.jpg`
* `LOAD`
* `'0xTHISISMYIMAGE'`

---
## Revision

In a MySQL database, store a BLOB as a binary string:
```SQL
??? ??? sprite(image)
VALUES(???);
```

* `INSERT`
* `INTO`
* `'0xTHISISMYIMAGE'`
* `0xTHISISMYIMAGE`
* `LOAD_FILE('pikachu.jpg')`

