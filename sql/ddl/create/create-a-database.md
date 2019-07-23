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

Previously, we have looked at how you can extract information from a database using queries, but there may be a time when you will want to create a new database, add a new table or simply edit the ones that already exist. To create an SQL database, we need to enter the following command:

```sql
CREATE DATABASE my_first_db;
```

This command creates a new database called *"my_first_db"*. Inside this database you can now start creating tables or insert data in said tables. Keep in mind that each database must hold an *unique* name. Having done this we can now follow with creating tables or altering already existing tables.

On the rare occasion where you might want to delete your database you can use the `DROP DATABASE` command followed by the name of the database you want deleted. Keep in mind that **all** the data within the database (including tables and data inside them) will be deleted. Here is how you would delete the database that was created earlier:

```sql
DROP DATABASE my_first_db;
```

---
## Practice

Create a new database called `practice_qw`.
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

Complete the following code such that you will create a new database called `my_db`, display all the available databases, and select `my_db` to work on.

```
??? ??? my_db;

??? DATABASES;

??? my_db;
```

* CREATE
* DATABASE
* SHOW
* USE
* MAKE
* DB
* SELECT
* CREATE DB
 
 
