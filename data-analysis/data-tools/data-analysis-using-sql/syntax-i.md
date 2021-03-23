---
author: emmab
tags:
  - introduction
type: normal
category: must-know
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

# SQL Syntax I


---

## Content

Most of the SQL queries you'll ever write will start with the keyword `SELECT`.

After the word `SELECT` you list the different things that you want to see, separated by commas if there are more than one.

If we had a table in our database called `movies` that contained titles, descriptions, release years and earnings for a list of movies, but we only care about knowing the movie `title` and `description` then our query would be:

```sql
SELECT title, description 
FROM movies
```

Executing this query will produce a table that has two columns "title" and "description". 

If we want to see the total earnings for all movies then you can use aggregators like `SUM`, `AVG` or `COUNT` to run calculations.

```sql
SELECT SUM(earnings)
FROM movies
```

This query would return one number, the sum of all of the movie's earnings added together.

Whenever we write `SELECT` we must specify where we're grabbing the data from and this is done with `FROM` followed by the name of the table.


---

## Practice

Complete this basic query to return the name and age of each student in the students table:

```sql
??? name, age
??? students
```

- SELECT
- FROM
- INSERT
- GRAB
- UPDATE


---

## Revision

Complete this basic query to return the color and category of each product in the productss table:

```sql
??? color, category
??? products
```

- SELECT
- FROM
- INSERT
- GRAB
- UPDATE
