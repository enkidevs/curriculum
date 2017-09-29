# SUM
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

`SUM` come in handy when we need to perform numerical addition.

Following, we will see some examples based on a database (called pokemon database) that we set up for this purpose. Frist, we will extract a limited number of entries[1]:
```
-- experience table:

id  | level | experience | growth_rate_id
-----+-------+------------+---------------
  1 |     1 |          0 |              1
  2 |     2 |         10 |              1
  3 |     3 |         33 |              1
....

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

---
## Practice



---
## Revision



---
## Footnotes

[1:LIMIT]
`LIMIT` number.
This clause enables users to `SELECT` the first given number of entries

[2:Nested Query]
We need to use nested queries to be able to `SELECT SUM()` only on the first 5 entries.
In this particular case we say: Compute the `SUM` on the experience column, taking into acount only the 5 entries of the table. `AS` must be specifiend when using nested queries.
You can find out more about nested quries here: https://www.tutorialspoint.com/sql/sql-sub-queries.htm
