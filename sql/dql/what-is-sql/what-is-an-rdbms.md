---
author: Nick Daminov
levels:
  - beginner
  - basic
type: normal
category: must-know
inAlgoPool: false
tags: []
standards:
  sql.define-tables.0: 10
links:
  - >-
    [What is Relational
    Database?](http://searchsqlserver.techtarget.com/definition/relational-database){website}
  - >-
    [What is
    RDBMS?](http://searchsqlserver.techtarget.com/definition/relational-database-management-system){website}
aspects:
  - introduction
---

# What is an RDBMS?


---

## Content

*RDBMS* stands for *Relational Database Management System*, a *Database Management System* that allows the user to create, update and delete the *Relational Database*.

*Relational Databases* store data in *tables*, which are similar to a spreadsheet in that they've got rows and columns.

Using these tables we can query data, and store it such that others can query it. The language we use to *define* tables is commonly referred to as SQL, but its real name is *DDL*, or *Data Definition Language*.

Here's an example of how we might define a table:

```sql
CREATE TABLE users (
  id INT,
  name VARCHAR(500)
);
```

This lives in the *Database Server*.

Then we could query it like so:

```sql
SELECT * FROM users;
```

We query from the *Database Client*.


---

## Practice

How do you think we could create a table called `products`?

```sql
??? (
  id INT,
  name VARCHAR(500),
  cost FLOAT
);
```

* `CREATE TABLE products`
* `MAKE TABLE products`
* `rdbms.createTable('products')`
* `sql.create.table('products')`


---

## Revision

How do you think we could create a table called `coupons`?

```sql
??? (
  id INT,
  name VARCHAR(500),
  cost FLOAT
);
```

* `CREATE TABLE coupons`
* `MAKE TABLE coupons`
* `rdbms.createTable('coupons')`
* `sql.create.table('coupons')`

