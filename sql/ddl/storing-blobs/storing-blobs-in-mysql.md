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

There are four *BLOB* types in MySQL:

- `tinyblob`: 1 + 2^8 bytes (0.256 KB)
- `blob`: 2 + 2^16 bytes (65.5 KB)
- `mediumblob`: 3 + 2^24 bytes (16.7 MB)
- `longblob`: 4 + 2^32 bytes (4.2 GB)

In MySQL, `blob` is similar to `varbinary(n)` and can be used interchangeably. To create the table:

```sql
CREATE TABLE sprite(
  id serial PRIMARY KEY,
  pokemon longblob
);
```

And to insert values:

```sql
INSERT INTO sprite
VALUES(LOAD_FILE('pikachu.png'));

-- or

INSERT INTO sprite
VALUES('0xBYTESOFPIKACHUSPRITE');
```


---

## Practice

In a MySQL database, store a BLOB by loading the contents of a file:

```sql
??? ??? sprite(image)
VALUES(???(???));
```

- `INSERT`
- `INTO`
- `LOAD_FILE`
- `'pikachu.jpg'`
- `pikachu.jpg`
- `LOAD`
- `'0xTHISISMYIMAGE'`


---

## Revision

In a MySQL database, store a BLOB as a binary string:

```sql
??? ??? sprite(image)
VALUES(???);
```

- `INSERT`
- `INTO`
- `'0xTHISISMYIMAGE'`
- `0xTHISISMYIMAGE`
- `LOAD_FILE('pikachu.jpg')`
