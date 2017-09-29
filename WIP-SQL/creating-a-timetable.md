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

A table can be created in sql using:
```
CREATE TABLE first_table(
  column1 datatype NOT NULL,
  column2 datatype,
  ...,
  PRIMARY KEY(column1)
  );
```
First we need to tell the database that we want to create a new table. After this we must specify each column and the datatype it holds. Finally, we define a `PRIMARY KEY`[1]. Note that we need to set a constraint for the primary key "column1". `NOT NULL` means that this field can't be left empty.

You can verify if a table was succesfully created using:
```
DESC first_table;
```

---
## Practice

Create a table that:
- is called "student"
- first column: id, char
- second column: full_name, char
- third column: year_of_study, ?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Footnotes

[1:PRIMARY KEY]
A primiry key is a field in a table that identifies each row in a db.
