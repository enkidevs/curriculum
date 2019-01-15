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

aspects:
  - introduction

standards:
  sql.connect-client.0: 10

links:

  - '[What is Relational Database?](http://searchsqlserver.techtarget.com/definition/relational-database){website}'
  - '[What is RDBMS?](http://searchsqlserver.techtarget.com/definition/relational-database-management-system){website}'

---

# What is an RDBMS?

---
## Content

*RDBMS* stands for _Relational Database Management System_. 

_Relational Databases_ store data in _tables_, which are similar to a spreadsheet in that they've got rows and columns. When you want data in one _table_ to reference data in another _table_, you create a _relation_ between them. A Relational Database Management System is therefore the program that actually does the creating, reading, updating, searching, filtering, and relating. It does this using a Structured Query Language called SQL.

SQL has two main parts, the Query part, and the Definition part. DDL stands for Data Definition Language, and that is how we define data the tables contain.

Here's an example of how we might define a table:

```sql
CREATE TABLE users (
  id INT,
  name VARCHAR(500)
);
```

This is executed on the *Database Server*, and the database server creates space for it.

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
 
 
 
