# When to add indexes
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on CRETE INDEX](https://www.tutorialspoint.com/sql/sql-indexes.htm)'

---
## Content

Indexes are meant to help SQL Servers to lookup data *faster*. However we need to pay attention at how often the data will be inserted, updated and deleted. That is because each time we modify data in an indexed table, the index needs to be updated as well. This can lead to *lower performance* in the end.

Thus, we should bear in mind the followings while creating indexes:
- for tables that are heavily updated, use as few columns as possible under the same index
- if the table contains a lot of data, but the data isn't modified that frequently, use as many indexes to improve performance
- try to keep columns as short as possible in clustered tables
- the more duplicates we have in a column the lower performance of the index we will get
- if we keep more columns under the same index, the order is important


Now, talking about queries' performance on indexed table:
- try to compute as many rows as possible in a single query, rather writing multiple queries
- create non-clustered indexes on columns used frequently in `JOIN` queries
- indexing columns is important when working with exact-match queries


---
## Revision

Consider the "experience" table. We want to create a non-clustered index on the "experience" column:
```
id  | level | experience | growth_rate_id
-----+-------+------------+----------------
  1 |     1 |          0 |              1
  2 |     2 |         10 |              1
  3 |     3 |         33 |              1
  4 |     4 |         80 |              1
  5 |     5 |        156 |              1
  6 |     6 |        270 |              1
  7 |     7 |        428 |              1
  8 |     8 |        640 |              1
  9 |     9 |        911 |              1
 10 |    10 |       1250 |              1
 11 |    11 |       1663 |              1
...

??? INDEX exp_index
??? experience (???)
```

* CREATE
* ON
* experience
* UNIQUE
* INDEX
* level
