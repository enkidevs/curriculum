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

standards:
  sql.define-tables.0: 10


links:

  - '[What is Relational Database?](http://searchsqlserver.techtarget.com/definition/relational-database){website}'
  - '[What is RDBMS?](http://searchsqlserver.techtarget.com/definition/relational-database-management-system){website}'


---

# What is an RDBMS?

---
## Content

*RDBMS* stands for _Relational Database Management System_, a _Database Management System_ that allows the user to create, update and delete the _Relational Database_.

_Relational Databases_ store data in _tables_, which are similar to a spreadsheet in that they've got rows and columns.

Using these tables we can query data, and store it such that others can query it. The language we use to _define_ tables is commonly referred to as SQL, but its real name is *DDL*, or _Data Definition Language_.

Here's an example of how we might define a table:

```
CREATE TABLE users (
  id INT,
  name VARCHAR(500)
);

```
This lives in the *Database Server*.

Then we could query it like so:

```
SELECT * FROM users;
```

We query from the *Database Client*.

---
## Practice

How do you think we could create a table called `products`?

```
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

```
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
