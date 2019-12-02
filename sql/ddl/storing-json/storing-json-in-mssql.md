---
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

standards:
  sql.choose-sql-datatype.2: 10

tags:

  - introduction

  - workout

  - deep

aspects:
  - introduction
  - workout
  - deep


---

# Storing JSON in SQL Server

---
## Content

SQL Server, or Microsoft SQL, has no default JSON data type but provides functional support to query the JSON objects stored as strings:
```sql
CREATE TABLE poke_json(
  id bigint NOT NULL PRIMARY KEY,
  pokemon nvarchar(MAX)
);

INSERT INTO poke_json
VALUES('{
	"id": 1,
	"name": "Bulbasaur",
	"generation_id": 1,
	"types": ["poison", "grass"],
	"has_evolution": true,
  "moves": [{
      "name": "Tackle",
      "level": 1,
      "pp": 35,
      "power": 40,
      "accuracy": 100,
      "type": null
  }]}');
```
Creating tables and inserting values are mostly the same. Querying, on the other hand, is done differently:
```sql
SELECT id, JSON_VALUE(pokemon, '$.name')
AS name
FROM poke_json
WHERE ISJSON(pokemon) >= 1 AND
JSON_VALUE(pokemon, '$.moves[0].level') = 1
```
With the output:

| id | name      |
|----|-----------|
| 1  | Bulbasaur |

One of the advantages of MSSQL is that it can parse JSON strings as tables on the go.

---
## Practice

Querying the JSON `pokemon` field in a SQL Server database, select all Pokémon which have evolutions:
```sql
??? pokemon
??? poke_json ???
???(???, ???) = ???;
```

* `SELECT`
* `FROM`
* `WHERE`
* `JSON_VALUE`
* `pokemon`
* `$.has_evolution`
* `1`

---
## Revision

Microsoft SQL's command that parses JSON fields is

???


* `JSON_VALUE(column,field)`
* `PARSE_JSON(column,field)`
* `(column)@>(field)`
* `(column)->(field)`

 
 
