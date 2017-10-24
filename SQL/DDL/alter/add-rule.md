# Add Rule
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
  sql.define-sequences-or-default-values: 10

links:

  - '[More on CREATE RULE](https://www.postgresql.org/docs/9.3/static/sql-createrule.html)'

tags:
  - workout

---
## Content

We can also add rules to specific clauses. `CREATE RULE` statement enables us to do it. We will use an example in order to make it easier to understand. What we will do is create a new rule such that each time we `SELECT` something from table1, it will select all from table2 as well.
```
CREATE RULE "rule_name"
AS ON SELECT TO table1
DO ALSO
  SELECT * FROM table2;
```

`CREATE RULE` is a PostgresSQL language extension.

---
## Revision

Create a rule such that when we `SELECT` from "region" table, it will display the "id" column every time:
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

??? "include_id"
AS ON ??? region
DO ALSO
  SELECT ??? FROM region;

````

* CREATE RULE
* SELECT TO
* id
* UPDATE
* FROM
* region_id
