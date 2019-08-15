---
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.read-single-table.0: 10
  sql.read-single-table.3: 10

tags:

  - introduction

  - workout

links:

  - '[More on ORDER BY](http://www.dofactory.com/sql/order-by){website}'

aspects:
  - introduction
  - workout


---

# Order By clause

---
## Content

The `ORDER BY` clause enables users to order data in ascending or descending order on one or more columns. This is also more commonly known as **sorting** data.

Consider the following `employees` table:

| id  | first_name | last_name | email                   |
| --- | ---------- | --------- | ----------------------- |
| 1   | Karlene    | Pantone   | kpantone0@topsy.com     |
| 2   | Donnamarie | Beeho     | dbeeho1@state.tx.us     |
| 3   | Tony       | Isworth   | tisworth2@bloglovin.com |
| 4   | Esta       | Warrier   | ewarrier3@berkeley.edu  |
| 5   | Immanuel   | Kippen    | ikippen4@biglobe.ne.jp  |
| 6   | Regina     | Pantone   | regone@stratos.org      |

Right now, the table is sorted in ascending order by the `id` column, but what if you need the results of your query to be sorted in ascending order by the `last_name` column? To achieve this you would use the following syntax: 

```sql
SELECT last_name, first_name
FROM employees
ORDER BY last_name;
```

*Resulting set:*

| last_name | first_name |
| --------- | ---------- |
| Beeho     | Donnamarie |
| Isworth   | Tony       |
| Kippen    | Immanuel   |
| Pantone   | Karlene    |
| Pantone   | Regina     |
| Warrier   | Esta       |

Note that the ascending order is set as default. If we want to display the result in a descending order we need to put `DESC` after specifying the columns.

There might be some cases where you want your result set to be ordered by multiple columns, each being sorted differently (ascending or descending). In SQL, this is done by specifying the name of the columns you want ordered, followed by their order. On top of that, each set of column-order should be separated by a comma. When you're sorting using only one column, the result set might contain duplicate values. In this case, you can add another column to the sorting strategy such that the duplicate values would be sorted by the second column.

On the same `employees` table, to return the `last_name` and `first_name`, sorted in ascending order by the `last_name` and in descending order by the `first_name`, the command would be:

```sql
SELECT last_name, first_name
FROM employees
ORDER BY last_name ASC, first_name DESC;
```

*Resulting set*:

| last_name | first_name |
| --------- | ---------- |
| Beeho     | Donnamarie |
| Isworth   | Tony       |
| Kippen    | Immanuel   |
| Pantone   | Regina     |
| Pantone   | Karlene    |
| Warrier   | Esta       |

First, the `last_name` column is sorted in ascending order, and for the rows where the `last_name` have equal values ('Pantone Karlene', 'Pantone Regina') the `first_name` column is sorted in descending order.

---
## Practice

The `nature_name` table contains data about the nature name in multiple languages, and it has the following columns:
* `name`, for nature name
* `language_id` to reflect the given language.

Select both columns from the table and sort your resulting set in descending order by the `name` column:

```sql
SELECT name, ???
FROM nature_name
??? name ???;
```

* language_id
* ORDER BY
* DESC
* AVG
* GROUP BY
* nature_name
* DESCENDING
* SORT BY

---
## Revision

Complete the following code such that the resulting set will contain the `name` and `region_id` columns, sorted by the `region_id` in ascending order:

```sql
SELECT name, region_id
FROM location
??? ???;
```

* ORDER BY
* region_id
* name
* SORT BY
* ASC
* DESC

---
## Quiz 
### Can you order a table with SQL?
Consider the `experience` table from our pokemon database:

```

id  | level | experience | growth_rate_id
====|=======|============|================
  1 |     1 |          0 |              1
  2 |     2 |         10 |              1
  3 |     3 |         33 |              1
  4 |     4 |         80 |              1
  (...)

```

This table shows how much experience you need to gain in order to get to level 100 based on different growth rates. Choose the query that will get all records that have level 100 and orders them descending on the amount of experience needed:

 ???

* SELECT * FROM experience WHERE level=100 ORDER BY experience DESC;
* SELECT * FROM experience WHERE level=100 ORDER BY growth_rate_id DESC;
* SELECT * FROM experience WHERE level=100 DESC ORDER BY experience;
* SELECT * FROM experience WHERE level=100 ORDER DESC BY experience;
 
 
