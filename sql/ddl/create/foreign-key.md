---
author: kapnobatai137

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




aspects:
  - introduction
  - workout


---

# Check

---
## Content

### Foreign Key

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

As with `PRIMARY KEY`s, `FOREIGN KEY`s can be defined when creating a table or added at a later time. In this insight you will learn how to define a `FOREIGN KEY` when creating your table. For the `employees` and `departments` table, we know that the `id` and the `department_id` columns contain identical values and would like to create a reference between these tables. This would be done as such:

```sql
CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE employees (
    id INT,
    name VARCHAR,
    department_id INT,
    CONSTRAINT department_fk FOREIGN KEY (department_id) REFERENCES departments(id)
);
```

Defining *constraints* such as a `FOREIGN KEY` usually starts with `CONSTRAINT` followed by the constraint name, which in our case is `department_fk`. Following is the type of constraint, `FOREIGN KEY`, the name of the column, `department_id`, which `REFERENCES` another table, `departments`, and in parentheses is the *parent* column name.

Note that the column from the *parent* table must be defined as either `PRIMARY KEY` or `UNIQUE` for the relationship to work.

---
## Practice



---
## Revision

