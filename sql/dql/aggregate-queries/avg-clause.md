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
  sql.aggregate-single-table.0: 10

tags:

  - workout

links:

  - '[More on AVG clause](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}'

aspects:
  - workout


---

# AVG clause

---
## Content

`AVG` returns the average numerical value of a given column.

Using `AVG` function[1] to get the average of only the first five rows:

```
SELECT AVG(experience) as Result
FROM experience
LIMIT 5;

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


SELECT ???(???)
??? item
LIMIT ???
```


* AVG
* cost
* FROM
* 10
* AS
* LIKE
* AVERAGE
* id
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


* SELECT AVG(second_move) FROM contest_combo;
* SELECT SUM(second_move) FROM contest_combo;
* SELECT AVG(first_move) FROM contest_combo;

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
==========
     0
    10
    33
    80
   156
 (5 rows)
```
 
 
