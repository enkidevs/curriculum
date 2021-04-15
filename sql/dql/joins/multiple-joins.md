---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Multiple JOINs


---

## Content

Sometimes, a single join might not be enough to get the desired result. 

In `many-to-many` relationships, when an intermediate table is used to avoid data duplication, such practice is common.

In the Pokémon database you can find multiple intermediate tables, usually named `table1_table2`.

For the `pokemon` and `type` tables, the intermediate one is named `pokemon_type`. Same goes for `pokemon`, `move` and `pokemon_move`.

These are some table entries which contain only the columns relevant to the query. 

For example, here is the `pokemon` table:

| id | name      |
| -- | --------- |
| 1  | bulbasaur |
| 2  | ivysaur   |
| 3  | venusaur  |

The `type` table:

| id  | name   |
| --- | ------ |
| 1   | normal |
| ... | ...    |
| 4   | poison |
| ... | ...    |
| 12  | grass  |

And here is the `pokemon_type` table:

| id | slot | pokemon_id | type_id |
| -- | ---- | ---------- | ------- |
| 1  | 1    | 1          | 12      |
| 2  | 2    | 1          | 4       |
| 3  | 1    | 2          | 12      |
| 4  | 2    | 2          | 4       |
| 5  | 1    | 3          | 12      |
| 6  | 2    | 3          | 4       |

The syntax is this:

```sql
SELECT 
  pokemon.name AS "pokemon", 
  type.name AS "type"
FROM pokemon_type
LEFT JOIN pokemon ON 
  pokemon_type.pokemon_id = pokemon.id
LEFT JOIN type ON
  pokemon_type.type_id = type.id;
```

This is effectively a join between the first two tables (`pokemon_type` and `pokemon`) and then a join between the resulting table and the `type` table.

These are the first four rows of output (out of 1225):

| pokemon   | type   |
| --------- | ------ |
| bulbasaur | grass  |
| bulbasaur | poison |
| ivysaur   | grass  |
| ivysaur   | poison |


---

## Practice

Complete the following multiple join:

```sql
???
  employees.name AS "employee"
  managers.name AS "manager"
  subsidiaries.name AS "location"
??? employees
??? managers ON
  employees.manager_id = managers.id
LEFT JOIN subsidiaries ???
  employees.subsidiary_id = subsidiaries.id
```

- SELECT
- FROM
- LEFT JOIN
- ON


---

## Revision

In order to join multiple tables together, subqueries must be used.

???

- False
- True


---

## Quiz

### Sometimes one is not enough?


Given the tables called `pokedex`, `version_group` and `pokedex_version_group`:

```plain-text

id | is_main_series | region_id |       name       
===|================|===========|================
 1 | t              |           | national
 2 | t              |         1 | kanto
 3 | t              |         2 | original-johto
 4 | t              |         3 | hoenn

(...)

id | order | generation_id |           name            
===|=======|===============|======================
 1 |     1 |             1 | red-blue
 2 |     2 |             1 | yellow
 3 |     3 |             2 | gold-silver
(...)

id | pokedex_id | version_group_id
===|============|==================
 1 |          2 |                1
 2 |          2 |                2
 3 |          2 |                7

```

Get the names of pokedexes and version_groups using `pokedex_version_group` table. Do not include records that don't have both, pokedex and version_group :

 ???

- SELECT pokedex.name, version_group.name FROM pokedex_version_group INNER JOIN pokedex ON pokedex_version_group.pokedex_id = pokedex.id INNER JOIN version_group ON pokedex_version_group.version_group_id = version_group.id;
- SELECT pokedex.name, version_group.name FROM pokedex_version_group RIGHT JOIN pokedex ON pokedex_version_group.pokedex_id = pokedex.id LEFT JOIN version_group ON pokedex_version_group.version_group_id = version_group.id;
- SELECT pokedex.name, version_group.name FROM pokedex_version_group FULL OUTER JOIN pokedex ON pokedex_version_group.pokedex_id = pokedex.id FULL OUTER JOIN version_group ON pokedex_version_group.version_group_id = version_group.id;
- SELECT pokedex.name, version_group.name FROM pokedex_version_group LEFT JOIN pokedex ON pokedex_version_group.pokedex_id = pokedex.id RIGHT JOIN version_group ON pokedex_version_group.version_group_id = version_group.id;
