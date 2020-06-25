---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.define-tables.2: 10

tags:

  - workout

  - deep

links:

  - '[More on CREATE TRIGGER](https://www.codeproject.com/Articles/25600/Triggers-SQL-Server){website}'

aspects:
  - workout
  - deep


---

# Add Trigger (1)

---
## Content

*Triggers* are defined to let the computer know it has to run a certain set of actions when an event happens. Usually this event means executing `UPDATE`, `INSERT` and `DELETE` statements. Basically it's a database object that is bound to a table and executes automatically. 

For the SQL Standard, there are two main types of triggers:

- `ON UPDATE` triggers
- `ON DELETE` triggers

These *triggers* are added when defining a `FOREIGN KEY` constraint, and both `ON UPDATE` and `ON DELETE` have several arguments which decide what action is taken after a `DELETE` or `UPDATE` statement. Here is what the default syntax would look like:

```sql
CREATE TABLE table_name (
  ...
  CONSTRAINT constraint_name 
  FOREIGN KEY (col1)
  REFERENCES table_2(col2)
  ON UPDATE argument
  ON DELETE argument,
  ...
);
```

### RESTRICT

If you want to make sure you never delete any records that have a relationship defined, you can use the `RESTRICT` argument. This ensures that it is prohibited to delete a row from the parent table if there are any matching rows in the child tables.

```sql
...
  ON UPDATE RESTRICT
  ON DELETE RESTRICT,
...
```

### NO ACTION

The `NO ACTION` argument is similar to `RESTRICT` in that it prohibits changing any records from the parent table if there are matching records in the child tables. This argument is also the default that is used in the case that no *triggers* are defined. The difference between `RESTRICT` and `NO ACTION` will become more evident as you learn about deferring.

```sql
...
  ON UPDATE NO ACTION
  ON DELETE NO ACTION,
...
```

---
## Practice

Complete the following syntax such that the *trigger* named `'integrity'` prohibits deleting a record from the `pokemon` table if there are any matching records in the `region` table.

```sql
CREATE TABLE region (
  ...
  ??? integrity
  ??? (id)
  ??? pokemon(region_id)
  ??? RESTRICT
  ??? RESTRICT,
  ...
);
```

* CONSTRAINT
* FOREIGN KEY
* REFERENCES
* ON UPDATE
* ON DELETE
* PRIMARY KEY
* RELATES
* ON INSERT
* IF UPDATE
* IF DELETE