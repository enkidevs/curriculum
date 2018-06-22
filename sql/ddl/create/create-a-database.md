---
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.create-database.0: 10

tags:

  - introduction

  - workout


links:

  - '[More about how to create a database](https://www.postgresql.org/docs/9.1/static/app-createdb.html){website}'


aspects:
  - introduction
  - workout


---

# Create a Database

---
## Content

We will create a PostgreSQL database. Using the terminal we need to enter the following command:
```
CREATE DATABASE my_first_db;
```
This command creates a new database called *"my_first_db"*.

Note that PostgresSQL provides users with a command line executable for creating a database. Using:
```
createdb [options...] [dbname][description]
```

Parameters:
- `options` command-line arguments, that the db accepts
- `dbname` database name
- `description` optional initial comment that can be added

The `createdb` command is a wrapper around the transact SQL query `CREATE DATABASE`. The only difference is that the former can be run from the command line and it enables users to add a initial comment in the db.

---
## Practice

Create a new database called "practice_qw".
```
??? ??? ???
```


* CREATE
* DATABASE
* practice_qw;
* TABLE
* DROP
* practice_qw

---
## Revision

Using `createdb` command, create a db called "test_db" and add an initial comment stating "DB created":
```
??? ??? "DB created"
```

* createdb
* test_db
* revision_qw
* LIST
* CREATE DATABASE
* practice_qw
 
 
