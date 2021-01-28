---
author: pawel

levels:
  - basic
  - beginner

type: normal

category: best-practice

tags:
  - databases
  - JDBC

---
# Fully qualified names in `SQL` query

---
## Content

If an `SQL` statement uses fields with the same name from multiple tables, the field name must be fully qualified with its table name and a dot operator. 

```
SELECT authors.authorID, books.authorID 
  FROM authors, books
```
 
