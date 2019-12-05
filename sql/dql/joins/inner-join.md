---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.read-multiple-tables.0: 10

tags:

  - introduction

  - workout

links:

  - '[Inner join](https://en.wikipedia.org/wiki/Join_(SQL)#Inner_join){website}'

parent: avg-clause

aspects:
  - introduction
  - workout


---

# INNER JOIN

---
## Content

The `JOIN` clauses combine multiple columns from one or more **related tables**, creating a new set of data. Joins are a core part of SQL as their existence promotes data singularity.

Take, for example, Pokémons and their abilities[1]. Abilities should have a name and a description. The English names of those abilities can be found in the `ability` table inside the Pokemon DB and their short and long descriptions inside `ability_effect_text`.

For reference, here are some table entries for the `ability` table:

| id | is_main_series | generation_id | name         |
|----|----------------|---------------|--------------|
| 1  | True           | 3             | stench       |
| 2  | True           | 3             | drizzle      |
| 3  | True           | 3             | speed-boost  |
| 4  | True           | 3             | battle-armor |

And for the `ability_effect_text`:

| id | effect                                  | short_effect                            | ability_id | language_id |
|----|-----------------------------------------|-----------------------------------------|------------|-------------|
| 1  | This Pokémon's damaging moves have ...  | Has 10% chance of making target ...     | 1          | 9           |
| 2  | The weather changes to rain when ...    | Summons rain that lasts indefinitely... | 2          | 9           |
| 3  | This Pokémon's Speed rises one stage... | Raises Speed one stage after each turn. | 3          | 9           |
| 4  | Moves cannot score critical hits ...    | Protects against critical hits.         | 4          | 9           |

To match the abilities that can be found in both tables, use the following `INNER JOIN` command:
```sql
SELECT ability.name,
  ability_effect_text.effect
FROM ability
INNER JOIN ability_effect_text ON
ability.id = ability_effect_text.ability_id;
```

The first 2 rows of the result would be:

| name      | effect                                                                              |
|-----------|-------------------------------------------------------------------------------------|
|  stench   | This Pokémon's damaging moves have a 10% to make the target flinch with each hit... |
| overworld | The wild encounter rate is halved while this Pokémon is in the party.               |
| drizzle   | The weather changes to when this Pokémon enters battle...                           |

Here's the operation depiction:

![inner](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20276%20202%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EGroup%204%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cg%20transform%3D%22translate%2843%201%29%22%20stroke-width%3D%222%22%20stroke%3D%22%23FFF%22%3E%3Ccircle%20cx%3D%2260.5%22%20cy%3D%2260.5%22%20r%3D%2260.5%22%2F%3E%3Ccircle%20cx%3D%22130.5%22%20cy%3D%2260.5%22%20r%3D%2260.5%22%2F%3E%3C%2Fg%3E%3Cpath%20d%3D%22M138.5%2012.146C153.932%2023.109%20164%2041.129%20164%2061.5s-10.068%2038.39-25.5%2049.354C123.068%2099.891%20113%2081.871%20113%2061.5s10.068-38.39%2025.5-49.354z%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%20fill%3D%22%23currentColor%22%2F%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%2274%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%22131%22%20y%3D%2269%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20fill%3D%22%23FFF%22%20transform%3D%22translate%280%201%29%22%3E%3Ctspan%20x%3D%22190%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20fill%3D%22%23FFF%22%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2219%22%3E%3A%20ability%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2275%22%3E%3A%20ability.id%20%3D%20ability_effect_text.ability_id%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Light%2C%20Roboto%22%20font-size%3D%2215.5%22%20font-weight%3D%22300%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2247%22%3E%3A%20ability_effect_text%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2222%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2278%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2224%22%20transform%3D%22translate%280%20123%29%22%3E%3Ctspan%20x%3D%220%22%20y%3D%2250%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

An *INNER JOIN* is a type of join that only returns rows for which the joined field (`id` for `ability` and `ability_id` for `ability_effect_text`) are common: if there were some abilities without an effect text or some effects not describing an ability, they wouldn't be included in query result.

There were a total of `191` rows returned by the query versus `251` abilities and `191` text effects. 

---
## Practice

Fill in the blanks such that the following snippet contains a valid JOIN operation:
```sql
??? item.id, item.name,
  item_effect_text.short_effect,
  item_effect_text.item_id
??? item
??? ??? ???
??? = item_effect_text.item_id;
```

* `SELECT`
* `FROM`
* `INNER JOIN`
* `item_effect_text`
* `ON`
* `item.id`

---
## Revision

What's the sets theory equivalent of `INNER JOIN`?

???

* intersection
* union
* difference
* cartesian product

---
## Quiz 
### Can you filter one table based on data in another table in SQL?

Consider `pokemon` and `pokemon_species` tables. The first one has two columns `height` and `weight`. The latter has a boolean valued column `is_baby`.
Select the query that will get the name, height and width of all pokemon that are babies:

 ???

* SELECT pokemon_species.name,pokemon.height,pokemon.weight FROM pokemon INNER JOIN pokemon_species ON pokemon.pokemon_species_id = pokemon_species.id WHERE pokemon_species.is_baby='t';
* SELECT pokemon.name,pokemon.height,pokemon.weight FROM pokemon LEFT JOIN pokemon_species ON pokemon.pokemon_species_id = pokemon_species.id WHERE pokemon_species.is_baby='t';
* SELECT pokemon.name,pokemon.height,pokemon.weight FROM pokemon RIGHT JOIN pokemon_species ON pokemon.pokemon_species_id = pokemon_species.id WHERE pokemon_species.is_baby='t';
* SELECT pokemon.name,pokemon.height,pokemon.weight FROM pokemon INNER JOIN pokemon_species ON pokemon.pokemon_species_id = pokemon_species.id WHERE pokemon_species.is_baby='f';

---
## Footnotes
[1: Ability]
A Pokémon's ability is an aura that is passively active and provides benefits to the Pokemon and, sometimes, its party.
 
 
