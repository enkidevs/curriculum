# INNER JOIN
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

inAlgoPool: false

category: must-know

links:
  - '[Inner join](https://en.wikipedia.org/wiki/Join_(SQL)#Inner_join)'

tags:
   - introduction
   - workout

---
## Content

The `JOIN` clauses combine multiple columns from one or more **related tables**, creating a new set of data. Joins are a core part of SQL as their existence promotes data singularity.

Take, for example, Pokémons and their abilities[1]. Abilities should have a name and a description. The English names of those abilities can be found in the `ability` table inside the Pokemon DB and their short and long descriptions inside `ability_effect_text`.

To match the abilities that can be found in both tables, use the following `INNER JOIN` command:
```SQL
SELECT ability.name, ability.generation_id,
  ability_effect_text.effect
FROM ability
INNER JOIN ability_effect_text ON
ability.id = ability_effect_text.ability_id;
```
The first 2 rows of the result would be:
```
name   |   generation_id   |   effect
-----------------------------------------
stench | 3 | This Pokémon's damaging moves
  have a 10% to make the target flinch with
  each hit...
             Overworld: The wild encounter
  rate is halved while this Pokémon is first
  in the party.
drizzle| 3 | The weather changes to rain
  when this Pokémon enters battle...
```

An *INNER JOIN* is a type of join that only returns rows for which the joined field (`id` for `ability` and `ability_id` for `ability_effect_text`) are common: if there were some abilities without an effect text or some effects not describing an ability, they wouldn't be included in query result.

There were a total of `191` rows returned by the query versus `251` abilities and `191` text effects.

---
## Footnotes

[1: Ability]
A Pokémon's ability is an aura that is passively active and provides benefits to the Pokemon and, sometimes, its party.

---
## Practice

What's the sets theory equivalent of `INNER JOIN`?

???

* intersection
* union
* difference
* cartesian product

---
## Revision

Fill in the blanks such that the following snippet contains a valid JOIN operations:
```SQL

// TODO

```

*
