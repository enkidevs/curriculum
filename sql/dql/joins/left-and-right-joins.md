---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.read-multiple-tables.0: 10

tags:

  - introduction

  - workout

links:

  - '[Left outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Left_outer_join){website}'
  - '[Right outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Right_outer_join){website}'

aspects:
  - introduction
  - workout


---

# LEFT And RIGHT JOINs

---
## Content

The `LEFT JOIN`, or `LEFT OUTER JOIN`, is a type of join whose result contains **all** rows in the first table, regardless of whether there's a match with the right-hand table. Conversely, the `RIGHT JOIN`, or `RIGHT OUTER JOIN`, returns all rows in the second table. The keyword here is *outer*, which means "preserve the whole table".

In case of a `LEFT JOIN`, if the joined field has no match in the second table, the right-hand table columns values are defaulted to `NULL`. The same rule applies for the `RIGHT JOIN`'s unmatched rows.

A `LEFT JOIN` is performed like this:
```sql
SELECT move.id, move.name,
  type.id, type.name AS type_name
FROM move
LEFT OUTER JOIN type ON
move.type_id = type.id;
```

Below, there's a visual representation of what the output of the command should contain:

![leftjoin](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20276%20202%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EGroup%204%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cg%20transform%3D%22translate%2843%201%29%22%20stroke-width%3D%222%22%20stroke%3D%22%23FFF%22%3E%3Ccircle%20cx%3D%2260.5%22%20cy%3D%2260.5%22%20r%3D%2260.5%22%20fill%3D%22currentColor%22%2F%3E%3Ccircle%20cx%3D%22130.5%22%20cy%3D%2260.5%22%20r%3D%2260.5%22%2F%3E%3C%2Fg%3E%3Cpath%20d%3D%22M138.5%2012.146C153.932%2023.109%20164%2041.129%20164%2061.5s-10.068%2038.39-25.5%2049.354C123.068%2099.891%20113%2081.871%20113%2061.5s10.068-38.39%2025.5-49.354z%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%2274%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%22131%22%20y%3D%2269%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%22190%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20fill%3D%22%23FFF%22%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2219%22%3E%3A%20move%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2275%22%3E%3A%20move.type_id%20%3D%20type.id%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2247%22%3E%3A%20type%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2222%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2278%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2250%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The first row of the 640 rows result:

| id | name  | id | type_name |
|----|-------|----|-----------|
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
|----|-------|----|-----------|
| 1  | pound | 1  | normal    |

Conversely, the `RIGHT JOIN` representation is this:

![rightjoin](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20276%20202%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EGroup%204%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cg%20transform%3D%22translate%2843%201%29%22%20stroke-width%3D%222%22%20stroke%3D%22%23FFF%22%3E%3Ccircle%20cx%3D%2260.5%22%20cy%3D%2260.5%22%20r%3D%2260.5%22%2F%3E%3Ccircle%20cx%3D%22130.5%22%20cy%3D%2260.5%22%20r%3D%2260.5%22%20fill%3D%22currentColor%22%2F%3E%3C%2Fg%3E%3Cpath%20d%3D%22M138.5%2012.146C153.932%2023.109%20164%2041.129%20164%2061.5s-10.068%2038.39-25.5%2049.354C123.068%2099.891%20113%2081.871%20113%2061.5s10.068-38.39%2025.5-49.354z%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%2274%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%22131%22%20y%3D%2269%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%22190%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20fill%3D%22%23FFF%22%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2219%22%3E%3A%20move%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2275%22%3E%3A%20move.type_id%20%3D%20type.id%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2247%22%3E%3A%20type%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2222%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2278%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2250%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)


There shouldn't be any difference between the two outputs as every Pokémon, `move`, `type` or `item` is already in the game and `NULL` entries would probably break everything. However, if there was a move without a type in the DB (for the left join) or a type for which there are no moves (for the right join), the output would look like this:

- Left Join

| id   | name              | id   | type_name |
|------|-------------------|------|-----------|
| 1234 | coolest-move-ever | NULL | NULL      |

- Right Join

| id   | name | id | type_name |
|------|------|----|-----------|
| NULL | NULL | 19 | wood      |

---
## Practice

The difference between inner join (IJ) and left outer join (LOJ) is that

???

* the LOJ result contains all rows in the first table
* the LOJ result contains all rows in the second table
* only their name differ
* tables intersection can only be found as part of IJ result

---
## Revision

Complete the following snippet such that the command is a valid `RIGHT JOIN`:
```sql
SELECT *
??? type
??? type_efficacy ???
type.id = type_efficacy.target_type_id;
```

* `FROM`
* `RIGHT JOIN`
* `ON`
* `LEFT JOIN`
* `WHERE`

---
## Quiz 
### LEFT OR RIGHT?

Given the tables called `location_area` and `location`:

```
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

```

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

* SELECT location.id,location_area.game_index,location.region_id FROM location LEFT JOIN location_area ON location.id = location_area.id;
* SELECT location.id,location_area.game_index,location.region_id FROM location FULL OUTER JOIN location_area ON location.id = location_area.id;
* SELECT location.id,location_area.game_index,location.region_id FROM location INNER JOIN location_area ON location.id = location_area.id;
* SELECT location.id,location_area.game_index,location.region_id FROM location RIGHT JOIN location_area ON location.id = location_area.id;
 
 
