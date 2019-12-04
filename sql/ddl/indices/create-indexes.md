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
  sql.define-indices.0: 10
  sql.define-indices.2: 10

tags:

  - workout

  - deep


links:

  - '[PostgreSQL Create Index](https://www.postgresql.org/docs/9.1/static/sql-createindex.html){documentation}'
  - '[MySQL Create Index](https://dev.mysql.com/doc/refman/5.7/en/create-index.html){website}'
  - '[MSSQL Create Index](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-index-transact-sql){website}'
  - '[OracleDB Create Index](https://docs.oracle.com/cd/B28359_01/server.111/b28310/indexes003.htm#ADMIN11722){website}'
  - '[Create Index W3Schools](https://www.w3schools.com/sql/sql_create_index.asp){website}'

parent: add-rule

aspects:
  - workout
  - deep


---

# Create Indices

---
## Content

Indices[1] play a big part in the *performance* of the SQL Server database. Indices are created on **columns** in tables and they provide a fast way to look up data based on the *values*. For example when we index one **column** and want to search a row based on some *values* from that column. Then the SQL Server finds that *value* in the indices and uses it to locate the whole row.

There are two main types of indices:
- *clustered* - they store the actual data of the whole element's row. An important feature of the clustered indices is that the indexed values are sorted in either ascending or descending order. This means that a table can only have one clustered index on it
- *non-clustered* - they store only values from the indexed columns and the row locators to the actual data on the row. A table can have multiple non-clustered indices associated with it

Note that a table with a clustered index on it is called *clustered table* and one that contains non-clustered indices only is called *heap*.

If we want to create a *non-clustered* index:
```sql
CREATE INDEX index_name
ON table_name (column1, column2, ...)
```
This would create an index called `index_name` on the table called `table_name` with the specified columns.


If we want to create a *clustered* index:
```sql
CREATE UNIQUE INDEX index_name
ON table_name (col1 DESC, col2 ASC, ...)
```
This would create an index on the specified table and columns. 

The main difference between *non-clustered* and *clustered* indices is that for the latter we need to specify the order in which we want the entries to be ordered.

---
## Practice

Create an index on the following table, on the `region_id` and `name` columns. It needs to be a non-clustered index:

| id | region_id | name           |
|----|-----------|----------------|
| 1  | 1         | generation-i   |
| 2  | 2         | generation-ii  |
| 3  | 3         | generation-iii |
| 4  | 4         | generation-iv  |
| 5  | 5         | generation-v   |
| 6  | 6         | generation-vi  |

```sql
??? ??? test_index
ON region (???, name);
```

* CREATE
* INDEX
* region_id
* UNIQUE
* region

---
## Revision

Consider the `version` table. Suppose no primary key was defined for it. We need to create a clustered index that will order the `version_group_id` column in ascending order:


| id | version_group_id | name      |
|----|------------------|-----------|
| 4  | 3                | gold      |
| 5  | 3                | silver    |
| 6  | 4                | crystal   |
| 7  | 5                | ruby      |
| 8  | 5                | sapphire  |
| 9  | 6                | emerald   |
| 10 | 7                | firered   |
| 11 | 7                | leafgreen |
| 12 | 8                | diamond   |
| 13 | 8                | pearl     |

???

* CREATE UNIQUE INDEX "u_index" ON version (version_group_id ASC);
* CREATE UNIQUE INDEX "u_index" ON version (version ASC);
* CREATE INDEX "u_index" ON version (version_group_id ASC);

---
## Quiz 
### What statement gets columns and rows from tables?

Given a table called `ability` from our pokemon database:

```bash
id   | is_main_series | generation_id |      name      
=====|================|===============|===============
   1 | t              |             3 | stench
   2 | f              |             3 | drizzle
   3 | t              |             3 | speed-boost
   4 | t              |             3 | battle-armor
(...)
```

It doesn't have a `PRIMARY KEY` set so far. Create an index to define `ability`'s primary key.

 ???

* CREATE UNIQUE INDEX ability_pk ON ability(id ASC).
* CREATE INDEX ability_pk ON ability(id ASC).
* CREATE UNIQUE INDEX ability_pk ON ability(ability_id ASC).
* CREATE INDEX ability_pk ON ability(name ASC).

---
## Footnotes
[1:Indices]
Reasonable people differ when they refer to the plural of Index. Some people use Indices, some use Indexes.
 
 
