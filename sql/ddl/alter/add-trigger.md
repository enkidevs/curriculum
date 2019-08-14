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

# Add Trigger

---
## Content

*Triggers* are defined to let the computer know it has to run a certain set of actions when an event happens. Usually this events mean executing: `UPDATE`, `INSERT` and `DELETE` statements. Basically it's a database object that is bound to a table and executes automatically. For the SQL Standard, there are two main types of triggers:

- `ON UPDATE` triggers
- `ON DELETE` triggers

These *triggers* are added when defining a `FOREIGN KEY` constraint, and both `ON UPDATE` and `ON DELETE` have several arguments which decide what action is taken after a `DELETE` or `UPDATE` statement. Here is how the default syntax would look:

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

### CASCADE

Using the `CASCADE` argument means that when a row in the parent table is deleted or updated, all the matching rows in the child tables are deleted or updated. Here is an example syntax:

```sql
...
  ON UPDATE CASCADE
  ON DELETE CASCADE,
...
);
```

### SET NULL

Using the `SET NULL` argument means that when there is a change in the parent table (update or delete) the corresponding records in the child tables are set to have a `NULL` value. Here is how it would look in practice:

```sql
...
  ON UPDATE SET NULL
  ON DELETE SET NULL,
...
```

### SET DEFAULT

The `SET DEFAULT` argument is very similar to `SET NULL`, but instead of storing a `NULL` value, the RDBMS changes the corresponding records in the child tables to their default values.

```sql
...
  ON UPDATE SET DEFAULT
  ON DELETE SET DEFAULT,
...
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

Complete the following syntax such that the *trigger* name 'integrity' prohibits deleting a record from the `pokemons` table if there are any matching records in the `region` table.

```sql
CREATE TABLE region (
  ...
  ??? integrity
  ??? (id)
  ??? pokemons(region_id)
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

---
## Revision

Create trigger such that each time we update something to the `region` table under the `name` column, it will insert the same entry to our `region_backup` table on the `name_backup` column:

```sql
CREATE TABLE region_backup (
  name_backup VARCHAR,
  ...
  ??? bckup_cstr
  ??? (name_backup)
  ??? region(name)
  ??? ???
);
```


* CONSTRAINT
* FOREIGN KEY
* REFERENCES
* ON UPDATE
* CASCADE
* ON DELETE
* RESTRICT
* NO ACTION
* SET DEFAULT
* SET NULL