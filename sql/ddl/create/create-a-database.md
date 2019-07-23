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

This command creates a new database called *"my_first_db"*. Inside this database you can now start creating tables or insert data in said tables. Keep in mind that each database must hold an *unique* name.

There might times when you are working with multiple databases at one. In case, you might want to first display all the available databases, and following that select one to work on. To display all available databases you would use:

```sql
SHOW DATABASES;
```

And the result would look like:

| Database           |
| ------------------ |
| information_schema |
| my_first_db        |
| mysql              |
| performance_schema |
| sys                |
| test               |

Notice how the database we have created, `my_first_db`, is found between other databases that have already been created. Now, to select our database we would use:

```sql
USE my_first_db;
```

Having done this we can now follow with creating tables or altering already existing tables.

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
 
 
