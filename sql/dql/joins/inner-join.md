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

The first 3 rows of the result would be:

| name      | effect                                                                              |
|-----------|-------------------------------------------------------------------------------------|
|  stench   | This Pokémon's damaging moves have a 10% to make the target flinch with each hit... |
| overworld | The wild encounter rate is halved while this Pokémon is in the party.               |
| drizzle   | The weather changes to when this Pokémon enters battle...                           |

Here's the operation depiction:

![inner](https://img.enkipro.com/95135d7d0e142beccf7aa4ca6924530d.png)

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
 
 
