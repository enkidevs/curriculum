---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [SQL Tutorial:
    WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# More Operators


---

## Content

### `AND`, `OR`, `NOT`

Aside from `AND`, we can also use logical operators like `OR` and `NOT`. 

- `OR` returns records for which any of two (or more) conditions are true 
- `NOT` negates a condition 

Let's look at an example with the `pokemon` table:

| id | name    | total | hp | attack | defense |
| -- | ------- | ----- | -- | ------ | ------- |
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
| -- | ------- | ----- | -- | ------ | ------- |
| 52 | Meowth  | 290   | 40 | 45     | 35      |
| 55 | Golduck | 500   | 80 | 82     | 78      |


---

## Practice

Select all the columns from the `pokemon` table, keeping only the rows where the name equals either `'bulbasaur'` or `'ivysaur'`.

```sql
SELECT *
FROM pokemon
??? ???
???;
```

- `WHERE`
- `name = 'bulbasaur' OR`
- `name = 'ivysaur'`
- `name IS`
- `OR`
- `name IN`
- `'ivysaur'`
- `'bulbasaur'`


---

## Quiz

### Can you select rows between two values in SQL?


Consider the `move_name` table:

| id  | language_id | move_id | name       |
| --- | ----------- | ------- | ---------- |
| 1   | 1           | 1       | はたく        |
| 2   | 3           | 1       | 막치기        |
| 3   | 5           | 1       | Écras'Face |
| 4   | 6           | 1       | Pfund      |
| 5   | 7           | 1       | Destructor |
| ... | ...         | ...     | ...        |

Choose the query that will get all move names with id between 3 and 6. Also, select the names that are used in languages with id 5 or 9:

???

- SELECT name FROM move_name WHERE move_id BETWEEN 3 AND 6 AND language_id IN (5,9);
- SELECT * FROM move_name WHERE move_id BETWEEN 3 AND 6 AND language_id IN (5,9);
- SELECT name FROM move_name WHERE move_id >= 3 AND move_id <= 6 AND language_id >= 5 OR language_id <= 9;
- SELECT name FROM move_name WHERE move_id IN (3,6) AND language_id >= 5 AND language_id <= 9;
