---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - obscura
  - introduction

type: normal

category: must-know

links:
  - '[Analysis of the NoSQL Landscape](http://blog.knuthaugen.no/2010/03/the-nosql-landscape.html){website}'

---

# Column databases

---

## Content

**Column databases**, also referred to as **Wide Column databases**, store data into structures conceptually similar to tables but with less-strict rules, known as *column families*.

Column families are comprised of rows and columns, but unlike a relational database, the names and format of the columns can vary from row to row within the same family. Each column family can have multiple rows, and each row can have a different number of columns. The columns can also differ from one another, in length, type of data they store, have different names, etc.

Each row also has a unique key used to identify that row either for modifying or deleting data (like key-value databases).

Since the column names, as well as the record keys are not fixed, **Column databases** can be seen as two-dimensional key-value databases, where a combination of column and row id serves as a "key" for fast data lookups.

Some popular Column databases are **Bigtable**, **Cassandra**, **Microsoft Azure Cosmos DB**, etc.