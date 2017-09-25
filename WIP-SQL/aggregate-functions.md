# Aggregate Values
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on aggregate functions](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql)'

---
## Content

Aggregates come in hand when we need to perform calculations on a set of values and return a single value.

We have a series of functions available:
- `SUM`: returns the some of numeric values in a given column
- `AVG`: returns the average value of a given column
- `COUNT`: returns the total number of values in a given column
- `MIN`: returns the smallest value in a given column
- `MAX`: returns the biggest value in a given column

Following, we will see some examples based on a database (called pokemon database) that we set up for this purpose. Frist, we will extract a limited number of entries[1]:
```
-- experience table:
SELECT experience
FROM experience
LIMIT 5;

--Result:
experience
------------
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
  -----
  279
(1 row)
```

Using `AVG` funciton:

```
SELECT AVG(experience) FROM
(SELECT experience
  FROM experience
  LIMIT 5)
AS Result;

--Result:
   avg         
----------
  55.800
(1 row)

```

Using `COUNT` function:

```
SELECT COUNT(experience) FROM
(SELECT experience
  FROM experience
  LIMIT 5)
AS result;


--Result:
  count
---------
    5
(1 row)
```

Using `MIN` function:

```
SELECT MIN(experience) FROM
(SELECT experience
  FROM experience
  LIMIT 5)
AS result;


--Result:
   min
---------
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
--------
  156
(1 row)
```


---
## Practice

Knowing that the pokemon db has a table called *item* and a field *name*, count all name entries?
```
    ???
--Result:
  count
---------
   746
(1 row)

```

* SELECT COUNT(name) FROM item;
* SELECT COUNT(DISTINCT name) FROM item;
* SELECT COUNT(item) FROM name;
* SELECT COUNT(name) FROM item

---
## Revision

We have a table of items called *item*. This table has a filed called *cost*, indicating how much each item costs. We would like to know an average cost for the first 10 items in the table. Fill the gaps accordingly:
```
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
## Footnotes

[1:LIMIT]
`LIMIT` number.
This clause enables users to `SELECT` the first given number of entries

[2:Nested Query]
We need to use nested queries to be able to `SELECT SUM()` only on the first 5 entries.
In this particular case we say: Compute the `SUM` on the experience column, taking into acount only the 5 entries of the table. `AS` must be specifiend when using nested queries.
You can find out more about nested quries here: https://www.tutorialspoint.com/sql/sql-sub-queries.htm
