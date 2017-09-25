# LEFT And RIGHT JOINs
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

inAlgoPool: false

category: must-know

links:
  - '[Left outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Left_outer_join)'
  - '[Right outer join](https://en.wikipedia.org/wiki/Join_(SQL)#Right_outer_join)'

tags:
   - introduction
   - workout


---
## Content

The `LEFT JOIN`, or `LEFT OUTER JOIN`, is a type of join whose result contains **all** rows in the first table, regardless of whether there's a match with the right-hand table. Conversely, the `RIGHT JOIN`, or `RIGHT OUTER JOIN`, returns all rows in the second table. The keyword here is *outer*, which means "preserve the whole table".

In case of a `LEFT JOIN`, if the joined field has no match in the second table, the right-hand table columns values are defaulted to `NULL`. The same rule applies for the `RIGHT JOIN`'s unmatched rows.

A `LEFT JOIN` is performed like this:
```SQL
SELECT move.id, move.name,
  type.id, type.name AS type_name
FROM move
LEFT OUTER JOIN type ON
move.type_id = type.id;
```
And the first row of the 640 rows result:
```
id | name  | id | type_name   

1  | pound | 1  | normal
```
The equivalent `RIGHT OUTER JOIN`:
```SQL
SELECT move.id, move.name,
  type.id, type.name AS type_name
FROM move
RIGHT OUTER JOIN type ON
move.type_id = type.id;
```
Yields the same first row (of 640 rows):
```
id | name  | id | type_name   

1  | pound | 1  | normal
```
There shouldn't be any difference between the two outputs as every Pokémon, move, type or item is already in the game and `NULL` entries would probably break everything. However, if there was a move without a type in the DB (for the left join) or a type for which there are no moves (for the right join), the output would look like this:
```
# Left Join
id  | name              | id | type_name

1234| coolest-move-ever | NULL  | NULL

# Right Join
id    | name | id  | type_name   

NULL  | NULL | 19  | wood
```

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
```SQL
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
