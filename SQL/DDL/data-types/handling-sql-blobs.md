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

The SQL defines a binary string type called **Binary Large Object**, or **BLOB**. A binary string is a sequence of raw bytes which allows storing values that a normal string would disallow.

`BLOB`s are therefore used to represent any file that can be reduced to a sequence of raw bytes: images, text documents, etc.

### PostgreSQL

PostgreSQL's native *BLOB* type is `bytea`. It came two support two types of bytes since it was implemented:
- `Escape Format`: the legacy format, using ASCII to encode characters.
- `Hex Format`: the newer format (PSQL 9+), which encodes binary data as two hexadecimal digits per bye.

There's no choice between the two when defining the column, only when data is inserted:
```SQL
CREATE TABLE sprite(
  id bigserial PRIMARY KEY,
  pokemon bytea
);

INSERT INTO sprite
VALUES(decode('\xBYTESOFPIKACHUSPRITE',
  'hex'));
```
Here, the decode function gets a hex string and decodes it into `bytea`.

### MySQL

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

### Microsoft SQL

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

**Note:** For performance reasons it is recommended to store large files on the local machine and keep only the path to it in the database.

---
## Practice

In a PostgreSQL database, insert a hex string into a `bytea` field:
```SQL
??? INTO sprite
???(???('\xBYTESOFPIKACHUSPRITE',
  ???));
```
* `INSERT`
* `VALUES`
* `decode`
* `'hex'`
* `encode`
* `FROM`
* `hex`

---
## Revision

`BLOB`s are used to store ???

* `raw bytes`
* `bigints`
* `strings`
* `images`
