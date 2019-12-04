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
  sql.define-relationships.0: 10

tags:

  - workout

  - deep


links:

  - '[More on ADD CONSTRAINT](https://www.tutorialspoint.com/sql/sql-alter-command.htm){website}'


aspects:
  - workout
  - deep


---

# Add Constraint

---
## Content

Sometimes we need to add ulterior constraints to the table we define. The `ALTER TABLE` statement enables us to do this. There are several types of constraints we can add. 

If we want to ensure that all values in one or more columns are different, we'd use the `UNIQUE` keyword like this:

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name
UNIQUE (column1, column2, ...)
```

If we want to limit the value range that can be stored in a column:

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name
CHECK (CONDITION)
```

If we want to add a `PRIMARY KEY` constraint:

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name
PRIMARY KEY (column1, column2, ...)
```

If we want to add a `FOREIGN KEY` constraint:

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name
FOREIGN KEY (column_name) 
REFERENCES table_name(column_name);
```

You can also remove any of your constraints by using the following syntax:

```sql
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

---
## Practice

Consider the `generation` table. We want to add a new constraint called `PK-constraints` in which we state that we want `region_id` and `name` columns to be primary keys:

| id | region_id | name           |
|----|-----------|----------------|
| 1  | 1         | generation-i   |
| 2  | 2         | generation-ii  |
| 3  | 3         | generation-iii |
| 4  | 4         | generation-iv  |
| 5  | 5         | generation-v   |
| 6  | 6         | generation-vi  |

```sql
ALTER TABLE ???
ADD ??? PK-constraints
??? (region_id, name)
```


* generation
* CONSTRAINT
* PRIMARY KEY
* KEY
* gender, gender
* name
* COLUMN

---
## Revision

Consider the `version` table. We want to add a `CHECK` constraint to `version_group_id` column. Any of its entries should not be bigger than 10:

| id | version_group_id | name       |
|----|------------------|------------|
| .. | ..               | ..         |
| 7  | 5                | ruby       |
| 8  | 5                | sapphire   |
| 9  | 6                | emerald    |
| 10 | 7                | firered    |
| 11 | 7                | leafgreen  |
| 12 | 8                | diamond    |
| 13 | 8                | pearl      |
| 14 | 9                | platinum   |
| 15 | 10               | heartgold  |
| 16 | 10               | soulsilver |
| 17 | 11               | black      |
| 18 | 11               | white      |

```sql
ALTER TABLE version
ADD ???
```

* CONSTRAINT check_constraint CHECK (version_group_id <= 10);
* PRIMARY KEY (version_group_id > 10);
* CONSTRAINT check_constraint UNIQUE (version_group_id <= 10);
 
 
