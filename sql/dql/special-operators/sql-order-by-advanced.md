---
author: Kirill
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - '[More on ORDER BY](http://www.dofactory.com/sql/order-by){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Order By Advanced


---

## Content

What if you wanted your results to be ordered by multiple columns, each being sorted differently (ascending or descending)? 

Using the same `employees` table from the last insight[1], let's return the `last_name` and `first_name`, with the `last_name` sorted alphabetically (ascending), and the `first_name` the other way round. This is how we'd do it:

```sql
SELECT last_name, first_name
FROM employees
ORDER BY last_name ASC, first_name DESC;
```

*Resulting set*:

| last_name | first_name |
| --------- | ---------- |
| Beeho     | Donnamarie |
| Isworth   | Tony       |
| Kippen    | Immanuel   |
| Pantone   | Regina     |
| Pantone   | Karlene    |
| Warrier   | Esta       |

Notice that this is done by specifying the name of the columns you want ordered, followed by their order. On top of that, **each set of column-order should be separated by a comma**. 

Take a look at the result set above. You can see that there are two records with the same `last_name`, `"Pantone Regina"` and `"Pantone Karlene"`. When sorting, SQL will order the records by the **first column** mentioned in the `ORDER BY` clause. 

When it encounters records that have the same value in the **first ordered column**(in this case `"Pantone"` and `"Pantone"`), it will start ordering **those columns** by the **second column mentioned in the clause**.


---

## Practice

The `employees` table contains data about each employee at an international company. Two of the columns in the table are represented by:

- `name`, for the employee's name
- `language_id` to reflect the native language

Select both columns from the table and sort your resulting set:

- first in descending order by the name column
- second in ascending order by the language_id column

```sql
SELECT name, ???
FROM employees
??? name ???, ??? ASC;
```

- language_id
- ORDER BY
- DESC
- language_id
- AVG
- GROUP BY
- nature_name
- DESCENDING
- SORT BY


---

## Revision

If this is the result set:

| first_name | second_name |
| ---------- | ----------- |
| Tim        | Smith       |
| Adam       | Davis       |
| Jim        | Davis       |

Complete the following query to obtain it:

```sql
SELECT * FROM names
ORDER BY ??? DESC, ??? ASC;
```

- second_name
- first_name


---

## Quiz

### Can you order a table with SQL?


Consider the `experience` table from our `pokemon` database:

| id  | level | experience | growth_rate_id |
| --- | ----- | ---------- | -------------- |
| 1   | 1     | 0          | 1              |
| 2   | 2     | 10         | 1              |
| 3   | 3     | 33         | 1              |
| 4   | 4     | 80         | 1              |
| ... | ...   | ...        | ...            |

This table shows how much experience you need to gain in order to get to level 100 based on different growth rates. Choose the query that will get all records that have level 100 and orders them descending on the amount of experience needed:

 ???

- SELECT * FROM experience WHERE level=100 ORDER BY experience DESC;
- SELECT * FROM experience WHERE level=100 ORDER BY growth_rate_id DESC;
- SELECT * FROM experience WHERE level=100 DESC ORDER BY experience;
- SELECT * FROM experience WHERE level=100 ORDER DESC BY experience;


---

## Footnotes

[1:Employees Table]

Here is the table we have used previously:

| id | first_name | last_name | email                   |
|----|------------|-----------|-------------------------|
| 1  | Karlene    | Pantone   | kpantone0@topsy.com     |
| 2  | Donnamarie | Beeho     | dbeeho1@state.tx.us     |
| 3  | Tony       | Isworth   | tisworth2@bloglovin.com |
| 4  | Esta       | Warrier   | ewarrier3@berkeley.edu  |
| 5  | Immanuel   | Kippen    | ikippen4@biglobe.ne.jp  |
| 6  | Regina     | Pantone   | regone@stratos.org      |
