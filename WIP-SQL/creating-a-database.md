# Creating a Database
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More about how to create a database](http://www.wikihow.com/Create-a-Database-in-MySQL)'

---
## Content

We will create a mysql database. Using the terminal we need to enter the following command:
```
CREATE DATABASE my_first_db;
```
This command creates a new database called *"my_first_db"*.

Note that on Unix-like operating systems the database's name is case sensitive. However, on Windows operating systems this rule applies just inside the same **query**. So if we call it "my_first_db" at the beginning of the query, we must use lower case letters until the end of that query.

An important thing to remember is that creating a db doesn't make it available for use by default. The following command enables users to use the created db:
```
USE my_first_db;
```

The following command lists all databases:
```
SHOW DATABASES;
```

Finally, to see which db is currently selected:
```
SELECT DATABASE();
```
---
## Practice

Create a new database called "practice_qw".
```
??? ??? ???
```
???

* CREATE
* DATABASE
* practice_qw;
* TABLE
* DROP
* practice_qw

---
## Revision

First list all databases, then use the "revision_qw" database:
```
??? DATABASES;

??? ???;
```
* SHOW
* USE
* revision_qw
* LIST
* DATABASE
* practice_qw
