---
author: SebaRaba

levels:
  - beginner
  - basic
  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.write.3: 10

aspects:
  - introduction
  - workout

links:
  - '[More on UPDATE](http://www.dofactory.com/sql/update){website}'

---

# Update clause

---
## Content

The `UPDATE` clause enables user to modify existing rows in the database. It is often used with the `WHERE` clause to conditionally update data.

Consider the `egg_group` table:

| id | name          |
|----|---------------|
| 1  | monster       |
| 2  | water1        |
| 3  | bug           |
| 4  | flying        |
| 5  | ground        |
| 6  | fairy         |
| 7  | plant         |
| 8  | humanshape    |
| 9  | water3        |
| 10 | mineral       |
| 11 | indeterminate |
| 12 | water2        |
| 13 | ditto         |
| 14 | dragon        |
| 15 | no-eggs       |

If we want to change the value "ditto" to "rabbit", we use `SET`:

```sql
UPDATE egg_group
SET name = 'rabbit'
WHERE id = 13;
```

*Result:*

| id | name          |
|----|---------------|
| 1  | monster       |
| 2  | water1        |
| 3  | bug           |
| 4  | flying        |
| 5  | ground        |
| 6  | fairy         |
| 7  | plant         |
| 8  | humanshape    |
| 9  | water3        |
| 10 | mineral       |
| 11 | indeterminate |
| 12 | water2        |
| 13 | rabbit        |
| 14 | dragon        |
| 15 | no-eggs       |

Note that if the `WHERE` clause isn't used all the values in the specified column will be updated:

```sql
UPDATE egg_group
SET name = 'rabbit';
```

*Result:*

| id | name   |
|----|--------|
| 1  | rabbit |
| 2  | rabbit |
| 3  | rabbit |
| 4  | rabbit |
| 5  | rabbit |
| 6  | rabbit |
| 7  | rabbit |
| 8  | rabbit |
| 9  | rabbit |
| 10 | rabbit |
| 11 | rabbit |
| 12 | rabbit |
| 13 | rabbit |
| 14 | rabbit |
| 15 | rabbit |

You can also use subqueries in your `WHERE` clause to determine which records are involved in the `UPDATE` command. On top of that, you can chain complex combinations of boolean operators or predicates like `ANY`, `ALL`, or `EXISTS` to further constrain which records are updated. Here is a simple example:

```sql
UPDATE egg_group
SET name = 'water'
WHERE id IN
  (SELECT egg_id
   FROM pokemons
   WHERE type LIKE '%water%'
  );
```

In the example above, we will change the `name` for all our records in the `egg_group` table which have their `id` equal to `egg_id` for the records in the `pokemons` table that contain 'water' in their `type` column.

---
## Practice

Consider the `generation` table:

| id | region_id | name           |
|----|-----------|----------------|
| 1  | 1         | generation-i   |
| 2  | 2         | generation-ii  |
| 3  | 3         | generation-iii |
| 4  | 4         | generation-iv  |
| 5  | 5         | generation-v   |
| 6  | 6         | generation-vii |

```sql
??? generation
SET ???='generation-vi'
WHERE id=???;
```

We would like to update the table contents such that the last generation is generation "vi" instead of "vii".

* UPDATE
* name
* 6
* 'generation-vi'
* CHANGE
* WHERE
* SET
* NEW
* region_id

---
## Revision

Consider the following table named `gender`:

| id | name       |
|----|------------|
| 1  | female     |
| 2  | male       |
| 3  | genderless |

```sql
??? gender
??? name = '???'
```
We want to update the table such that all genders will be neutral.

* UPDATE
* SET
* neutral
* WHERE
* DELETE
* CHANGE
 
 
