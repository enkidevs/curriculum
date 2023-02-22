---
author: mihaiberq
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - '[Inner Join](https://en.wikipedia.org/wiki/Join_(SQL)#Inner_join){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# INNER JOIN


---

## Content

The `JOIN` clauses combine multiple columns from one or more **related tables**, creating a new set of data. 

Joins are a core part of SQL as their existence promotes data singularity.

Take, for example, Pokémon and their abilities[1]. Abilities should have a name and a description.

The English names of those abilities can be found in the `ability` table (inside the Pokémon DB):

| id | is_main_series | generation_id | name         |
| -- | -------------- | ------------- | ------------ |
| 1  | True           | 3             | stench       |
| 2  | True           | 3             | drizzle      |
| 3  | True           | 3             | speed-boost  |
| 4  | True           | 3             | battle-armor |

The short and long ability descriptions can be found inside the `ability_effect_text` table (in the same database):

| id | effect                                  | short_effect                            | ability_id | language_id |
| -- | --------------------------------------- | --------------------------------------- | ---------- | ----------- |
| 1  | This Pokémon's damaging moves have ...  | Has 10% chance of making target ...     | 1          | 9           |
| 2  | The weather changes to rain when ...    | Summons rain that lasts indefinitely... | 2          | 9           |
| 3  | This Pokémon's Speed rises one stage... | Raises Speed one stage after each turn. | 3          | 9           |
| 4  | Moves cannot score critical hits ...    | Protects against critical hits.         | 4          | 9           |

> 💡 Did you know you can scroll our tables to see all the columns?

What if we wanted to write a query that shows the `name` of an ability and its description? This is where `JOIN`s come in.

> 💡 `JOIN` and `INNER JOIN` are the same in SQL. When you write just `JOIN`, the `INNER` is implied.

To match records from both tables you need to find a column that has the same values **for both tables**.

In our case, we have the `id` column in the `ability` table and the `ability_id` column in the `ability_effect_text` table.

Knowing that, here is how you do an inner join:

```sql
SELECT ability.name,
  ability_effect_text.effect
FROM ability
JOIN ability_effect_text ON -- you don't need the word INNER before JOIN because it's implied
ability.id = ability_effect_text.ability_id;
```

And the result would be:

|     name     |                  effect                 |
| :----------: | :-------------------------------------: |
|    stench    |  This Pokémon's damaging moves have ... |
|    drizzle   |   The weather changes to rain when ...  |
|  speed-boost | This Pokémon's Speed rises one stage... |
| battle-armor |   Moves cannot score critical hits ...  |

Here's the operation depiction:

![inner](https://img.enkipro.com/95135d7d0e142beccf7aa4ca6924530d.png)

An *INNER JOIN* is a type of join that only returns rows for which the joined fields (`id` for `ability` and `ability_id` for `ability_effect_text`) are common. 

If there were some abilities without an effect text or some effects not describing an ability, they wouldn't be included in query result.

So, if the `ability` table has `251` records and the `ability_effect_text` has `191` records, the total number of returned rows after the inner join operation will be `191`. This is because there would be no matches for the extra `60` records in the `ability table`.  

> 💡 Inner join lets us combine data from two tables whenever there are matching values in a field common to both tables.

---

## Practice

Complete the `INNER JOIN` operation on the `item` and `item_effect_text` tables. The matching columns are `id` and `item_id` respectively.

```sql
??? 
  item.id, 
  item.name,
  item_effect_text.short_effect
??? item
??? ??? ???
  ??? = item_effect_text.item_id;
```

- `SELECT`
- `FROM`
- `INNER JOIN`
- `item_effect_text`
- `ON`
- `item.id`


---

## Revision

What's the sets theory equivalent of `INNER JOIN`?

???

- intersection
- union
- difference
- cartesian product


---

## Quiz

### Can you filter one table based on data in another table in SQL?


Consider `pokemon` and `pokemon_species` tables. The first one has two columns `height` and `weight`. The latter has a boolean valued column `is_baby`.
Select the query that will get the name, height and width of all pokemon that are babies:

 ???

- SELECT pokemon_species.name,pokemon.height,pokemon.weight FROM pokemon INNER JOIN pokemon_species ON pokemon.pokemon_species_id = pokemon_species.id WHERE pokemon_species.is_baby='t';
- SELECT pokemon.name,pokemon.height,pokemon.weight FROM pokemon LEFT JOIN pokemon_species ON pokemon.pokemon_species_id = pokemon_species.id WHERE pokemon_species.is_baby='t';
- SELECT pokemon.name,pokemon.height,pokemon.weight FROM pokemon RIGHT JOIN pokemon_species ON pokemon.pokemon_species_id = pokemon_species.id WHERE pokemon_species.is_baby='t';
- SELECT pokemon.name,pokemon.height,pokemon.weight FROM pokemon INNER JOIN pokemon_species ON pokemon.pokemon_species_id = pokemon_species.id WHERE pokemon_species.is_baby='f';


---

## Footnotes

[1: Ability]
A Pokémon's ability is an aura that is passively active and provides benefits to the Pokemon and, sometimes, its party.
