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

# Check Constraint and Default Value

---
## Content

Apart from the `PRIMARY KEY` and `FOREIGN KEY`, SQL allows you define other column or table constraints that verify inserted data. In this insight we will discuss how to check the value of a record before being inserted in the table or how to set up a default value for your columns.

### Check Constraint

Column checks are used to ensure that values entered in a column meet a defined criterion. To best explain this, let's say you want to create a table of eligible voters in which you store an identification column `id`, the name of the person as `name` and their `age`. To be eligible to vote you must be 18 or older, and to simplify data entering and ensure that no human errors are made, you can set up a column check. Let's look at how this table is created:

```sql
CREATE TABLE voters (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  age INTEGER CHECK (AGE >= 18)
);
```

Now, if you were to insert a record which had a value for the `age` column less that 18 you would get an error. 

What if you wanted to constrain the value of two columns at the same time? This is possible by creating a table check constraint. Let's say that for some reason you also want only names that start with 'T'. In this case, your table definition would look like:

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

There are two main advantages of using table constraints over column constraints. The first advantage is that they are more powerful, allowing you to use two or more columns. The second one is that they can have their own name, in our case `age_and_name_check`, which helps with:
- understanding system messages
- creating constraints after the table was defined
- altering (activating, deactivating, deleting) the constraints
 
### Default Value

When creating a table you can also set a default value for your columns. This value can be a constant number like 5, a string like 'not available', a system variable or a function call that determines dynamic values like the actual timestamp.

The `DEFAULT` clause affects `INSERT` commands that do not specify a value for the column in question. Let's start off by defining a simple table named `dogs` that only takes the `name` and `weight` columns.

```sql
CREATE TABLE dogs (
  name VARCHAR,
  weight INTEGER DEFAULT 0
);
```

Now let's see what happens when we insert the following records in the table:

```sql
INSERT INTO dogs (name) VALUES 
('Oscar');
INSERT INTO dogs (name, weight) VALUES 
('Benson', 22);
```

And this is how the table would look like:

| name   | weight |
|--------|--------|
| Oscar  | 0      |
| Benson | 22     |

Notice that if we omit the `weight` column when using an `INSERT` command, the RDBMS will store the default value, which was 0.

---
## Practice

Complete the following table definition to check that the `year` column is higher that 1970 and the `name` column has a default value of 'unknown'.

```sql
CREATE TABLE cars (
  id INTEGER PRIMARY KEY,
  name VARCHAR ??? '???',
  year INTEGER ??? (???)
);
```

* DEFAULT
* unknown
* CHECK
* year > 1970
* VERIFY
* year GT THAN 1970
* undefined
* FALLBACK


---
## Revision

Complete the following code to define a default value of 18 for the `age` column and a table constraint named 'check_name' that requires the `first_name` to start with 'B' and the `last_name` to end with 'e'.

```sql
CREATE TABLE voters_b (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR,
  second_name VARCHAR,
  age INTEGER ??? 18,
  ??? ??? 
  ??? (??? LIKE 'B%' AND ??? LIKE '%e')
);
```

* DEFAULT
* CONSTRAINT
* check_name
* CHECK
* first_name
* last_name
* BASIC
* VERIFY
* verify_name
* IS