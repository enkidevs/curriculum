# WHERE (3)
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.read-single-table: 10

links:

  - '[SQL Tutorial: WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/)'

---
## Content

### `LIKE`, `IN`

In a `WHERE` clause, we can also use the keywords `LIKE` and `IN`. `LIKE` allows us to define a pattern that the given attribute should conform to, such as the length or the first letter. `IN` allows us to define a list of values of which the attribute must be one. See the following examples:

```sql
SELECT *
FROM pokemon
WHERE name IN ('charmander',
  'squirtle', 'bulbasaur');
```

The n-tuple list of possible values given to `IN` is the list of possible values that the attribute must take in that column for it to be included in the query result. In this case, we will only get the rows of the three starter Pokémon: Charmander, Squirtle and Bulbasaur.

The `LIKE` statement accepts a pattern string, where wildcard characters are used to denote an acceptable pattern. *Note that some databases may have a different implementation of the specific wildcard characters*

 - `%` is a **wildcard**. This means it counts for a string of any characters of any length, including nothing.
 - `_` represents only one character.

Therefore, `%chu` denotes any string that ends in 'chu'. `_chu` denotes any string with only one character before 'chu'. They can be chained together into complex patterns like `___taco%` which denotes any string containing 'taco' starting on the 4th character and with any number of characters after.

```sql
SELECT *
FROM pokemon
WHERE name LIKE '%chu';
```

The result of this statement is the three rows of the Pokémon whose names end in '-chu': Pichu, Pikachu and Raichu.

---
## Practice

Select all the columns from the `pokemon` table, keeping only the rows where the name is one of: 'groudon', 'snorlax' or 'wailord'.

`SELECT * `
`FROM pokemon`
??? ??? ??? ???;

* WHERE
* name
* IN
* ('groudon', 'snorlax', 'wailord')
* NAME IS
* AND
* 'groudon'
* 'snorlax'
* 'wailord'
* ALL

---
## Revision

Select all the columns from the `pokemon` table, keeping only the rows where the name ends with the string 'saur'.

`SELECT * `
`FROM pokemon`
??? ??? ??? ???;

* WHERE
* name
* LIKE
* '%saur'
* NAME IS
* AND
* FIRST
* 'g'
