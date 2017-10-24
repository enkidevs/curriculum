# WHERE (2)
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

`SELECT * `
`FROM pokemon`
??? ??? ??? ???;

* WHERE
* name = 'bulbasaur' OR
* name = 'ivysaur' OR
* name = 'venusaur'
* NAME IS
* AND
* 'ivysaur'
* 'bulbasaur'
