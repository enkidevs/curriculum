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

links:
  - '[SQL Tutorial: WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}'

aspects:
  - introduction
  - workout
  
---

# WHERE

---
## Content

When added to an SQL `SELECT` statement, `WHERE` allows us to select rows in a table by specifying *filtering* rules. 

You can write a conditional statement after `WHERE` and, for each row in the table, if the conditional statement evaluates to true, the row will be included in the query result. If not, it will not be included in the result.

SQL supports both comparison operators (such as `=` and `>=`) and logical operations (such as `AND`, `NOT` or `LIKE`). Together, these predicates allow us to define complex rules for extracting only the data that we want from an SQL database.

Let's consider the following `pokemon` table:

| name       | level | hp | attack | defense |
|------------|-------|----|--------|---------|
| Rattata    | 1     | 30 | 56     | 35      |
| Pidgeotto  | 1     | 63 | 60     | 55      |
| Charmander | 3     | 44 | 57     | 48      |
| Pikachu    | 5     | 45 | 65     | 50      |
| Charmander | 10    | 50 | 66     | 54      |

If we wanted to return the `name` and `level` of all the pokemon that are not named `'Charmander'` and that don't have a level higher than `3` we would use the following query:

```sql
SELECT name, level
FROM pokemon
WHERE name <> 'Charmander' AND level <= 3;
```

In this query we are using two conditionals: `name` is not equal (`<>`) to `'Charmander'` and `level` is less than or equal (`<=`) to 3. The resulting set would look like this:

| name      | level |
|-----------|-------|
| Rattata   | 1     |
| Pidgeotto | 1     |

---
## Practice

Select all the columns and rows from the `pokemon` table where the `level` is less than `10`.

```sql
SELECT * 
FROM pokemon
??? ??? 10;
```


* WHERE
* level <
* level <=
* level IS LESS THAN
* level IS LESS THAN OR EQUAL TO

---
## Revision

Select all the rows from the `pokemon` table where the name is exactly equal to `braixen`.

```sql
SELECT * 
FROM pokemon
??? ??? ??? ???;
```

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

| id  | is_main_series | generation_id | name         |
|-----|----------------|---------------|--------------|
| 1   | t              | 3             | stench       |
| 2   | f              | 3             | drizzle      |
| 3   | t              | 3             | speed-boost  |
| 4   | t              | 3             | battle-armor |
| ... | ...            | ...           | ...          |

```sql
SELECT *
FROM ability
```
We want to get the record for the ability called `"speed-boost"`. Which of the following `WHERE` clauses will
have this result when used with the above query?

???

* WHERE name='speed-boost';
* WHERE name IS "speed-boost";
* WHERE ability='speed-boost';
* WHERE id='speed-boost';
 
 
