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
  - '[Like Predicate](https://en.wikibooks.org/wiki/Structured_Query_Language/Like_Predicate){website}'
  - '[The IN Keyword](https://en.wikibooks.org/wiki/Structured_Query_Language/Quantified_Comparison#IN){website}'

aspects:
  - workout

---

# LIKE & BEWTEEN

---
## Content

The `WHERE` keyword can be coupled with the `LIKE`, `IN`, and `BETWEEN` operators to create more complex query conditions. Using this table[1], we'll take a look at how `LIKE` and `BETWEEN` behave.

The `LIKE` statement accepts a pattern string, where wildcard characters are used to denote an acceptable pattern[2].

 - `%` is a **wildcard**. This means it counts for a string of any characters of any length, including nothing.
 - `_` represents only one character.

Therefore, `%le` denotes any string that ends in `'le'`. `_le` denotes any string with only one character before `'le'`. They can be chained together into complex patterns like `___taco%` which denotes any string containing the substring `'taco'` at its 4th position, and with any number of characters after.

```sql
SELECT *
FROM pokemon
WHERE name LIKE '%le';
```

The result of this statement is the two rows of the Pokémon whose names end in `'le'`: Squirtle and Wartortle.

| name      | total | hp | attack | defense |
|-----------|-------|----|--------|---------|
| Squirtle  | 314   | 44 | 48     | 65      |
| Wartortle | 405   | 59 | 63     | 80      |

You can use the `BETWEEN` operator[3] to define a range of acceptable values, like so:

```sql
SELECT *
FROM pokemon
WHERE attack BETWEEN 60 AND 100;
```

The resulting set will be:

| name       | total | hp | attack | defense |
|------------|-------|----|--------|---------|
| Ivysaur    | 405   | 60 | 62     | 63      |
| Venusaur   | 525   | 80 | 82     | 83      |
| Charmeleon | 405   | 58 | 64     | 58      |
| Charizard  | 534   | 78 | 84     | 78      |
| Wartortle  | 405   | 59 | 63     | 80      |
| Blastoise  | 530   | 79 | 83     | 100     |

---
## Practice

Select all the columns from the `pokemon` table, keeping only the rows where the name ends with the string `'saur'`.

```sql
SELECT * 
FROM pokemon
??? ??? ??? ???;
```

* WHERE
* name
* LIKE
* '%saur'
* NAME IS
* AND
* 'saur'
* 'saur%'

---
## Revision

Select all columns from the `pokemon` table, that have an `attack` in the range `65-75`.

```sql
SELECT *
FROM pokemon
??? ??? ??? ??? ??? ???;
```

* WHERE
* attack
* BEWTEEN
* 65
* AND
* 75


---
## Quiz 
### Do you know how to match a pattern in SQL?
Consider the `location` table from our pokemon database:

| id  | region_id | name          |
|-----|-----------|---------------|
| 1   | 4         | canalave-city |
| 2   | 1         | eterna-city   |
| 3   | 3         | pastoria-city |
| ... | ...       | ...           |

Choose the query that will get all the location records that are based in regions 1, 2. Also, pay attention to include only locations that end in 'city':

 ???

* SELECT * FROM location WHERE region_id < 3 AND name LIKE '%city';
* SELECT * FROM location WHERE region_id < 3 AND name='%city';
* SELECT * FROM location WHERE BETWEEN 1 AND 2 AND name='%city';
* SELECT * FROM location WHERE region_id < 3 AND name LIKE '_city';

---
## Footnotes
[1:Table]
| name       | total | hp | attack | defense |
|------------|-------|----|--------|---------|
| Bulbasaur  | 318   | 45 | 49     | 49      |
| Ivysaur    | 405   | 60 | 62     | 63      |
| Venusaur   | 525   | 80 | 82     | 83      |
| Charmander | 309   | 39 | 52     | 43      |
| Charmeleon | 405   | 58 | 64     | 58      |
| Charizard  | 534   | 78 | 84     | 78      |
| Squirtle   | 314   | 44 | 48     | 65      |
| Wartortle  | 405   | 59 | 63     | 80      |
| Blastoise  | 530   | 79 | 83     | 100     |
| Caterpie   | 195   | 45 | 30     | 35      |
| Metapod    | 205   | 50 | 20     | 55      |
[2:RDBMS Implementations]
Note that some databases may have a different implementation of the specific wildcard characters
[3: BETWEEN]
This can be seen as a shortcut for chaining two comparison operators with the `AND` clause:
```sql
SELECT * FROM table_name
WHERE col BETWEEN 1 AND 10;
-- is the same as
SELECT * FROM table_name
WHERE col >= 1 AND
  col <= 10;
```
