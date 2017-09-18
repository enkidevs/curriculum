# DISTINCT
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on DISTINCT](https://www.tutorialspoint.com/sql/sql-distinct-keyword.htm)'

---
## Content

The `DISTINCT` keyword enables users to cut the duplicates that result after doing a `SELECT` query.

Consider the following table:
```
EMPLOYEES table
+----+----------+-----+-----------+
| ID | NAME     | AGE | SALARY    |
+----+----------+-----+-----------+
|  1 | Johnny   |  32 | 2000.00   |
|  2 | Britta   |  25 | 1500.00   |
|  3 | Sebastian|  23 | 2000.00   |
|  4 | Catalin  |  25 | 6500.00   |
```

Now, if we run the following query:
```
SELECT SALARY
FROM EMPLOYEES
ORDER BY SALARY;
```
The result will look as follows:
```
+----------+
| SALARY   |
+----------+
|  1500.00 |
|  2000.00 |
|  2000.00 |
|  6500.00 |
```

As we had duplicates in the initial table, they will reflect in our result as well. Using the `DISTINCT` keyword we can handle this duplicates:
```
SELECT DISTINCT SALARY
FROM EMPLOYEES
ORDER BY SALARY;
```
The result:
```
+----------+
| SALARY   |
+----------+
|  1500.00 |
|  2000.00 |
|  6500.00 |
```
---
## Practice

Consider the following table and the following query. Fill the gaps such that we will have no duplicates in the resulting table:
```
GRADES table:

| NAME      | GRADES |
|-----------|--------|
| John      | 56%    |
| Sebastian | 68%    |
| Doris     | 56%    |
| Alice     | 88%    |
| Stefan    | 68%    |
| Raul      | 50%    |

SELECET ???
FROM ???
??? BY GRADES
```

* DISTINCT
* GRADES
* ORDER
* EMPLOYEES
* *

---
## Revision

Consider the following table:
```
SALES table:

| PRODUCT  |  SOLD    |
|----------|----------|
| T-shirt  |    20    |
| Pullover |    30    |
| Jacket   |    15    |
| Hat      |    20    |
| Shirts   |    17    |
```
Choose the query that will have the following output:
```
| SOLD |
|------|
|  15  |
|  17  |
|  20  |
|  30  |
```
* SELECT DISTINCT SOLD FROM SALES ORDER BY SOLD
* SELECT DISTINCT SOLD FROM GRADES ORDER BY PRODUCT
* SELECT SOLD FROM SALE ORDER BY SOLD
* SELECT DISTINCT SOLD FROM SALES ORDER BY PRODUCT
