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

tags:

  - introduction
  - primary key
  - workout

links:



aspects:
  - introduction
  - workout

---

# Primary and Foreign Keys

---
## Content

Due to the nature of Relational Databases, rows should be identifiable without difficulty. When defining a new table, there are two types of constraints that can be declared: `PRIMARY KEY`s and `FOREIGN KEY`s.

### Primary Key

By `PRIMARY KEY` we mean a field or a combination of fields that is used to uniquely define a record (row). `PRIMARY KEY`s can be defined when creating a table or they can be added at a later time.

Let's start by creating a simple table `students` with 2 columns, `id` and `name`. We want to identify each `student` by their `id`, meaning that we will define this column as a `PRIMARY KEY`. To do this, you would have to write:

```sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR
);
```

Defining a column as a `PRIMARY KEY` implies that you cannot insert `NULL` values in said column and that all the values must be unique. If that was not the case, you wouldn't be able to use the `PRIMARY KEY` to easily identify each row.

---
## Practice

question1

---
## Revision

question 2