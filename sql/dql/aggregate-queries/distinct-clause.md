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

  - '[More on DISTINCT](https://www.tutorialspoint.com/sql/sql-distinct-keyword.htm){documentation}'


aspects:
  - workout


---

# Distinct clause

---
## Content

The `DISTINCT` keyword enables users to filter the duplicates that result after doing a `SELECT` query.

We will give some examples based on a database we have set up:
```
SELECT COUNT(ability_id)
FROM ability_name;

--Result:
count
======
 1397
(1 row)
```
First, we count how many ability ids are there in the ability_name table.
If we would like to see how many of them are `DISTINCT`:

```
SELECT COUNT(DISTINCT ability_id)
FROM ability_name;

--Result:
count
======
  251
(1 row)
```

---
## Practice

We know that the table *pokedex_name* has a field called name with 42 entries. We would like to see how many of these are distinct values. Which query do you think will have the desired output?
```
SELECT COUNT(name) FROM pokedex_name;

--Result:
count
======
   42
(1 row)

???

--Result:
count
======
   35
(1 row)
```


* SELECT COUNT(DISTINCT name) FROM pokedex_name;
* SELECT * FROM pokedex_name;
* SELECT DISTINCT COUNT(name) FROM pokedex_name;
* DISTINCT SELECT COUNT(name) FROM pokedex_name;

---
## Revision

Consider the following table and the following query. Fill the gaps such that we will have no duplicates in the resulting table:
```
--GRADES table:

|   NAME    | GRADES |
|===========|========|
| John      | 56%    |
| Sebastian | 68%    |
| Doris     | 56%    |
| Alice     | 88%    |
| Stefan    | 68%    |
| Raul      | 50%    |

SELECT ???
FROM ???
??? BY GRADES;
```


* `DISTINCT name`
* `GRADES`
* `ORDER`
* `EMPLOYEES`
* `*`
 
 
