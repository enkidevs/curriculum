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

**Note:** For performance reasons it is recommended to store large files on the local machine and keep only the path to it in the database.


---
## Revision

`BLOB`s are used to store ???

* `raw bytes`
* `bigints`
* `strings`
* `images`
