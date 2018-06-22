---
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.aggregate-single-table.1: 10

tags:

  - workout


links:

  - '[More on MIN and MAX clauses](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}'


aspects:
  - workout


---

# MIN and MAX clauses

---
## Content

The `MIN` clause returns the smallest value in a given column.
The `MAX` clause returns the biggest value in a given column.

Using `MIN` function[1]:

```
SELECT MIN(experience) FROM
(SELECT experience
  FROM experience
  LIMIT 5)
AS result;


--Result:
   min
=========
    0
(1 row)
```

Using `MAX` function:

```
SELECT MAX(experience) FROM
(SELECT experience
  FROM experience
  LIMIT 5)
AS result;

--Result:
   max
========
  156
(1 row)
```

---
## Practice

We have the table "item". It holds data about each item and it's cost. We want to find out the most expensive item:
```
--item:

id  | cost  |    name       
====+======+============
  1 |     0 | master-ball
  2 |  1200 | ultra-ball
  3 |   600 | great-ball
  4 |   200 | poke-ball

SELECT ???(???) FROM ???

--Result:
=======
10000
(1 row)
```



* MAX
* cost
* item
* expenses
* MIN
* FROM

---
## Revision

Consider the table "move_effect_change". Choose the query that finds the move with the lowest effect:
```
-- "move_effect_change"
id | move_effect | version_group_id
===+=============+==================
 1 |           8 |               11
 2 |          18 |                3
 3 |          29 |                3

    ???

--Result:
=====
   8
(1 row)
```



* SELECT MIN(move_effect) FROM move_effect_change;
* SELECT MAX(move_effect) FROM move_effect_change;
* SELECT AVG(move_effect) FROM move_effect_change;

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
 
 
