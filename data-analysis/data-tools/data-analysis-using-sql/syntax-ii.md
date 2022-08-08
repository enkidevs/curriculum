---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - '[WHERE Clause](https://www.geeksforgeeks.org/sql-where-clause/){website}'
  - '[LIKE Predicate](https://en.wikibooks.org/wiki/Structured_Query_Language/Like_Predicate){website}'
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

# SQL Syntax II


---

## Content

So we can select different columns and aggregate any numerical fields, but what if we only want to select data where a certain condition is true?

That's where we can use our `WHERE` keyword.

Take the following example:

```sql
SELECT year, title
FROM movies
WHERE title = "Pulp Fiction"
```

It returns a table with two columns - the `year` and `title` of any movies that match the exact name "Pulp Fiction".

| year | title        |
| ---- | ------------ |
| 1994 | Pulp Fiction |

Currently, our `WHERE` filter is pretty strict as the results must match whatever is inside the `" "`. 

Let's look at a less strict example:

```sql
SELECT year, title
FROM movies
WHERE year < 2005
AND title LIKE "%Harry Potter%"
```

| year | title                                    |
| ---- | ---------------------------------------- |
| 2001 | Harry Potter and the Philosopher's Stone |
| 2002 | Harry Potter and the Chamber of Secrets  |
| 2004 | Harry Potter and the Prisoner of Azkaban |

> 💡 We can add in multiple `WHERE` clauses using the `AND` keyword.

We can use the `LIKE` keyword to look for pattern (instead of exact) matches. The filter `WHERE title LIKE "%Harry Potter%"` tells SQL to look for all the movies that have `"Harry Potter"` somewhere in the name.

This pattern matching is achieved with the `%` wildcard character.

> 💡 Check out the **Learn More** section for more information about the `WHERE` keyword.

As you can see, the results are returned in the same order that they're stored in the database.

If we wanted to sort them by year in descending order then we can use the `ORDER` keyword:

```sql
SELECT year, title
FROM movies
WHERE year < 2005
AND title LIKE "%Harry Potter%"
ORDER BY year DESC
```

This will reverse the order of the results.

If you don't include the keywords `DESC` or `ASC` then `ORDER BY` will automatically sort the data by `ASC`, ascending order.

---

## Practice

Complete the following query to return all students that are born before the year 2000 and have a first name beginning with the letter 'A':

```sql
SELECT
  name
FROM
  students
???
  year_of_birth ??? 2000
  ??? first_name ??? 'A%'
```

- WHERE
- `<`
- AND
- LIKE
- `>`
- OR


---

## Revision

Complete the following query to return all cities that have a population greater than 1 million and are in Europe:

```sql
SELECT name
FROM cities
??? population ??? 1000000
??? continent ??? 'Europe'
```

- WHERE
- `>`
- AND
- =
- `<`
- OR
