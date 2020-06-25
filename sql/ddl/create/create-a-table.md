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
  - '[How to create tables](https://www.w3schools.com/sql/sql_create_table.asp){website}'
  - '[Creating tables](https://youtu.be/EaRj0S3K32Y?t=58s){video}'


aspects:
  - introduction
  - workout


---

# Create a table

---
## Content

When creating a new table there are some essential rules to follow to ensure good performance:

* each table column has a fixed name
* all data in a column must be of the same type

On top of the rules mentioned above, you must also decide what data you want to include in your table, what name do you assign to the data (column) and what type it is going to be[1].

The process of creating a new table contains two steps. First, you tell the database that you want to create a new table using the `CREATE TABLE` statement followed by the table name. Next, inside the `CREATE TABLE` statement, you start defining your columns together with their types, and every subsequent pair of column-type must be preceded by a comma.

To gain a better understanding of this concept let's look at an example. We want to create a simple table called `employees` which takes two columns:

- `full_name` with `VARCHAR` type[2]
- `age` with `INTEGER` type[3]

```sql
CREATE TABLE employees(
  full_name VARCHAR,
  age INTEGER
);
```

Note that if the name is not unique, an error is usually thrown. To suppress the error and skip creating a duplicate table, you can utilize the `IF NOT EXISTS` clause which is used as such:

```sql
CREATE TABLE IF NOT EXISTS table_name (
  ...
);
```

To delete a table from a database, you can use the `DROP TABLE` command followed by the name of the table you want deleted. Keep in mind that the table and **all** the information inside it will be deleted. Here is how you would delete the `employees` table:

```sql
DROP TABLE employees;
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
  year_of_study INTEGER
);
```

* CREATE
* TABLE
* INTEGER
* VARCHAR
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
[1:Data Types]
Each object in a table holds an attribute (*data type*) that specifies the type of data that it can hold: numbers, text, date & time, monetary data and others.
[2:VARCHAR]
This type is used for columns which will store a string of characters (can be letters, digits and so on).
[3:INTEGER]
An integer represents a whole number or a number which is not a fraction.
