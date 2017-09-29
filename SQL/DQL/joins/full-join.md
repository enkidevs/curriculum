# FULL JOIN
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

inAlgoPool: false

category: must-know

links:
    - '[Full outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Full_outer_join)'

tags:
   - introduction
   - workout

---
## Content

The `FULL JOIN`, or `FULL OUTER JOIN`, is a type of join that combines the functionality of `RIGHT JOIN` and `LEFT JOIN`. In other words, it returns matching rows, rows that are only in the left-hand table and rows that are only in the right-hand table.

If we are to fall back to the previous example of *moves* and *types*, the output won't be different:
```SQL
SELECT move.id, move.name,
  type.id, type.name AS type_name
FROM move
FULL OUTER JOIN type ON
move.type_id = type.id;
```
However, if our **type** table had the extra `wood` type and there was an extra `coolest-move-ever` in the **move** table, both values would get printed, on top of the other 640 rows:
```
id  |        name       |   id   | type_name

1   |        pound      |   1    |  normal
...
1234| coolest-move-ever |  NULL  |   NULL
NULL|        NULL       |   19   |   wood
```

---
## Practice

Fill in the gaps such that the following snippet becomes a valid `FULL OUTER JOIN`:
```SQL
??? *
FROM ???
??? berry_firmness ???
berry.berry_firmness_id = berry_firmness.id
WHERE berry_firmness.id = 2???
```
* `SELECT`
* `berry`
* `FULL OUTER JOIN`
* `ON`
* `;`
* `*`

---
## Revision

The correct syntax for fully joining two tables is:
```SQL
SELECT *
FROM pokemon_type
??? type ???
pokemon_type.type_id = type.id
```

* `FULL JOIN`
* `ON`
* `LEFT AND RIGHT JOIN`
* `OUTER JOIN`
