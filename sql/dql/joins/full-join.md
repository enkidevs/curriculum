---
author: mihaiberq
type: normal
category: must-know
tags:
  - deep
  - workout
links:
  - >-
    [Full Outer
    Join](https://en.wikipedia.org/wiki/Join_(SQL)#Full_outer_join){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# FULL JOIN


---

## Content

The `FULL JOIN`, or `FULL OUTER JOIN`, is a type of join that combines the functionality of `RIGHT JOIN` and `LEFT JOIN`. 

In other words it returns matching rows as well as rows that are only in the left-hand table and rows that are only in the right-hand table.

If we are to fall back to the previous example of *moves* and *types*, the output won't be different:

```sql
SELECT move.id, move.name,
  type.id, type.name AS type_name
FROM move
FULL OUTER JOIN type ON
  move.type_id = type.id;
```

However, if our `type` table had the extra `'wood'` type and there was an extra `'coolest-move-ever'` in the `move` table, both values would get printed, on top of the other 640 rows:

| id   | name              | id   | type_name |
| ---- | ----------------- | ---- | --------- |
| 1    | pound             | 1    | normal    |
| ...  | ...               | ...  | ...       |
| 1234 | coolest-move-ever | NULL | NULL      |
| NULL | NULL              | 19   | wood      |

Here's what a FULL JOIN represents: 

![fulljoin](https://img.enkipro.com/3df8b481080842061546bbcecc23c7a6.png)


---

## Practice

Fill in the gaps such that the following snippet becomes a valid `FULL OUTER JOIN`:

```sql
??? *
FROM ???
??? berry_firmness ???
  berry.berry_firmness_id = berry_firmness.id
WHERE 
  berry_firmness.id = 2;
```

- `SELECT`
- `berry`
- `FULL OUTER JOIN`
- `ON`
- `*`


---

## Revision

The correct syntax for fully joining two tables is:

```sql
SELECT *
FROM pokemon_type
??? type ???
pokemon_type.type_id = type.id
```

- `FULL JOIN`
- `ON`
- `LEFT AND RIGHT JOIN`
- `OUTER JOIN`


---

## Quiz

### Can you select data from two related tables in SQL?


Given the tables called `location` and `location_area`:

```plain-text
id  | region_id |     name           
====|===========|===============
  1 |         4 | canalave-city
  2 |         4 | eterna-city
  3 |         4 | pastoria-city
(...)

id  | game_index | location_id |       name                      
====|============|=============|=====================
  1 |          1 |           1 | canalave-city-area
  2 |          2 |           2 | eterna-city-area
  3 |          3 |           3 | pastoria-city-area
  4 |          4 |           4 | sunyshore-city-area
(...)

```

Note that there are 6 regions, but not all locations belong to one of them. Get location id, game index and region id for all records. It doesn't matter whether there is no game index for a region or vice versa. The result should look like this:

```plain-text

id  | game_index | region_id
====|============|===========
  1 |          1 |         4
  2 |          2 |         4
  3 |          3 |         4
  (...)
  21|          21|          
  (...)
    |          56|         
  (...)
  89|            |         6
```

 ???

- SELECT location.id,location_area.game_index,location.region_id FROM location FULL OUTER JOIN location_area ON location.id = location_area.id;
- SELECT location.id,location_area.game_index,location.region_id FROM location INNER JOIN location_area ON location.id = location_area.id;
- SELECT location.id,location_area.game_index,location.region_id FROM location LEFT JOIN location_area ON location.id = location_area.id;
- SELECT location.id,location_area.game_index,location.region_id FROM location RIGHT JOIN location_area ON location.id = location_area.id;
