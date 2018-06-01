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
tags: []
links:
  - '[More on DELETE](http://www.dofactory.com/sql/delete){website}'
aspects:
  - introduction
  - workout
---

# Delete clause


---

## Content

The `DELETE` clause enables users to delete data from a table. We can specify which rows to delete using the `WHERE` clause, otherwise all records will be deleted.

Consider the "egg_group" table:

```bash
--egg_group:
id |     name      
===+===============
 1 | monster
 2 | water1
 3 | bug
 4 | flying
 5 | ground
 6 | fairy
 7 | plant
 8 | humanshape
 9 | water3
10 | mineral
11 | indeterminate
12 | water2
13 | ditto
14 | dragon
15 | no-eggs
(15 rows)
```

Suppose we want to delete the first value of the table:

```sql
DELETE FROM egg_group
WHERE id = 1;
```

```bash
--Result:
id |     name      
===+===============
 2 | water1
 3 | bug
 4 | flying
 5 | ground
 6 | fairy
 7 | plant
 8 | humanshape
 9 | water3
10 | mineral
11 | indeterminate
12 | water2
13 | ditto
14 | dragon
15 | no-eggs
(14 rows)
```

If we wanted to delete all data in this table:

```bash
DELETE FROM egg_group;
```


---

## Practice

Consider the "egg_group" table. This time we want to delete the first 5 values:

```bash
--egg_group:
id |     name      
===+===============
 1 | monster
 2 | water1
 3 | bug
 4 | flying
 5 | ground
 6 | fairy
 7 | plant
 8 | humanshape
 9 | water3
10 | mineral
11 | indeterminate
12 | water2
13 | ditto
14 | dragon
15 | no-eggs
(15 rows)
```

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

We want to delete the 15th element of "egg_group" table:

```bash
--egg_group:
id |     name      
===+===============
 1 | monster
 2 | water1
 3 | bug
 4 | flying
 5 | ground
 6 | fairy
 7 | plant
 8 | humanshape
 9 | water3
10 | mineral
11 | indeterminate
12 | water2
13 | ditto
14 | dragon
15 | no-eggs
(15 rows)
```

???

* DELETE FROM egg_group WHERE id= 15;
* UPDATE egg_group DELETE WHERE id=15;
* DELETE FROM egg_group;

