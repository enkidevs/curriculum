# Multiple JOINs
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

type: normal

inAlgoPool: false

category: must-know

standards:
  sql.read-multiple-tables: 10

tags:
   - workout
   - deep

---
## Content

Sometimes, a single join might not be enough to get the desired result. In `many-to-many` relationships, when an intermediate table is used to avoid data duplication, such practice is common.

In the Pokémon database you can find multiple intermediate tables, usually named `table1_table2`: for the `pokemon` and `type` tables, the intermediate one is named `pokemon_type`. Same goes for `pokemon`, `move` and `pokemon_move`.

These are some table entries which contain only the columns relevant to the query. The `pokemon` table:
```
id   |   name
=====+============
1    |  bulbasaur
2    |  ivysaur
3    |  venusaur
```
The `pokemon_type` table:
```
id   |  slot  | pokemon_id | type_id
=====+========+============+===========
1    |   1    |      1     |     12
2    |   2    |      1     |     4
3    |   1    |      2     |     12
4    |   2    |      2     |     4
5    |   1    |      3     |     12
6    |   2    |      3     |     4
```
And the `type` table:
```
id   |  name
=====+=========
1    |  normal
...
4    |  poison
...
12   |  grass
```
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

These are the first four rows of output (out of 1225):
```
name        | name
============+==========
bulbasaur   | grass
bulbasaur   | poison
ivysaur     | grass
ivysaur     | poison
```
The same result can be achieved by using subqueries.

---
## Practice

Obtain the list of moves a Pokémon learns ordered by game version and level at which it learns the move:
```SQL
SELECT pokemon.name,
  poke_move_level.level,
  poke_move_level.name,
  poke_move_level.version_group_id
??? pokemon
??? (SELECT *
FROM pokemon_move
LEFT JOIN move ???
pokemon_move.move_id = move.id)
??? poke_move_level
ON pokemon.id =
  poke_move_level.pokemon_id
ORDER BY pokemon.id,
  LJoinRes.version_group_id,
  LJoinRes.level;
```

* `FROM`
* `RIGHT OUTER JOIN`
* `ON`
* `AS`
* `pokemon`
* `OUTER JOIN`
* `SELECT`
* `ORDER BY`

---
## Revision

Is the following statement true or false?

In order to join multiple tables together, subqueries must be used.

???
* false
* true

---
## Quiz

headline: Sometimes one is not enough?

question: |

  Given the tables called `pokedex`, `version_group` and `pokedex_version_group`:

  id | is_main_series | region_id |       name       
  ---|----------------|-----------|------------------
   1 | t              |           | national
   2 | t              |         1 | kanto
   3 | t              |         2 | original-johto
   4 | t              |         3 | hoenn

  (...)

  id | order | generation_id |           name            
  ---|-------|---------------|---------------------------
   1 |     1 |             1 | red-blue
   2 |     2 |             1 | yellow
   3 |     3 |             2 | gold-silver
  (...)

  id | pokedex_id | version_group_id
  ---|------------|------------------
   1 |          2 |                1
   2 |          2 |                2
   3 |          2 |                7

  Get the names of pokedexes and version_groups using `pokedex_version_group` table. Do not include records that don't have both, pokedex and version_group :

answers:  
  - SELECT pokedex.name, version_group.name
    FROM pokedex_version_group
    INNER JOIN pokedex ON pokedex_version_group.pokedex_id = pokedex.id
    INNER JOIN version_group ON pokedex_version_group.version_group_id = version_group.id;

  - SELECT pokedex.name, version_group.name
    FROM pokedex_version_group
    RIGHT JOIN pokedex ON pokedex_version_group.pokedex_id = pokedex.id
    LEFT JOIN version_group ON pokedex_version_group.version_group_id = version_group.id;

  - SELECT pokedex.name, version_group.name
    FROM pokedex_version_group
    FULL OUTER JOIN pokedex ON pokedex_version_group.pokedex_id = pokedex.id
    FULL OUTER JOIN version_group ON pokedex_version_group.version_group_id = version_group.id;

  - SELECT pokedex.name, version_group.name
    FROM pokedex_version_group
    LEFT JOIN pokedex ON pokedex_version_group.pokedex_id = pokedex.id
    RIGHT JOIN version_group ON pokedex_version_group.version_group_id = version_group.id;
