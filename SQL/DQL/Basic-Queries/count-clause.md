# COUNT clause
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on COUNT clause](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql)'

---
## Content

The `COUNT` clause returns the total number of values in a given column.

Using `COUNT` function[1]:

```
SELECT COUNT(experience) FROM
(SELECT experience
  FROM experience
  LIMIT 5)
AS result;


--Result:
  count
=========
    5
(1 row)
```

---
## Practice

We have a table "location". It has data stating the reagion each location belongs to. We want to know how many locations are there in each reagion and display the result ordered by regions?
```
-- location
id  | region_id |      name           
====+===========+===============
  1 |         4 | canalave-city
  2 |         4 | eterna-city
  3 |         4 | pastoria-city
...

SELECT ???(name),???
FROM location
??? region_id
ORDER BY region_id;

--Result:
count | region_id
======+===========
   90 |         1
   64 |         2
   82 |         3
  126 |         4
  121 |         5
  104 |         6
   91 |          
(7 rows)


```

* COUNT
* region_id
* GROUP BY
* ORDER BY
* SUM
* AVG


---
## Revision

Knowing that the pokemon db has a table called *item* and a field *name*, count all name entries?
```
    ???
--Result:
  count
=========
   746
(1 row)

```

* SELECT COUNT(name) FROM item;
* SELECT COUNT(DISTINCT name) FROM item;
* SELECT COUNT(item) FROM name;
* SELECT COUNT(name) FROM item

---
## Footnotes

[1:Pokemon Db]
We will use the same segment of "experience" table for all aggregate functions:
```
-- experience table:

id  | level | experience | growth_rate_id
====+=======+============+===============
  1 |     1 |          0 |              1
  2 |     2 |         10 |              1
  3 |     3 |         33 |              1
....

SELECT experience
FROM experience
LIMIT 5;

--Result:
experience
============
     0
    10
    33
    80
   156
 (5 rows)

```
