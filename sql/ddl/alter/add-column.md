---
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.define-columns.0: 10
  sql.define-columns.2: 10

tags:

  - workout

  - deep


links:

  - '[More on ALTER TABLE](https://www.techonthenet.com/sql_server/tables/alter_table.php){website}'

parent: create-a-table

aspects:
  - workout
  - deep


---

# Add Column

---
## Content

The `ALTER TABLE` command lets you modify table constraints and column definitions after you've defined your table.

For example, to add a new column to a certain table, you can use:

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

You must always specify the column name and its data type, with some other optional arguments being available. For example, you can add a `CHECK` constraint, a `DEFAULT` value, a `NOT NULL` clause, or even set the column as a `PRIMARY KEY` (that is, if there isn't a `PRIMARY KEY` already defined).

Here's how you would add a new column that only takes `INTEGERS` with a default value of 1, and makes them required (commonly known as not being `NULL`):

```sql
ALTER TABLE pets
ADD age INTEGER NOT NULL DEFAULT 1;
```

Now, let's say you want to add a column `hash`, which you know is going to be unique. You also want it to be set as a `PRIMARY KEY` and make sure that only records starting with `'36hya'` are inserted. To do this, you would use the following code:

```sql
ALTER TABLE transactions
ADD hash VARCHAR PRIMARY KEY 
CHECK (hash LIKE '36hya%');
```

If you ever get bored of one of your columns, you can use the following statement to delete it:

```sql
ALTER TABLE cool_table
DROP COLUMN boring_column;
```

---
## Practice

Consider the `gender` table. We want to add a new column called `members`. This column will store data about how many members each gender has.

| id | name       |
|----|------------|
| 1  | female     |
| 2  | male       |
| 3  | genderless |

Complete the code to add the column:

```sql
??? gender
ADD ??? ???;
```


* ALTER TABLE
* members
* INT
* UPDATE
* string

---
## Revision

Consider the `generation` table. How would you delete the `region_id` column:

| id | region_id | name           |
|----|-----------|----------------|
| 1  | 1         | generation-i   |
| 2  | 2         | generation-ii  |
| 3  | 3         | generation-iii |
| 4  | 4         | generation-iv  |
| 5  | 5         | generation-v   |
| 6  | 6         | generation-vi  |

???


* ALTER TABLE generation DROP COLUMN region_id;
* ALTER TABLE generation DROP region_id;
* ALTER generation DROP COLUMN region_id;
