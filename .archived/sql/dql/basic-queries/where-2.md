---
author: stefkn

levels:
  - beginner
  - basic
  - medium

type: normal

category: must-know

inAlgoPool: false

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


---
## Practice

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
 
 
