---
author: Nick Daminov

levels:

  - beginner

  - basic

type: normal

category: must-know

inAlgoPool: false

tags:
  - introduction

  - workout

standards:
  sql.read-single-table.0: 10

links:

  - '[More Query Languages](https://en.wikipedia.org/wiki/Query_language){website}'


---

# What is SQL?

---
## Content

A *Query Language*  is a programming language that provides enough functionality in order to operate on a database. We can think of a *Query Language* as a user interface language with particular syntax which acts as a intermediate layer between the user/database administrator and an **RDBMS** (*Relational Database Management System*).

The original and the most common query language is **SQL**. **SQL** stands for *Structured Query Language* and was developed in the 1970s. As a user, we do not need to go into detail of how **RDBMS's** work but concentrate on our part of using a relational database. This is why this course will describe **SQL** in all its details.

Here's an example:
```sql
SELECT * FROM users;
```

---
## Practice

Let's look at the structure of a SQL query. 
How do you think you might get all the information from a table called `items`?

???


* `SELECT * FROM items;`
* `GO GET ALL ITEMS`
* `SELECT EVERYTHING FROM items`
* `SELECT * from users`

---
## Revision

How do you select all the rows and columns from a table called `products`?

???


* `SELECT * FROM products;`
* `GO GET ALL PRODUCTS`
* `SELECT EVERYTHING FROM products`
* `SELECT * FROM items`
