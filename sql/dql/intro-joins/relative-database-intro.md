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
  context: standalone
---

# Relational Databases

---

## Content

You are now familiar with querying individual tables.

Real databases are often comprised of more than one table. 

Relational databases consist of tables and entries that connected to one another in some way. We call this connection a *relationship*.

Consider the `pokedex` database, it contains two tables: `pokemon_health` and `pokemon_attack`.

| id | name       | health |
|----|------------|--------|
| 1  | Venusaur   | 42     |
| 2  | Charmander | 35     |

| id | type   | base-attack |
|----|--------|-------------|
| 1  | poison | 21          |
| 2  | fire   | 15          |

Inspecting them, we can easily see that the `id` column is shared.

More importantly, these two tables **map**, or are related, to one another. 

So the `attack` and type data for Venusaur (`id` = 1) is contained in the `pokemon_attack` table, while data for the `name` and the `health` is contained in the `pokemon_health` table[1].

![Health and Attack Tables Graphic](https://img.enkipro.com/2d381a48dbcfcb92827e8fca3b95c450.png)

The **relation** between these two tables is the `id` column and can be used to join them.

> 💡 Note that these two tables do **not** represent best-practices for database design, the reasons for this are covered in the [**Defining Data**](https://app.enkipro.com/course/ddl) topic.

---

## Practice

Relational databases usually contain ??? of ???.

- multiple tables
- related data
- spreadsheets
- unrelated data

---

## Revision

Consider the following two tables:

the `country_count` table:
| id_no | code | total_count | dates               |
|-------|------|-------------|---------------------|
| 1     | GBR  | 706         | 2020-03-14 13:55:22 |
| 2     | ZAF  | 696         | 2020-06-24 00:46:56 |
| 3     | JEY  | 463         | 2020-04-20 19:43:19 |
| 4     | ECU  | 385         | 2020-02-16 03:50:44 |
| 5     | ISR  | 466         | 2020-07-31 07:16:56 |

and the `country_alt` table:
| countr_code | altitude | names      |
|-------------|----------|------------|
| ZAF         | 4663     | C. Semenya |
| ISR         | 396      | G. Fridman |
| JEY         | 1251     | M. Abe     |
| GBR         | 1337     | C. Hoy     |
| ECU         | 2544     | J. Perez   |


???, in `country_count`, and ???, in `country_alt`, contain the relation between these two tables.

- code
- country_code
- total_count
- names
- id_no

---

## Footnotes
[1:Multiple Tables]
These tables can then also be related to other tables in other ways, for example 
the `attack` table could be linked to a `types` table containing data for each type.
