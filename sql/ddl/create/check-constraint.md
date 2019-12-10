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
  sql.define-sequences-or-default-values.1: 10

tags:

  - introduction

  - workout


links:



aspects:
  - introduction
  - workout


---

# Check Constraint

---
## Content

Column checks are used to ensure that values entered in a column meet a defined criterion. To best explain this, let's say you want to create a table of eligible voters in which you store an identification column `id`, the name of the person as `name` and their `age`. To be eligible to vote you must be 18 or older, and to simplify data entering and ensure that no human errors are made, you can set up a column check. Let's look at how this table is created:

```sql
CREATE TABLE voters (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  age INTEGER CHECK (AGE >= 18)
);
```

Now, if you were to insert a record which had a value for the `age` column less that 18, you would get an error. 

What if you wanted to constrain the value of two columns at the same time? This is possible by creating a table check constraint. Let's say that for some reason you also want only names that start with `'T'`. In this case, your table definition would look like:

```sql
CREATE TABLE voters (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  CONSTRAINT age_and_name_check 
  CHECK (age >= 18 AND name LIKE 'T%')
);
```

Now let's try inserting some values in our table:

```sql
INSERT INTO voters VALUES 
(1, 'Abraham Lincoln', 56);
-- Fails because the name starts with 'A'
INSERT INTO voters VALUES 
(2, 'Titus Andronicus', 33);
-- This will be successful
```

There are two main advantages of using table constraints over column constraints. The first is that they are more powerful, allowing you to use two or more columns. The second one is that they can have their own name, in our case `age_and_name_check`, which helps with:
- understanding system messages
- creating constraints after the table was defined
- altering (activating, deactivating, deleting) the constraints

---
## Practice

Complete the following table definition to check that the `year` column is higher that 1970.

```sql
??? ??? cars (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  year INTEGER ??? (???)
);
```

* CREATE
* TABLE
* CHECK
* year > 1970
* VERIFY
* year GT THAN 1970
* MAKE
* DATABASE


---
## Revision

Complete the following code to define a table constraint named `check_name` that requires the `first_name` to start with `'B'` and the `last_name` to end with `'e'`.

```sql
CREATE TABLE voters_b (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR,
  second_name VARCHAR,
  age INTEGER DEFAULT 18,
  ??? ??? 
  ??? (??? LIKE 'B%' AND ??? LIKE '%e')
);
```

* CONSTRAINT
* check_name
* CHECK
* first_name
* last_name
* BASIC
* VERIFY
* verify_name
* IS