---
author: kapnobatai136

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.define-tables.4: 10

tags:

  - introduction
  - primary key
  - workout

links:

  - '[Column Constraints](https://en.wikibooks.org/wiki/Structured_Query_Language/Create_Table#Column_Constraint){website}'

aspects:
  - introduction
  - workout

---

# Primary Key

---
## Content

To allow the association of data in relational databases, rows should be uniquely identifiable. When defining a new table, there are two types of constraints that can be declared, `PRIMARY KEY`s and `FOREIGN KEY`s. This insight will focus on the former. 

A `PRIMARY KEY` is a field or a combination of fields that is used to uniquely define a record (row). `PRIMARY KEY`s can be defined when creating a table or they can be added at a later time.

Let's start by creating a simple table `students` with 2 columns, `id` and `name`. We want to identify each `student` by their `id`, meaning that we will define this column as a `PRIMARY KEY`. To do this, you would have to write:

```sql
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR
);
```

Defining a column as a `PRIMARY KEY` implies that you cannot insert `NULL` values in said column and that all the values must be unique. If that was not the case, you wouldn't be able to use the `PRIMARY KEY` to easily identify each row.

To ensure that a column can't take any `NULL` values you can use the `NOT NULL` constraint when defining your table. Here is an example:

```sql
CREATE TABLE your_table(
  id INT NOT NULL
);
```

Let's see what happens when we insert the following values in the `students` table:

```sql
INSERT INTO students values
(NULL, 'Andrei'), 
-- Fails because PRIMARY KEY columns
-- can't store NULL values
(1, 'Catalin'), 
-- This will be successful
(1, 'Mihai'), 
-- Fails because PRIMARY KEY columns
-- can only store unique values
(2, 'Catalin'); 
-- This will be successful
```

---
## Practice

Create a new table named `muscle_cars` which has the `id`, `name`, and `year` columns. Define the `id` as a primary key.

```sql
??? muscle_cars (
  ??? INT ???,
  name VARCHAR,
  year INT
);
```

* CREATE TABLE
* id
* PRIMARY KEY
* FOREIGN KEY
* MAKE TABLE
* number

---
## Revision

Create a table named `billboard_songs` with the `id`, `name`, and `position` columns. Define the `id` column as a primary key and make sure that the `position` column can't take `NULL` values.

```sql
??? billboard_songs (
  id INT ???,
  name VARCHAR,
  position INT ???
);
```

* CREATE TABLE
* PRIMARY KEY
* NOT NULL
* MAKE TABLE
* FOREIGN KEY
* NOT ZERO
