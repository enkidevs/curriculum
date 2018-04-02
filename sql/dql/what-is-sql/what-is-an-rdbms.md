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
  sql.define-tables.0: 10


links:

  - '[What is Relational Database?](http://searchsqlserver.techtarget.com/definition/relational-database){website}'
  - '[What is RDBMS?](http://searchsqlserver.techtarget.com/definition/relational-database-management-system){website}'


---

# What is an RDBMS?

---
## Content

In order to learn **SQL** we must understand what a **RDBMS** is. **RDBMS** stands for *Relational Database Management System*, which refers to a system of *Database Servers* and *Database Clients* that interact. Database Servers hold data, while Database Clients store and request data.

A *Relational Database* stores data in a form of _tables_, which will seem familiar if you've used a spreadsheet. From these tables, we can request data in various ways, filter it, and store it such that other users can use it. The language we use to do so is called **SQL**.

In order to query a table, we first have to _define_ it with something called a *Schema*.

Here's an example:

```
CREATE TABLE users (
  id INT,
  name VARCHAR(500)
);

```
This lives in the Database Server.

Then we could query it like so:

```
SELECT * FROM users;
```

We query from the Database Client.

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
