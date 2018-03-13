# SUM clause
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
  sql.aggregate-single-table: 10

tags:
  - workout

links:

  - '[More on aggregate functions](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql)'

---
## Content

The `SUM` clause comes in handy when we need to perform numerical addition.

Below we will see some examples based on a database (called the pokemon database) that we set up for this purpose. First, we will extract a limited number of entries[1]:
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

Using `SUM` function[2]:

```
SELECT SUM(experience) FROM
(SELECT experience
  FROM experience
  LIMIT 5) as Result;

-- Result:
  sum
=======
  279
(1 row)
```

---
## Practice

Considering the "move_effect_change" table, we want to know the total amount of move_effect:
```
-- "move_effect_change"
id | move_effect | version_group_id
===+=============+==================
 1 |           8 |               11
 2 |          18 |                3
 3 |          29 |                3

SELECT ???(???) FROM move_effect_change;

-Result:
======
3884
(1 row)
```

* SUM
* move_effect
* AVG
* total
* TOTAL
* ADD

---
## Revision

We have a table called item. It holds data about how much each item costs. We want to know how much it would cost to buy all items:
```
--item:

id  | cost  |    name       
=====+======+============
  1 |     0 | master-ball
  2 |  1200 | ultra-ball
  3 |   600 | great-ball
  4 |   200 | poke-ball

  ???

--Result:   
========
 728060
(1 row)

```

* SELECT SUM(cost) FROM item;
* SELECT AVG(cost) FROM item;
* SELECT MAX(cost) FROM item;

---
## Footnotes

[1:LIMIT]
`LIMIT` number.
This clause enables users to `SELECT` the first given number of entries

[2:Nested Query]
We need to use nested queries to be able to `SELECT SUM()` only on the first 5 entries.
In this particular case we say: Compute the `SUM` on the experience column, taking into acount only the 5 entries of the table. `AS` must be specifiend when using nested queries.
You can find out more about nested quries here: https://www.tutorialspoint.com/sql/sql-sub-queries.htm