---
author: mihaiberq
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - >-
    [Left Outer
    Join](https://en.wikipedia.org/wiki/Join_(SQL)#Left_outer_join){website}
  - >-
    [Right Outer
    Join](https://en.wikipedia.org/wiki/Join_(SQL)#Right_outer_join){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# LEFT & RIGHT JOINs


---

## Content

The `LEFT JOIN` (or `LEFT OUTER JOIN`) is a type of join whose result contains **all** rows in the first table, regardless of whether there's a match with the right-hand table. 

Conversely, the `RIGHT JOIN`, or `RIGHT OUTER JOIN`, returns all rows in the second table. The keyword here is *outer*, which means "preserve the whole table".

In case of a `LEFT JOIN`, if the joined field has no match in the second table, the right-hand table columns values are defaulted to `NULL`. The same rule applies for the `RIGHT JOIN`'s unmatched rows.

A `LEFT JOIN` is performed like this:

```sql
SELECT move.id, move.name,
  type.id, type.name AS type_name
FROM move
LEFT OUTER JOIN type ON
  move.type_id = type.id;
```

Here's a visual representation of what the output of the command should contain:

![leftjoin](https://img.enkipro.com/5b60f08870343c3d3cbe964ad8965f1a.png)

The first row of the 640 rows result:

| id | name  | id | type_name |
| -- | ----- | -- | --------- |
| 1  | pound | 1  | normal    |

The equivalent `RIGHT OUTER JOIN`:

```sql
SELECT move.id, move.name,
  type.id, type.name AS type_name
FROM move
RIGHT OUTER JOIN type ON
  move.type_id = type.id;
```

Yields the same first row (of 640 rows):

| id | name  | id | type_name |
| -- | ----- | -- | --------- |
| 1  | pound | 1  | normal    |

Conversely, the `RIGHT JOIN` representation is this:

![rightjoin](https://img.enkipro.com/dea0853d43b0db0d99d8c7b7967a0ceb.png)

There shouldn't be any difference between the two outputs as every Pokémon, `move`, `type` or `item` is already in the game and `NULL` entries would probably break everything. 

However, if there was a move without a type in the DB (for the left join) or a type for which there are no moves (for the right join), the output would look like this:

- Left Join

| id   | name              | id   | type_name |
| ---- | ----------------- | ---- | --------- |
| 1234 | coolest-move-ever | NULL | NULL      |

- Right Join

| id   | name | id | type_name |
| ---- | ---- | -- | --------- |
| NULL | NULL | 19 | wood      |


---

## Practice

The difference between inner join (IJ) and left outer join (LOJ) is that

???

- the LOJ result contains all rows in the first table
- the LOJ result contains all rows in the second table
- only their name differ
- tables intersection can only be found as part of IJ result


---

## Revision

Complete the following snippet such that the command is a valid `RIGHT JOIN`:

```sql
SELECT *
??? type
??? type_efficacy ???
type.id = type_efficacy.target_type_id;
```

- `FROM`
- `RIGHT JOIN`
- `ON`
- `LEFT JOIN`
- `WHERE`


---

## Quiz

### LEFT OR RIGHT?


Given the tables called `location_area` and `location`:

```plain-text
id  | game_index | location_id |       name                      
====|============|=============|=====================
  1 |          1 |           1 | canalave-city-area
  2 |          2 |           2 | eterna-city-area
  3 |          3 |           3 | pastoria-city-area
  4 |          4 |           4 | sunyshore-city-area
(...)

id  | region_id |     name           
====|===========|===============
  1 |         4 | canalave-city
  2 |         4 | eterna-city
  3 |         4 | pastoria-city
(...)
```

Note that there are 6 regions, but not all locations belong to one of them. Get game_index's region, `NULL` if there is none. The result should look like this:

```plain-text

id  | game_index | region_id
====|============|===========
  1 |          1 |         4
  2 |          2 |         4
  3 |          3 |         4
  (...)
  21|          21|          
  44|          44|
```

 ???

- SELECT location.id,location_area.game_index,location.region_id FROM location LEFT JOIN location_area ON location.id = location_area.id;
- SELECT location.id,location_area.game_index,location.region_id FROM location FULL OUTER JOIN location_area ON location.id = location_area.id;
- SELECT location.id,location_area.game_index,location.region_id FROM location INNER JOIN location_area ON location.id = location_area.id;
- SELECT location.id,location_area.game_index,location.region_id FROM location RIGHT JOIN location_area ON location.id = location_area.id;
