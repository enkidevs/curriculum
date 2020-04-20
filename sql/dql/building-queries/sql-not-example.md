---
author: stefkn

type: normal

category: must-know

links:
  - '[SQL Tutorial: WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}'

aspects:
  - introduction
  - workout

---

# NOT Example

---
## Content

In a previous insight we used the `<>` comparison operator to check if the `name` was not `'Charmander'`. 

The same can be achieved using `!=` or by coupling a comparison operator (`=`) and a logical operation (`NOT`):

```sql
SELECT *
FROM pokemon
WHERE NOT name = 'Charmander';
```

This statement shows all rows **except** for the one where the name is equal to `'Charmander'`.

In our case, this query would return all our records (rows) as we don't have any entries that would be filtered by that condition.

You can also use parentheses to construct complex expressions, like this:

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

Choose the query that will get all move names with id between 3 and 6. Also, include names that are used in languages with id 5 or 9:

???

* SELECT name FROM move_name WHERE move_id BETWEEN 3 AND 6 AND language_id IN (5,9);
* SELECT * FROM move_name WHERE move_id BETWEEN 3 AND 6 AND language_id IN (5,9);
* SELECT name FROM move_name WHERE move_id >= 3 AND move_id <= 6 AND language_id >= 5 OR language_id <= 9;
* SELECT name FROM move_name WHERE move_id IN (3,6) AND language_id >= 5 AND language_id <= 9;