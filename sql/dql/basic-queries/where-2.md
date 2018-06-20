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

# WHERE (2)

---
## Content

### `AND`, `OR`, `NOT`, `BETWEEN`

The predicates we use in `WHERE` can be conjoined using logical operators like `AND`, `OR` and `NOT`. They work as you would expect them to; you can include only the rows which satisfy both or either of two conditions using `AND` and `OR`, respectively. `NOT` negates the truth value of the predicate, so it now selects the rows that don't satisfy the condition.

```sql
SELECT *
FROM pokemon
WHERE name = 'charmander'
  OR name = 'metapod';
```

This shows the rows where the name is an exact match of either 'charmander' or 'metapod'.

```sql
SELECT *
FROM pokemon
WHERE NOT name = 'charmander';
```

This statement shows all rows **except** for the one where name is equal to 'charmander'. You can use parenthesis to construct complex expressions, like so:

```sql
SELECT *
FROM pokemon
WHERE (name = 'charmander'
  OR name = 'metapod')
    AND height > '5';
```

Finally, you can also use the `BETWEEN` operator to define a range of acceptable values, like so:

```sql
SELECT *
FROM pokemon
WHERE weight BETWEEN '10000' AND '8000';
```

This shows only the rows with weight values between 10,000 and 8,000.

---
## Practice

Select all the columns from the `pokemon` table, keeping the rows where the weight is greater than 600 and height is greater than 15.

`SELECT * `
`FROM pokemon`
??? ??? ??? ???;


* WHERE
* weight > '600'
* AND
* height > '15'
* IS
* weight IS GREATER THAN 600
* GREATER THAN
* MORE THAN
* 600
* 15

---
## Revision

Select all the columns from the `pokemon` table, keeping only the rows where the name equals either 'bulbasaur', 'ivysaur' or 'venusaur'.

```sql
SELECT *
FROM pokemon
??? ???
???
???;
```

* WHERE
* name = 'bulbasaur' OR
* name = 'ivysaur' OR
* name = 'venusaur'
* name IS
* OR
* name IN
* 'ivysaur'
* 'bulbasaur'
* 'venusaur'

---
## Quiz 
### Can you select rows between two values in SQL?
Consider the `move_name` table:

```bash

  id  | language_id | move_id |  name       
======|=============|=========|=============
    1 |           1 |       1 | はたく
    2 |           3 |       1 | 막치기
    3 |           5 |       1 | Écras'Face
    4 |           6 |       1 | Pfund
    5 |           7 |       1 | Destructor
  (...)
```
Choose the query that will get all move names with id between 3 and 6. Also, pay attention to select those name that are used in languages with id 5 or 9:

 ???

* SELECT name FROM move_name WHERE move_id BETWEEN 3 AND 6 AND language_id IN (5,9);
* SELECT * FROM move_name WHERE move_id BETWEEN 3 AND 6 AND language_id IN (5,9);
* SELECT name FROM move_name WHERE move_id >= 3 AND move_id <= 6 AND language_id >= 5 OR language_id <= 9;
* SELECT name FROM move_name WHERE move_id IN (3,6) AND language_id >= 5 AND language_id <= 9;
 
 
