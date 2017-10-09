# Creating a table
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on creatin a table](https://www.tutorialspoint.com/sql/sql-create-table.htm)'

---
## Content

A table can be created in sql using the following query:
```
CREATE TABLE first_table(
  column1 datatype NOT NULL,
  column2 datatype,
  ...,
  PRIMARY KEY(column1)
  );
```
First we need to tell the database that we want to create a new table. After this we must specify each column and the datatype it holds. Finally, we define a `PRIMARY KEY`[1]. Note that we need to set a constraint for the primary key "column1". `NOT NULL` means that this field can't be left empty.

You can verify if a table was succesfully created using `\d first_table;` when working with Postgres or `describe first_table` when working with MySQL.


---
## Practice

Create a table that:
- is called "student"
- first column: id, char
- second column: full_name, char
- third column: year_of_study, smallint
```
??? TABLE student(
  id char ???,
  full_name ???,
  year_of_study smallint,
  PRIMARY KEY(???)
  );
```

* CREATE
* NOT NULL
* char
* id
* UPDATE
* NULL

---
## Revision

Which of the following queries would create a table that:
- is called employees,
- column1: ID char,
- column2: full_name char,
- column3: salary int,

???

* CREATE TABLE employees ( ID char, full_name char, salary int, PRIMARY KEY(ID));
* UPDATE TABLE employees ( ID char, full_name char, salary int, PRIMARY KEY(ID));
* CREATE TABLE employees ( ID char, full_name char, salary int, PRIMARY KEY(full_name));

---
## Footnotes

[1:PRIMARY KEY]
A primiry key is a field in a table that identifies each row in a db.
