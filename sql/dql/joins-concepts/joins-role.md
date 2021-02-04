---
author: meridian

type: normal

category: must-know

tags:
  - introduction
  - joins
---

# The Role that Joins Play

---

## Content

When querying a database with multiple tables, it may be necessary to retrieve information from a number of different tables.
This is to say, we'd like to combine the columns of some tables based on their relationship.

In the pokemon database, this might involve matching entries in the `health` and `attack` tables based on the `id` column.
**SQL** provides a way for us to do this. Consider the same two tables from the pokemon database.

| id | name       | health |
|----|------------|--------|
| 1  | venusaur   | 53     |
| 2  | charmeleon | 41     |
| 3  | pikachu    | 50     |
| 4  | squirtle   | 39     |
| 5  | magikarp   | 25     |

| id | type1    | type2  | base-attack |
|----|----------|--------|-------------|
| 1  | grass    | poison | 25          |
| 2  | fire     | NULL   | 16          |
| 3  | electric | NULL   | 22          |
| 4  | water    | NULL   | 17          |
| 5  | water    | NULL   | 12          |

In order to return the name and type1 value of each pokemon, we need to use the `JOIN` keyword. The syntax will be explored in further 
further workouts, but below is the correct query

```sql
SELECT 
  health.name,
  attack.type1
FROM health JOIN attack
  ON health.id = attack.id
```
Notice that the query makes references to both tables and then also states the **joining condition** (`health.id = attack.id`) [1]. 
This query returns the following:

| name       | type1    |
|------------|----------|
| venusaur   | grass    |
| charmeleon | fire     |
| pikachu    | electric |
| squirtle   | water    |
| magikarp   | water    |

> 💡 There are a number of different types of joins, with different implementations and different results. These are covered in the next few workouts.

---

## Practice

In order to perform a `JOIN` on two tables the tables must be ???.

- related
- unrelated
- unstructured

---

## Revision

The keywords ??? must be used in order to perform a join

- JOIN and ON
- MELT and INTO
- REMAKE and WITH

---

## Footnotes
[1 : Joining Conditions]
A joining condition between two tables is the primary key of one table and the associated foreign key in the other table.

