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
  sql.write.5: 10

aspects:
  - introduction
  - workout
  
links:
  - '[More on DELETE](http://www.dofactory.com/sql/delete){website}'

---

# Delete clause

---
## Content

The `DELETE` clause lets users delete data from a table. We can specify which rows to delete using the `WHERE` clause, otherwise all records will be deleted.

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

Suppose we want to delete the first value from the table:

```sql
DELETE FROM egg_group
WHERE id = 1;
```

Then, our table becomes:

| id | name          |
|----|---------------|
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

You can also use subqueries when constraining the rows you want deleted. Here is an example of how to delete your records from the `egg_group` table if the pokemon is a `'fire'` type:

```sql
DELETE FROM egg_group
WHERE id IN
  (SELECT egg_id
   FROM pokemon
   WHERE type = 'fire'
  );
```

If we wanted to delete all the data in this table:

```sql
DELETE FROM egg_group;
```

---
## Practice

Consider the `egg_group` table. Fill in the gap to delete the first 5 values of it.

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

```sql
??? FROM egg_group
WHERE id ??? 1 and 5;
```

* DELETE
* between
* =
* UPDATE

---
## Revision

We want to delete the 15th element of the `egg_group` table:

| id  | name    |
|-----|---------|
| 1   | monster |
| 2   | water1  |
| 3   | bug     |
| ... | ...     |
| 14  | dragon  |
| 15  | no-eggs |


???

* DELETE FROM egg_group WHERE id= 15;
* UPDATE egg_group DELETE WHERE id=15;
* DELETE FROM egg_group;