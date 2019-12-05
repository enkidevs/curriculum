---
author: kapnobatai136

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.define-columns.2: 10

tags:

  - workout

  - deep


links:

  - '[More on ADD DEFAULT](https://www.w3schools.com/sql/sql_default.asp){website}'


aspects:
  - workout
  - deep


---

# Alter Characteristics

---
## Content

There are three main characteristics which you can change using an `ALTER` command:

- the data type
- the `DEFAULT` clause
- the `NOT NULL` clause

### Data Type

Although you are able to change the data type of a column, the new definition must be compatible with the old existing data. For example, if you change a numeric type to `VARCHAR` this will always work. If, however, you change a `VARCHAR` type to numeric, values like `'abc'` will fail to be cast as numbers.

The syntax for changing a data type looks like this:

```sql
ALTER TABLE table_name
ALTER COLUMN column_name
SET DATA TYPE new_data_type;
```

### Default Value

You can use the `ALTER TABLE` statement to either set or drop default values for your desired columns. The syntax for adding a new default values is:

```sql
ALTER TABLE table_name
ALTER COLUMN column_name
SET DEFAULT value;
```

Keep in mind that the `value` must have the same data type as the column. 

If you wanted to remove the default value from one of your columns, you would use:

```sql
ALTER TABLE table_name
ALTER COLUMN column_name
DROP DEFAULT;
```

### NOT NULL

The `NOT NULL` clause can also be altered for any of your columns, and the syntax is very similar to the one used for default value. To add a `NOT NULL` clause, you would use:

```sql
ALTER TABLE table_name
ALTER COLUMN column_name
SET NOT NULL;
```

And if you wanted to remove the `NOT NULL` clause, you would use:

```sql
ALTER TABLE table_name
ALTER COLUMN column_name
DROP NOT NULL;
```

---
## Practice

Look at the `region` table below. How would you set 1 as the default value to all entries in the `region_id` column?

| id | region_id | name           |
|----|-----------|----------------|
| 1  | 1         | generation-i   |
| 2  | 2         | generation-ii  |
| 3  | 3         | generation-iii |
| 4  | 4         | generation-iv  |
| 5  | 5         | generation-v   |
| 6  | 6         | generation-vi  |

```sql
??? region
ALTER ??? ???
??? 1;
```

* ALTER TABLE
* COLUMN
* region_id
* SET DEFAULT
* region
* UPDATE
* ALTER COLUMN

---
## Revision

We'd like to set the default value `"ruby"` to all entries in the column `name` in the `version` table. We would also like to remove the `NOT NULL` clause to the `id` column.

| id | version_group_id | name     |
|----|------------------|----------|
| 1  | 1                | red      |
| 2  | 1                | blue     |
| 3  | 2                | yellow   |
| 4  | 3                | gold     |
| 5  | 3                | silver   |
| 6  | 4                | crystal  |
| 7  | 5                | ruby     |
| 8  | 5                | sapphire |

Complete the following sql code to reflect these changes:

```sql
??? version
ALTER ??? name
??? 'ruby';
--
??? version
??? COLUMN id
??? ???;
```

* ALTER TABLE
* COLUMN
* SET DEFAULT
* ALTER TABLE
* ALTER
* DROP
* NOT NULL
* MODIFY TABLE
* MODIFY TABLE
* ROW
* REMOVE
* NOT ZERO
* DROP DEFAULT
