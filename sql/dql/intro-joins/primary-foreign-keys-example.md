---
author: meridian

type: normal

category: must-know

tags: 
  - joins
  - keys
  - example

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone


---

# Keys Example

---

## Content

Consider the following two tables contained in the `pokedex` database.
Here is the `pokemon_types` table:

| type_id | type_name | effective_against      | weak_against        |
|---------|-----------|------------------------|---------------------|
| 1       | fire      | bug, grass, ice, steel | ground, rock, water |
| 2       | water     | fire, ground, rock     | electric, grass     |
| 3       | electric  | flying, water          | ground              |

Here is the `pokemon` table:

| pokemon_id | name       | type |
|------------|------------|------|
| 1          | charmeleon | 1    |
| 2          | squirtle   | 2    |
| 3          | blastoise  | 2    |

These two tables are related by the `type_id` column in the `types` table and the `type` column in the `pokemon` table. The `type` column represents the foreign key that points to the primary key (`type_id`) of the `pokemon_types` table. 

Note that this is a one-way relationship, where the foreign keys in one table can point to the same entry multiple times in another table[1].

![One way relationship](https://img.enkipro.com/813b53a0a79a702e8bed259c539c8b54.png)

> 💡 Here the foreign key points to the primary key of the related table and this is considered best practice. However, the foreign key can reference any *unique* identifier.

---

## Practice

The minimisation of repetition is an example of database ???.

- normalisation
- maximisation
- extortion
- updation

---

## Footnotes
[1:One-Way and Bilateral Relationships]
Tables can either have one-way or bilateral relationships. One-way relationships typically happen when multiple entries in the table with the foreign key can map to several entries in the other table (one-to-many). This means that trying to map in the other direction (i.e. many-to-one) would not make sense. Bilateral relationships can occur where both tables contain foreign keys referencing one another.
In bilateral relationships, there is typically a one-to-one mapping of entries. These generally present areas for potential *database optimization* as you are then storing duplicate info and would be better off just merging the two tables permanently.
