---
author: kapnobatai136
type: normal
category: must-know
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Default Value


---

## Content

When creating a table you can also set a default value for your columns. This value can be a constant number like 5, a string like `'not available'`, a system variable or a function call that determines dynamic values like the actual timestamp.

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

And this is what the table would look like:

| name   | weight |
| ------ | ------ |
| Oscar  | 0      |
| Benson | 22     |

Notice that if we omit the `weight` column when using an `INSERT` command, the RDBMS will store the default value, which is 0.


---

## Practice

What will the following code insert into the `cars` table?

```sql
CREATE TABLE cars (
  id INTEGER,
  name VARCHAR DEFAULT 'unknown',
  year INTEGER
);
--
INSERT INTO cars (id, year) VALUES
(1, 2004);
```

???

- (1, 'unknown', 2004)
- (1, NULL, 2004)
- (1, DEFAULT, 2004)
