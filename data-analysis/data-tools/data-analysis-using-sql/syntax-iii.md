---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - '[Types of Join](https://www.dofactory.com/sql/join){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Joins


---

## Content

A slightly more complex concept in SQL are **joins**.

Joins allow us to grab results from *multiple tables at once*.

Previously we had just used our `movies` table. 

Imagine we also have access to a `directors` table that includes information about a director's name, date of birth, nationality and education.

What if we want to get results from both our `movies` and `directors` tables at once?

As **every movie belongs to a director**, we have a reference[1] to this director into our movies table. 

This is done using IDs. IDs are automatically assigned to every database entry (row) and every entry has a unique ID.

Our `movies` table includes a `director_id` column which points to the id of each director in the `directors` table. Every movie (row) contains a `director_id` value.

The `JOIN` clause matches the IDs from the `director_id` column on the `movies` table to the `id` column on the `directors` table.

Imagine we wanted to find out the years and titles of all movies directed by `Quentin Tarantino`:

```sql
SELECT year, title
FROM movies
JOIN directors ON movies.director_id = directors.id
WHERE directors.name = "Quentin Tarantino"
```

We can join the table `directors` to `movies` by matching the `director_id` from the `movies` table, `movies.director_id`, on the `id` from the `directors` table, `directors.id`.

| year | title                         |
| ---- | ----------------------------- |
| 1992 | Reservoir Dogs                |
| 1994 | Pulp Fiction                  |
| 1997 | Jackie Brown                  |
| 2003 | Kill Bill: Volume 1           |
| 2004 | Kill Bill: Volume 2           |
| 2007 | Grindhouse: Death Proof       |
| 2009 | Inglourious Basterds          |
| 2012 | Django Unchained              |
| 2015 | The Hateful Eight             |
| 2019 | Once Upon a Time in Hollywood |

In order to be specific about which table you're selecting data from, you can write the table name before each column. 

We can rewrite the above query to be more specific:

```sql
SELECT movies.year, movies.title
FROM movies
JOIN directors ON movies.director_id = directors.id
WHERE directors.name = "Quentin Tarantino"
```

> 💡 Note, the order you write each clause matters. `WHERE` clauses must come after `SELECT`, `FROM` and `JOIN`.

We've explored one type of `JOIN`, the `(INNER) JOIN`, so check out the **Learn More** link to discover the other three join types.


---

## Practice

Imagine that each student belongs to one university.

Complete the following query to join the students table to the universities table:

```sql
SELECT students.name, universities.name
FROM students
??? universities ???
students.university_id ??? universities.id
```

- JOIN
- ON
- =
- WHERE
- IN


---

## Revision

Imagine that each superpower belongs to one superhero.

Complete the following query to join the superpowers table to the superheroes table:

```sql
SELECT superpowers.name, superheroes.name
FROM superpowers
??? superheroes ???
superpowers.superhero_id ??? superheroes.id
```

- JOIN
- ON
- =
- WHERE
- IN


---

## Footnotes

[1:References]
References will have already been set up for you by developers. When they create the initial database structure and when they add in new tables, they will choose how each table relates to another one.
