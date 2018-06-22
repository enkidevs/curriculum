---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.read-single-table.0: 10
  sql.read-single-table.1: 10
  sql.read-single-table.2: 10

tags:

  - introduction

  - workout

links:

  - '[SQL Tutorial: WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}'

aspects:
  - introduction
  - workout


---

# WHERE

---
## Content

When added to an SQL `SELECT` statement, `WHERE` allows us to select rows in a table by specifying rules. The WHERE keyword can also be used to insert, update and delete data from tables.

You can write a conditional statement after `WHERE` and, for each row in the table, if the conditional statement evaluates to true, the row will be included in the query result. If not, it will not be included in the result.

SQL supports logical operations and comparison operators, such as `=`, `<>`, `>`, `>=`, `<`, `<=`, `AND`, `OR`, `NOT`, `IN`, `BETWEEN`, `LIKE`, `IS NULL` or `IS NOT NULL`. Together, these predicates allow us to define complex rules for extracting just the data that we want from an SQL database. However, if we're not careful, we can easily miss some edge case here, and introduce bugs.

see this example:

```sql
SELECT id, weight, name
FROM pokemon
WHERE name = 'charmander';
```

This query will keep only the `id`, `weight` and `name` columns from the `pokemon` table, and only include the row where the value in the `name` column exactly equals `charmander`. Since there is only one row with this property—because there is only one Pokemon called 'Charmander'—we expect the result to have only one row.

---
## Practice

Select all the rows from the `pokemon` table where the weight is less than 500.

`SELECT * `
`FROM pokemon`
??? ???;


* WHERE
* weight < '500'
* FROM
* pokemon
* IS
* weight IS GREATER THAN 500

---
## Revision

Select all the rows from the `pokemon` table where the name is exactly equal to `braixen`.

`SELECT * `
`FROM pokemon`
??? ??? ??? ???;


* WHERE
* name
* =
* 'braixen'
* FROM
* pokemon
* IS

---
## Quiz 
### Can you find a particular entry in a table with SQL?

Consider the `ability` table and the following query:
```

id   | is_main_series | generation_id |      name      
=====|================|===============|===============
   1 | t              |             3 | stench
   2 | f              |             3 | drizzle
   3 | t              |             3 | speed-boost
   4 | t              |             3 | battle-armor
(...)

SELECT *
FROM ability

```
We want to get the record for the ability called "speed-boost". Which of the following `WHERE` clauses will
have this result when used with the above query?

 ???

* WHERE name='speed-boost';
* WHERE name IS "speed-boost";
* WHERE ability='speed-boost';
* WHERE id='speed-boost';
 
 
