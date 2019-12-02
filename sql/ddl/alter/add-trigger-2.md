---
author: kapnobatai136

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

# Add Trigger (2)

---
## Content

In the previous insight we showed you two arguments, `RESTRICT` and `NO ACTION`, which are used to restrict deleting records that have a matching row in the child tables. It's also possible to create triggers that modify the data in a table using arguments such as `CASCADE`, `SET NULL`, and `SET DEFAULT`.

### CASCADE

Using the `CASCADE` argument means that when a row in the parent table is deleted or updated, all the matching rows in the child tables are deleted or updated as well. Here is an example syntax:

```sql
...
  ON UPDATE CASCADE
  ON DELETE CASCADE,
...
```

### SET NULL

Using the `SET NULL` argument means that when there is a change in the parent table (update or delete) the corresponding records in the child tables are set to have a `NULL` value. Here is what it would look in practice:

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

---
## Practice

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

---
## Revision

Complete the following syntax such that the *trigger* named `cstr_2` does the following:

- when deleting from the parent table the corresponding record in the child table is set to its default value
- when updating the parent table the corresponding record in the child table is updated

```sql
CREATE TABLE region (
  ...
  ??? cstr_2
  ??? (id)
  ??? pokemon(region_id)
  ON UPDATE ???
  ON DELETE ???,
  ...
);
```

* CONSTRAINT
* FOREIGN KEY
* REFERENCES
* CASCADE
* SET DEFAULT
* PRIMARY KEY
* RELATES
* ON INSERT
* IF UPDATE
* IF DELETE
