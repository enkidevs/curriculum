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
  sql.define-relationships.0: 10

tags:

  - introduction
  - foreign key
  - workout


links:

  - '[Foreign Key](https://en.wikibooks.org/wiki/Structured_Query_Language/Foreign_Key){website}'

aspects:
  - introduction
  - workout


---

# Foreign Key

---
## Content

The `FOREIGN KEY` is the main principle behind RDBMS. It represents a directed reference from one table (usually called the *child*) to another table (the *parent*). This relationship is only possible when the column from the *child* table and the column from the *parent* table contain identical values. The `FOREIGN KEY` relates one row from the *child* with a single row from the *parent*, but a row from the *parent* table can be related to many rows from the *child* table.

Consider the following tables:

`employees`

| id  | name    | department_id |
|-----|---------|---------------|
| INT | VARCHAR | INT           |

`departments`

| id  | name    |
|-----|---------|
| INT | VARCHAR |

As with `PRIMARY KEY`s, `FOREIGN KEY`s can be defined when creating a table or added at a later time. In this insight you will learn how to define a `FOREIGN KEY` when creating your table. For the `employees` and `departments` table, we know that the `department_id` and the `id` columns contain identical values. We would then like to create a reference between these tables. This would be done as such:

```sql
CREATE TABLE departments (
  id INT PRIMARY KEY,
  name VARCHAR
);
```

```sql
CREATE TABLE employees (
  id INT,
  name VARCHAR,
  department_id INT,
  CONSTRAINT department_fk 
  FOREIGN KEY (department_id) 
  REFERENCES departments(id)
);
```

Defining *constraints* such as a `FOREIGN KEY` usually starts with `CONSTRAINT` followed by the constraint name, which in our case is `department_fk`. Following this is the type of constraint, `FOREIGN KEY`, the name of the column, `department_id`, which `REFERENCES` another table, `departments`, and in parentheses is the *parent* column name, `id`.

Note that the column from the *parent* table must be defined as either `PRIMARY KEY` or `UNIQUE`[1] for the relationship to work.

---
## Practice

Consider you have the following table called `subsidiaries`:

| id  | name    | email   |
|-----|---------|---------|
| INT | VARCHAR | VARCHAR |

How would you define the `employees` table such that there is a constraint named `emp_subs` that defines a relationship between these two tables?

```sql
??? employees (
  id INT,
  first_name VARCHAR,
  last_name VARCHAR,
  subsidiary_id INT,
  email VARCHAR,
  ??? ??? 
  ??? ??? 
  ??? subsidiaries(???)
);
```

* CREATE TABLE
* CONSTRAINT
* emp_subs
* FOREIGN KEY
* (subsidiary_id)
* REFERENCES
* id
* MAKE TABLE
* PRIMARY KEY
* RELATES
* name
* email

---
## Revision

Consider you have the table `servers` which has a column `id` defined as a `PRIMARY KEY`. Create a new table name `players` with the following columns:

- `id` which can't take `NULL` values
- `name`
- `age`
- `server_id` which references the `id` column from the `servers` table

```sql
??? players (
  id INT ???,
  name VARCHAR,
  age SMALLINT,
  server_id INT,
  ??? players_server 
  ??? (???) 
  ??? servers(id)
);
```

* CREATE TABLE
* NOT NULL
* CONSTRAINT
* FOREIGN KEY
* server_id
* REFERENCES
* MAKE TABLE
* NOT ZERO
* id
* RELATES
* PRIMARY KEY

---
## Footnotes

[1:UNIQUE Constraint]
The `UNIQUE` constraint is very similar to `PRIMARY KEY` but it has two small differences. The first is that a column defined as `UNIQUE` can hold `NULL` values, and because the expression `NULL = NULL` doesn't evaluate to `true` (it evaluates to `unknown`) the column can hold multiple `NULL` values. The second difference is that there can only be one column defined as `PRIMARY KEY`, but there can be many columns defined as `UNIQUE`.
