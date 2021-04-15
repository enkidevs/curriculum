---
author: Kirill
type: normal
category: must-know
links:
  - >-
    [SQL Tutorial:
    WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}
  - >-
    [Like
    Predicate](https://en.wikibooks.org/wiki/Structured_Query_Language/Like_Predicate){website}
  - >-
    [The IN
    Keyword](https://en.wikibooks.org/wiki/Structured_Query_Language/Quantified_Comparison#IN){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# BETWEEN


---

## Content

Using the same table as in the previous insight[1], we'll now take a look at the `BETWEEN` keyword.

You can use the `BETWEEN` operator[2] to define a range of acceptable values, like this:

```sql
SELECT *
FROM pokemon
WHERE attack BETWEEN 60 AND 100;
```

The resulting set will be:

| name       | total | hp | attack | defense |
| ---------- | ----- | -- | ------ | ------- |
| Ivysaur    | 405   | 60 | 62     | 63      |
| Venusaur   | 525   | 80 | 82     | 83      |
| Charmeleon | 405   | 58 | 64     | 58      |
| Charizard  | 534   | 78 | 84     | 78      |
| Wartortle  | 405   | 59 | 63     | 80      |
| Blastoise  | 530   | 79 | 83     | 100     |


---

## Practice

Select all columns from the `pokemon` table, that have an `attack` in the range `65-75`.

```sql
SELECT *
FROM pokemon
??? ??? ??? ??? ??? ???;
```

- WHERE
- attack
- BETWEEN
- 65
- AND
- 75


---

## Revision

The `BETWEEN` operator can be replaced using a combination of ??? operators and the ??? keyword.

- comparison
- AND
- logical
- OR


---

## Quiz

### Do you know how to match a pattern in SQL?


Consider the `location` table from our pokemon database:

| id  | region_id | name          |
| --- | --------- | ------------- |
| 1   | 4         | canalave-city |
| 2   | 1         | eterna-city   |
| 3   | 3         | pastoria-city |
| ... | ...       | ...           |

Choose the query that will get all the location records that are based in regions 1, 2. Also, pay attention to include only locations that end in 'city':

 ???

- SELECT * FROM location WHERE region_id < 3 AND name LIKE '%city';
- SELECT * FROM location WHERE region_id < 3 AND name='%city';
- SELECT * FROM location WHERE BETWEEN 1 AND 2 AND name='%city';
- SELECT * FROM location WHERE region_id < 3 AND name LIKE '_city';


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

[2: BETWEEN]
This can be seen as a shortcut for chaining two comparison operators with the `AND` clause:

```sql
SELECT * FROM table_name
WHERE col BETWEEN 1 AND 10;
-- is the same as
SELECT * FROM table_name
WHERE col >= 1 AND
  col <= 10;
```
