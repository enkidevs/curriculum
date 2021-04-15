---
author: stefkn
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
    - type-in-the-gap
  context: standalone
---

# LIKE


---

## Content

Using this table[1], let's take a look at how `LIKE` works.

The `LIKE` statement accepts a pattern string, where wildcard characters are used to denote an acceptable pattern[2].

- `%` is a **wildcard**. This means it counts for a string of any characters of any length, including nothing.
- `_` represents only one character.

Therefore, `%le` denotes any string that ends in `'le'`. `_le` denotes any string with only one character before `'le'`. 

They can be chained together into complex patterns like `___taco%` which denotes any string containing the substring `'taco'` at its 4th position, and with any number of characters after.

```sql
SELECT *
FROM pokemon
WHERE name LIKE '%le';
```

The result of this statement is the two rows of the Pokémon whose names end in `'le'`: Squirtle and Wartortle.

| name      | total | hp | attack | defense |
| --------- | ----- | -- | ------ | ------- |
| Squirtle  | 314   | 44 | 48     | 65      |
| Wartortle | 405   | 59 | 63     | 80      |


---

## Practice

Select all the columns from the `pokemon` table, keeping only the rows where the name ends with the string `'saur'`.

```sql
SELECT * 
FROM pokemon
??? ??? ??? ???;
```

- WHERE
- name
- LIKE
- '%saur'
- NAME IS
- AND
- 'saur'
- 'saur%'


---

## Revision

Write a query that will retrieve all the Toy Story movies from the database, using the `LIKE` keyword.

```sql
SELECT * FROM movies
WHERE name ??? 'Toy Story???';
```

- LIKE
- %
- _


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

Choose the query that will get all the location records based in regions 1, 2. Also, include only locations that end in 'city':

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

[2:RDBMS Implementations]
Note: some databases may have a different implementation of the specific wildcard characters.
