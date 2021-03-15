---
author: meridian

type: normal

category: must-know

links: 
  - >-
    [Difference between Primary and Foreign 
    Keys]
    (https://www.dotnettricks.com/learn/sqlserver/difference-between-primary-key-and-foreign-key){article}

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

# Primary and Foreign Keys

---

## Content

Relational databases are based on the *Relational Model*, this is also where they get their name[1]. The concept of a **relation** can be seen from multiple points of view:
- a table is a **relation** between all of the rows in the table, each row is a different *instance* of the same set of values
- multiple tables in a database can also be linked by common information, they are **related** to one another.

Each table in a database has a primary key, which is a column in that table with unique entries for every row. This uniqueness means that you can search for rows in a table reliably with the primary key. Inter-table relationships are contained within each table in the form of **foreign keys**. Foreign keys generally point to the primary keys of the table that they relate to, which is why primary keys have to be unique.

> 💡 It is not strictly necessary for a table to have a clearly defined primary key, a primary key is required when you want to specify how that table is related to other tables in the database.

For more information on the difference between foreign and primary keys, see the *Learn More* section.

--- 

## Practice

The ??? key of one table points to the ??? entries in another table. 

- foreign
- related
- primary
- miscellaneous

---

## Revision

Consider the following two tables

`pokemon`
| pokemon_id | name       | pokemon_type |
|------------|------------|--------------|
| 1          | charmeleon | fire         |
| 2          | squirtle   | water        |
| 3          | blastoise  | water        |
| 4          | bulbasaur  | grass        |

`types`
| type     | strong_against      | weak_to         |
|----------|---------------------|-----------------|
| electric | flying, water       | grass, electric |
| grass    | water, ground, rock | fire, grass     |
| fire     | grass, ice          | water, fire     |
| water    | fire, ground, rock  | water, grass    |

The ??? column is the ??? that points to the primary key of the `types` table (the ??? column).

- pokemon_type
- foreign key
- type
- strong_against
- name
- miscellaneous

---

## Footnotes

[1:The Relational Model]
The Relational Model was first put forward as an idea by the British mathematician Edgar F. Cobb. The principles of the model are laid out in full in his book: "The Relational Model for Database Management". 
