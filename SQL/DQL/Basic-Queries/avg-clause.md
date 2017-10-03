# AVG clause
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on AVG clause](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql)'

---
## Content

`AVG` returns the average numerical value of a given column.

Using `AVG` funciton[1]:

```
SELECT AVG(experience) FROM
(SELECT experience
  FROM experience
  LIMIT 5)
AS Result;

--Result:
   avg         
==========
  55.800
(1 row)

```

---
## Practice

We have a table of items called *item*. This table has a filed called *cost*, indicating how much each item costs. We would like to know an average cost for the first 10 items in the table. Fill the gaps accordingly:
```
--item:

id  | cost  |    name       
=====+======+============
  1 |     0 | master-ball
  2 |  1200 | ultra-ball
  3 |   600 | great-ball
  4 |   200 | poke-ball


SELECT ???(cost) FROM
(SELECT ???
  ??? item
  LIMIT ???)
??? Avg_Cost;
```

* AVG
* cost
* FROM
* 10
* AS
* LIKE
* AVERGE
* 5
* SUM

---
## Revision

We have a table called "contest_combo". It holds info about how much damage each combo can give. We want to know an average damage value for the second move:
```
--contest_combo:

id  | first_move | second_move
====+============+===============
  1 |          1 |       3
  2 |          1 |       29
  3 |          1 |       185

  ???

--Result:
  avg          
======
161.52
(1 row)
```
