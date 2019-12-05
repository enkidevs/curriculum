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

  - deep

  - workout


links:

  - '[Full outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Full_outer_join){website}'


aspects:
  - deep
  - workout


---

# FULL JOIN

---
## Content

The `FULL JOIN`, or `FULL OUTER JOIN`, is a type of join that combines the functionality of `RIGHT JOIN` and `LEFT JOIN`. In other words, it returns matching rows, rows that are only in the left-hand table and rows that are only in the right-hand table.

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
|------|-------------------|------|-----------|
| 1    | pound             | 1    | normal    |
| ...  | ...               | ...  | ...       |
| 1234 | coolest-move-ever | NULL | NULL      |
| NULL | NULL              | 19   | wood      |

Here's what a FULL JOIN represents: 

![fulljoin](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20276%20202%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EGroup%204%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cg%20transform%3D%22translate%2843%201%29%22%20stroke-width%3D%222%22%20stroke%3D%22%23FFF%22%20fill%3D%22currentColor%22%3E%3Ccircle%20cx%3D%2260.5%22%20cy%3D%2260.5%22%20r%3D%2260.5%22%2F%3E%3Ccircle%20cx%3D%22130.5%22%20cy%3D%2260.5%22%20r%3D%2260.5%22%2F%3E%3C%2Fg%3E%3Cpath%20d%3D%22M138.5%2012.146C153.932%2023.109%20164%2041.129%20164%2061.5s-10.068%2038.39-25.5%2049.354C123.068%2099.891%20113%2081.871%20113%2061.5s10.068-38.39%2025.5-49.354z%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%20%2F%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%2274%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%22131%22%20y%3D%2269%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%22190%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20fill%3D%22%23FFF%22%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2219%22%3E%3A%20move%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2275%22%3E%3A%20move.type_id%20%3D%20type.id%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2247%22%3E%3A%20type%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2222%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2278%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2250%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

---
## Practice

Fill in the gaps such that the following snippet becomes a valid `FULL OUTER JOIN`:
```sql
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
```sql
SELECT *
FROM pokemon_type
??? type ???
pokemon_type.type_id = type.id
```


* `FULL JOIN`
* `ON`
* `LEFT AND RIGHT JOIN`
* `OUTER JOIN`

---
## Quiz 
### Can you select data from two related tables in SQL?

Given the tables called `location` and `location_area`:

```
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

```

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

* SELECT location.id,location_area.game_index,location.region_id FROM location FULL OUTER JOIN location_area ON location.id = location_area.id;
* SELECT location.id,location_area.game_index,location.region_id FROM location INNER JOIN location_area ON location.id = location_area.id;
* SELECT location.id,location_area.game_index,location.region_id FROM location LEFT JOIN location_area ON location.id = location_area.id;
* SELECT location.id,location_area.game_index,location.region_id FROM location RIGHT JOIN location_area ON location.id = location_area.id;
 
 
