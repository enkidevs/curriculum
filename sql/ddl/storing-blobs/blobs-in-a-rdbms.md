---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: how to

standards:
  sql.choose-sql-datatype.2: 10

tags:

  - introduction

  - workout

  - deep

aspects:
  - introduction
  - workout
  - deep


---

# Handling Blobs in a RDBMS

---
## Content

In SQL, you can have a type of data that is a binary string called **Binary Large Object**, or **BLOB**. A binary string is a sequence of raw bytes which allows storing values that a normal string would disallow.

BLOBs are therefore used to represent any file that can be reduced to a sequence of raw bytes: images, text documents, etc.

There are a couple of ways of storing BLOBS in the database, each with its advantages and disadvantages:
- As binary data in the database field;
  - Pro: Data is all in one place
  - Con: Database can get too big and operations can become slower
- As a path to a file outside the database;
  - Pro: Easier to maintain the database, faster
  - Con: Moving the external files around will invalidate the links stored in the database

While they both can work, it depends a lot on what you need. Small files like images and text documents won't make much of a difference if stored in the database, but bigger files (think gigabytes) would.

In the next insights you will learn about different BLOB implementations, depending on the vendor.

---
## Practice

`BLOB`s are used to store ???

* `raw bytes`
* `bigints`
* `strings`
* `images`