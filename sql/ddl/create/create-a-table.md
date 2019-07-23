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
  sql.define-tables.0: 10
  sql.define-tables.1: 10

tags:
  - introduction
  - workout


links:
  - '[MySQL define tables documentation](https://dev.mysql.com/doc/refman/5.7/en/creating-tables.html){website}'
  - '[explainer on how to create tables](https://www.w3schools.com/sql/sql_create_table.asp){website}'
  - '[video tutorial on creating tables](https://youtu.be/EaRj0S3K32Y?t=58s){video}'


aspects:
  - introduction
  - workout


---

# Create a table

---
## Content

When creating a new table, there are a couple rules which must be always followed to ensure good performance:

* each table column has a fixed name
* all data in a column must have the same type

On top of the rules mentioned above, you must also decide what data you should include in your table, what name do you assign to the data (column) and what type it is going to be. Each object in a table holds an attribute (*data type*) that specifies the type of data that it can hold: numbers, text, date & time, monetary data and others.

Let's create a simple table called `employees` which takes two column, `full_name` and `age`. In this case, all the information in the `full_name` column will be text and the information in the `age` column will be numerical. In SQL there are multiple ways to define data as a text or number, but for this insight we will employ only the most widely used types: `INTEGER`[1] and `VARCHAR`[2]. This table can be created in SQL using the following command:

```sql
CREATE TABLE employees(
  full_name VARCHAR,
  age INTEGER
);
```

First we need to tell the database that we want to create a new table using the `CREATE TABLE` statement followed by the table name. Inside the `CREATE TABLE` statement you start defining your columns together with their types, and every subsequent pair of column-type must be preceded by a comma.

Note that if the name is not unique, an error is usually thrown. To suppress the error and skip creating a duplicate table you can use the `IF NOT EXISTS` clause which is used as such:

```sql
CREATE TABLE IF NOT EXISTS table_name (
  ...
);
```

---
## Practice

Create a table called `students` with the following columns:

* `id` that is `INTEGER`
* `full_name` that is `VARCHAR`
* `year_of_study` that is `INTEGER`.

```sql
??? ??? students(
  id ???,
  full_name ???,
  year_of_study ???
);
```

* CREATE
* TABLE
* INTEGER
* VARCHAR
* INTEGER
* UPDATE
* DATABASE
* MAKE
* CHAR
* NUMBER
* TEXT

---
## Revision

Which of the following queries would create this table:  

`employees`
| ID      | full_name | salary  |
|---------|-----------|---------|
| INTEGER | VARCHAR   | INTEGER |

???

* CREATE TABLE employees ( ID INTEGER, full_name VARCHAR, salary INTEGER);
* UPDATE TABLE employees ( ID INTEGER, full_name VARCHAR, salary INTEGER);
* CREATE TABLE employees ( ID NUMBER, full_name TEXT, salary NUMBER);
* MAKE TABLE employees ( ID INTEGER, full_name VARCHAR, salary INTEGER);

---
## Footnotes
[1:INTEGER]
An integer represents a whole number or a number which is not a fraction.
[2:VARCHAR]
This type is used for columns which will store a string of characters (can be letters, digits and so on).
