---
author: meridian
type: normal
category: must-know
tags:
  - introduction
  - joins
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# The Role That Joins Play

---

## Content

When querying a database with multiple tables, it may be necessary to retrieve information from a number of different tables.
This is to say, we'd like to combine the columns of some tables based on their relationship.

Say we want to fetch a list of pokemon and their types, in the `pokedex` database however, there is no single table with both the name and the type information. Instead we have the `health` and `attack` tables. In order to create a list with the desired information, we would have to **join** the tables in some way. **SQL** provides a way for us to do this, by using a joining condition between the two tables. For these two tables, the relation is in the `id` columns.

`health`

| id | name       | health |
|----|------------|--------|
| 1  | venusaur   | 53     |
| 2  | charmeleon | 41     |
| 3  | pikachu    | 50     |
| 4  | squirtle   | 39     |
| 5  | magikarp   | 25     |

`attack`

| id | type1    | type2  | base_attack |
|----|----------|--------|-------------|
| 1  | grass    | poison | 25          |
| 2  | fire     | NULL   | 16          |
| 3  | electric | NULL   | 22          |
| 4  | water    | NULL   | 17          |
| 5  | water    | NULL   | 12          |

In order to return the `name` and `type1` value of each pokemon, we need to use the `JOIN` keyword. The syntax will be explored in further workouts, but below is the correct query

```sql
SELECT 
  health.name,
  attack.type1
FROM health JOIN attack
  ON health.id = attack.id
```
Notice that the query makes references to both tables and then also states the **joining condition**[1] (`health.id = attack.id`). 
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

In order to perform a `JOIN` on two tables, the tables must be ???.

- related
- unrelated
- unstructured

---

## Revision

Fill in the following query in order to have it join `table1` and `table2` on the condition `table1.id_no = table2.id_no`

```sql
SELECT *
FROM table1 
??? table2
  ??? table1.id_no = table2.id_no;
```

- JOIN
- ON
- MERGE
- REMAKE
- INTO
- WITH

---

## Footnotes
[1:Joining Conditions]
A joining condition between two tables is the primary key of one table and the associated foreign key in the other table.
