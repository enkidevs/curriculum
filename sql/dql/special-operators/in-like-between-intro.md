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
---

# IN, LIKE, BETWEEN


---

## Content

SQL provides a bunch of special operators to help you write complex querying conditions.

In the next few insights, we'll take a look at:

- the `IN` operator. It defines a list of values, and the attribute must be one of them
- the `LIKE` operator. It's used to define a *pattern* that the given attribute should conform to
- the `BETWEEN` operator. It defines a range of values, and the attribute must be within that range

Let's consider the following `pokemon` table:

| name       | total | hp | attack | defense |
| ---------- | ----- | -- | ------ | ------- |
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

The `IN` condition allows you to easily test if a value inside a column matches any one specific item in a list of values.

```sql
SELECT *
FROM pokemon
WHERE name IN ('Charmander',
  'Squirtle', 'Bulbasaur');
```

In this case, we'll only get the rows of the three starter Pokemon: Charmander, Squirtle and Bulbasaur.

| name       | total | hp | attack | defense |
| ---------- | ----- | -- | ------ | ------- |
| Bulbasaur  | 318   | 45 | 49     | 49      |
| Charmander | 309   | 39 | 52     | 43      |
| Squirtle   | 314   | 44 | 48     | 65      |


---

## Practice

Select all the columns from the `pokemon` table, keeping only the rows where the name is one of: `'Groudon'`, `'Snorlax'` or `'Wailord'`.

```sql
SELECT * 
FROM pokemon
??? ??? ??? ???;
```

- `WHERE`
- `name`
- `IN`
- `('Groudon', 'Snorlax', 'Wailord')`
- `SUCH THAT`
- `IS ONE OF`
- `['Groudon', 'Snorlax', 'Wailord']`
