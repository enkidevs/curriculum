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

If we would like to add a new column to a certain table, we can use the `ALTER TABLE` statement:
```sql
ALTER TABLE table_name
ADD column_name datatype;
```

To delete a column from our table, we can use the following statement:
```sql
ALTER TABLE table_name
DROP COLUMN column_name
```

---
## Practice

Consider the "gender" table. We want to add a new column called "members". This column will store data about how many members each gender has:
```
id |    name    
===+============
 1 | female
 2 | male
 3 | genderless
(3 rows)

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

Consider the "generation" table. We want to delete the "region_id" column:
```
id | region_id |      name      
===+===========+===============
 1 |         1 | generation-i
 2 |         2 | generation-ii
 3 |         3 | generation-iii
 4 |         4 | generation-iv
 5 |         5 | generation-v
 6 |         6 | generation-vi
(6 rows)

    ???
```

* ALTER TABLE generation DROP COLUMN region_id;
* ALTER TABLE generation DROP region_id;
* ALTER generation DROP COLUMN region_id;
 
 
