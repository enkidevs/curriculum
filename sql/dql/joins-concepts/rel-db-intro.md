```markdown
---
author: meridian

type: normal

category: must-know

tags:
  - introduction
  - joins
---

# Relational Databases

---

## Content

You are now familiar with querying individual tables.

Real databases are often comprised of more than one table. 

**Relational databases** consist of tables that can be interconnected by predefined relationships.

Consider the pokemon database, it contains two tables: the `health` and `attack` tables.

| id | name       | health |
|----|------------|--------|
| 1  | Venusaur   | 42     |
| 2  | Charmander | 35     |

| id | type1  | type2 | base-attack |
|----|--------|-------|-------------|
| 1  | poison | grass | 21          |
| 2  | fire   | NULL  | 15          |

Inspecting these two tables, it is easy to see that the `id` column is shared.

More importantly, these two tables **map**, or are related, to one another. 

So the attack data for Venusaur (`id` = 1) is contained in the `attack` table,
while data for the name and the health is contained in the `health` table.

![Health and Attack Tables Graphic](https://img.enkipro.com/2d381a48dbcfcb92827e8fca3b95c450.png)

The **relation** between these two tables is the `id` column and can be 
used to join them.

---

## Practice

Relational databases contain ??? of ???.
- multiple tables
- related data
- spreadsheets
- unrelated data

---

## Revision

Relational databases are used to store ???. 

- structured data
- unstructured data
- chaotic data

---

## Footnotes
[1: Multiple Tables]
These tables can then also be related to other tables in other ways, for example 
the `attack` table could be linked to a `types` table containing data for each type.
```