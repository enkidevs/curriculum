# Order By clause
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.read-single-table: 10

links:

  - '[More on ORDER BY](http://www.dofactory.com/sql/order-by)'

---
## Content

`ORDER BY` clause enables users to order data in ascending or descending order on one or more columns. It comes after `GROUP BY` clause.

Considering the following example:
```
SELECT COUNT(name), language_id
FROM move_name
GROUP BY language_id;

--Result:
count | language_id
======+============
  639 |           6
  639 |           5
  639 |           8
  639 |           1
  639 |           9
  617 |           3
  639 |           7
(7 rows)
```
Now using `ORDER BY` clause:
```
SELECT COUNT(name), language_id
FROM move_name
GROUP BY language_id;
ORDER BY language_id;

--Result:
count | language_id
======+============
  639 |           1
  617 |           3
  639 |           5
  639 |           6
  639 |           7
  639 |           8
  639 |           9
(7 rows)
```

Note that the ascending order is set as default. If we want to display the result in a descending order we need to put `DESC` after the specifying the columns.

---
## Practice

The nature_name table has data about the nature name in multiple languages. We have the fields:
- name - for nature name
- language_id
Count how many names we have for each language and order the result in descending order:
```
SELECT ???(name),language_id
FROM ???
GROUP BY language_id
??? language_id ???;

--Result:
count | language_id
======+============
   25 |           9
   25 |           8
   25 |           7
   25 |           6
   25 |           5
   25 |           3
   25 |           1
(7 rows)
```

* COUNT
* nature_name
* ORDER BY
* DESC
* AVG
* GROUP BY
* language_id

---
## Revision

We have a table called location. It has data about the location's name and the region that each location belongs to. We want to count how many locations has each region. Then we want to display the results in ascending order of the counted values.
```
SELECT ???(name),region_id
FROM location
??? region_id
ORDER BY ???;

--Result:
count | region_id
======+===========
   64 |         2
   82 |         3
   90 |         1
   91 |          
  104 |         6
  121 |         5
  126 |         4
(7 rows)

```

* COUNT
* GROUP BY
* count
* region_id
* ORDER BY
* SUM
