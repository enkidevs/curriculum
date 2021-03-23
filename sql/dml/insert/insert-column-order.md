---
author: kapnobatai136
type: normal
category: must-know
tags:
  - insert
  - syntax
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Column Order


---

## Content

You can also choose the order of the columns when inserting values. The syntax is:

```sql
INSERT INTO table_name
(col1, col2, col3)
VALUES
(col1_value, col2_value, col3_value);
```

Using the same `inventory` table[1] from the last insight, let's take a look at an example.

```sql
INSERT INTO inventory
(quantity, product, id)
VALUES
(15, "Strawberry", 6);
```

You don't have to insert values in all the columns. You can also insert **selectively**.

```sql
INSERT INTO inventory
(product, quantity)
VALUES
("Blueberry", 5);
```

And this is the result:

| id       | product        | quantity |
| -------- | -------------- | -------- |
| 1        | Cucumber       | 20       |
| 2        | Tomato         | 50       |
| 5        | Carrot         | 30       |
| **6**    | **Strawberry** | **15**   |
| **NULL** | **Blueberry**  | **5**    |

> ❗ When inserting data, **if you omit a column**, the inserted value will be `NULL`[2].


---

## Practice

Using this `family` table:

```md
| name     | age | nickname |
|----------|-----|----------|
| Samantha | 39  | Sam      |
| William  | 45  | Bill     |
```

Complete the `INSERT` command to get this table:

```md
| name     | age | nickname |
|----------|-----|----------|
| Samantha | 39  | Sam      |
| William  | 45  | Bill     |
| NULL     | 24  | John     |
```

```sql
??? family
???
VALUES
???;
```

- INSERT INTO
- (nickname, age)
- ("John", 24)
- (name, age)
- (NULL, 24, "John")


---

## Revision

If you omit a column when inserting, its value will be replaced by ???.

- NULL
- UNDEFINED
- UNKNOWN


---

## Footnotes

[1:Inventory Table]
Here is how the `inventory` table looked like:

| id | product  | quantity |
| -- | -------- | -------- |
| 1  | Cucumber | 20       |
| 2  | Tomato   | 50       |
| 5  | Carrot   | 30       |

[2:Default Values]
There is an exception to this. 

When creating a table, you can define default values for your columns.

Then, when you omit a column, the default value will be inserted instead of `NULL`.

Don't worry about default values. We'll go over how they work in the Defining Data course.
