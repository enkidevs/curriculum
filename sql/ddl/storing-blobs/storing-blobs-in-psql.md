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

PostgreSQL's native *BLOB* type is `bytea` (1GB per entry). It came two support two types of bytes since it was implemented:
- `Escape Format`: the legacy format, using ASCII to encode characters.
- `Hex Format`: the newer format (PSQL 9+), which encodes binary data as two hexadecimal digits per byte.

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

