# Aggregate functions
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

Consider the following table:
```
STUDENTS table:

| NAME      | AGE |
|-----------|-----|
| Sebastian | 22  |
|   Stefan  | 21  |
|    John   | 18  |
|   Emilly  | 22  |
| Courtney  | 30  |
| Alice     | 25  |
```

Using `SUM` function:

```
SELECT SUM(AGE) FROM STUDENTS;

-- Result:
  sum
---------
   138
(1 row)
```

Using `AVG` funciton:

```
SELECT AVG(AGE) FROM STUDENTS;

--Result:
  avg
---------
   23
(1 row)
```

Using `COUNT` function:

```
SELECT COUNT(AGE) FROM STUDENTS;

--Result:
  count
---------
    6
(1 row)
```

Using `MIN` function:

```
SELECT MIN(AGE) FROM STUDENTS;

--Result:
   min
---------
   18
(1 row)
```

Using `MAX` function:

```
SELECET MAX(AGE) FROM STUDENTS;

--Result:
   max
--------
   30
(1 row)
```


---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
