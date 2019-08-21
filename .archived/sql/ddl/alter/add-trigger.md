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

*Triggers* are defined to let the computer know it has to run a certain set of actions when an event happens. Usually these events mean executing: `UPDATE`, `INSERT` and `DELETE` statements. It's basically a database object that is bound to a table and executes automatically. Examples of types of triggers:
- After triggers
- Instead of triggers

*After triggers* run after an `INSERT`, `UPDATE` or `DELETE`:
```sql
CREATE TRIGGER afterInsert
ON db_name.table_name
AFTER DELETE
AS BEGIN
  UPDATE another_table
  SET someColumn = Column2
  FROM deleted
END
GO;
```

What this trigger does: it updates "another_table" with the value that has just been deleted from "db_name.table_name".

*Instead of triggers* specify what statement is to run instead of the `INSERT`, `UPDATE` or `DELETE` statements:
```sql
CREATE TRIGGER insteadUpdate
ON db_name.table_name
INSTEAD OF INSERT
AS BEGIN
  UPDATE another_table
  SET someColumn = Column2
  FROM inserted
END
GO;
```

This time we say: If we update table "db_name.table_name", then update "another_table" instead.

---
## Revision

Create a trigger such that each time we update something to the "region" table under the "name" column, it'll insert the same entry to our "region_backup" table on the "name_backup" column:
```sql
??? afterInsertRegion
ON pokemon.region
AFTER ???
AS BEGIN
  UPDATE region_backup
  SET ??? = name
  FROM region
???
GO;
```

* CREATE TRIGGER
* UPDATE
* name_backup
* END
* START
* name
* region_id
* INSERT
 
 
