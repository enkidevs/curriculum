# Multiple JOINs
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

inAlgoPool: false

category: must-know

tags:
   - introduction
   - workout

---
## Content

Sometimes, a single join might not be enough to get the desired result. In `many-to-many` relationships, when an intermediate table is used to avoid data duplication, such practice is common.

In the Pokémon database you can find multiple intermediate tables, usually named `table1_table2`: for the `pokemon` and `type` tables, the intermediate one is named `pokemon_type`. Same goes for `pokemon`, `move` and `pokemon_move`.

A single JOIN is simple to achieve: take a table, use the magic word (`type JOIN`), specify the second table and choose a joining field. However, you can also join multiple tables together.  

The syntax is this:
```SQL
SELECT pokemon.name, type.name
FROM pokemon_type
LEFT JOIN pokemon
ON pokemon_type.pokemon_id = pokemon.id
LEFT JOIN type
ON pokemon_type.type_id = type.id;
```
This is effectively join the first two tables (*pokemon_type* and *pokemon*) and then join the resulting table with the *type* table.

These are the first two rows of output (out of 1225):
```
name        | name   
---------------------
bulbasaur   | grass
bulbasaur   | poison
```
The same result can be achieved by using subqueries.

---
## Practice

What should the following query return?
```SQL
SELECT pokemon.name, LJoinRes.level,
  LJoinRes.name, LJoinRes.version_group_id
FROM pokemon
RIGHT OUTER JOIN (SELECT *
FROM pokemon_move
LEFT JOIN move ON
pokemon_move.move_id = move.id) AS LJoinRes
ON pokemon.id = LJoinRes.pokemon_id
ORDER BY pokemon.id,
  LJoinRes.version_group_id, LJoinRes.level;
```
???

* A list of moves each Pokémon learns, sorted by game version and level.
* A list of Pokémons and their evolution, sorted by game version and level.
* A list of moves and their types, sorted by game version.
* A list of levels each Pokémon learns the same move, sorted by game version and level.

---
## Revision

Is the following statement true or false?

In order to join multiple tables together, subqueries must be used.

???
* false
* true
