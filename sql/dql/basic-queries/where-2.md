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

# WHERE (2)

---
## Content

### `AND`, `OR`, `NOT`

As you have seen in the previous insight, the predicates we use in `WHERE` can be conjoined using logical operators like `AND`, `OR` and `NOT`. These operators are used in combination with filtering conditions (e.g. `salary > 1000`) and can be used for:

- returning records for which two (or more) conditions are true at the same time with `AND`
- returning records for which any of two (or more) conditions are true with `OR`
- negating a condition with `NOT`

They work as you would expect them to; you can include only the rows which satisfy both or either of two conditions using `AND` and `OR`, respectively. `NOT` negates the truth value of the predicate, so it selects the rows that don't satisfy the condition.

Let's take a look at this `pokemon` table:

| id | name    | total | hp | attack | defense |
|----|---------|-------|----|--------|---------|
| 50 | Diglett | 265   | 10 | 55     | 25      |
| 51 | Dugtrio | 425   | 35 | 100    | 50      |
| 52 | Meowth  | 290   | 40 | 45     | 35      |
| 53 | Persian | 440   | 65 | 70     | 60      |
| 54 | Psyduck | 320   | 50 | 52     | 48      |
| 55 | Golduck | 500   | 80 | 82     | 78      |

```sql
SELECT *
FROM pokemon
WHERE name = 'Meowth'
  OR name = 'Golduck';
```

This shows the rows where the `name` is an exact match of either `'Meowth'` or `'Golduck'`. The resulting set looks like this:

| id | name    | total | hp | attack | defense |
|----|---------|-------|----|--------|---------|
| 52 | Meowth  | 290   | 40 | 45     | 35      |
| 55 | Golduck | 500   | 80 | 82     | 78      |

In the previous insight we used the `<>` comparison operator to check if the `name` was not `'Charmander'`. The same can be achieved using `!=` or by coupling a comparison operator (`=`) and a logical operation (`NOT`):

```sql
SELECT *
FROM pokemon
WHERE NOT name = 'Charmander';
```

This statement shows all rows **except** for the one where the name is equal to `'Charmander'`. In our case, this query would return all our records (rows) as we do not have any entries that would be filtered by that condition.

You can also use parenthesis to construct complex expressions, like so:

```sql
SELECT *
FROM pokemon
WHERE (name = 'Diglett'
  OR name = 'Dugtrio')
  AND (total > 300 AND total < 500);
```

This query will only return the row with the name `'Dugtrio'` because for the record with the name `'Diglett'` the `total` value is not between 300 and 500.

| id | name    | total | hp | attack | defense |
|----|---------|-------|----|--------|---------|
| 51 | Dugtrio | 425   | 35 | 100    | 50      |

---
## Practice

Select all the columns from the `pokemon` table, keeping the rows where the `total` is greater than 350 or `attack` is between 5 and 15.

```sql
SELECT * 
FROM pokemon
??? (??? 350) ???
  (??? 5 ??? ??? 15); 
```

* `WHERE`
* `total >`
* `OR`
* `attack >`
* `AND`
* `attack <`
* `IS`
* `total GREATER THAN`
* `attack MORE THAN`
* `total MORE THAN`
* `attack GREATER THAN`

---
## Revision

Select all the columns from the `pokemon` table, keeping only the rows where the name equals either `'bulbasaur'`, `'ivysaur'` or `'venusaur'`.

```sql
SELECT *
FROM pokemon
??? ???
???
???;
```

* `WHERE`
* `name = 'bulbasaur' OR`
* `name = 'ivysaur' OR`
* `name = 'venusaur'`
* `name IS`
* `OR`
* `name IN`
* `'ivysaur'`
* `'bulbasaur'`
* `'venusaur'`

---
## Quiz 
### Can you select rows between two values in SQL?
Consider the `move_name` table:

| id  | language_id | move_id | name       |
|-----|-------------|---------|------------|
| 1   | 1           | 1       | はたく     |
| 2   | 3           | 1       | 막치기     |
| 3   | 5           | 1       | Écras'Face |
| 4   | 6           | 1       | Pfund      |
| 5   | 7           | 1       | Destructor |
| ... | ...         | ...     | ...        |

Choose the query that will get all move names with id between 3 and 6. Also, pay attention to select those name that are used in languages with id 5 or 9:

???

* SELECT name FROM move_name WHERE move_id BETWEEN 3 AND 6 AND language_id IN (5,9);
* SELECT * FROM move_name WHERE move_id BETWEEN 3 AND 6 AND language_id IN (5,9);
* SELECT name FROM move_name WHERE move_id >= 3 AND move_id <= 6 AND language_id >= 5 OR language_id <= 9;
* SELECT name FROM move_name WHERE move_id IN (3,6) AND language_id >= 5 AND language_id <= 9;
 
 
