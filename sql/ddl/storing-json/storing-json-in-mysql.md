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

# Storing JSON in MySQL

---
## Content

MySQL has only one data type for JSON values: `JSON`.

Creating a table and inserting values into it is similar to PostgreSQL syntax:
```sql
CREATE TABLE poke_json(
  id serial PRIMARY KEY,
  pokemon JSON
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
MySQL's equivalent of `@>` is `->`:
```sql
SELECT *
FROM poke_json
WHERE pokemon->"$.types[0]" = "poison";
```
And the output is:

| id | pokemon                            |
|----|------------------------------------|
| 1  | {"id": 1, "name": "Bulbasaur" ...} |

There's also `->>` for cases in which a single selected field must be unquoted: `"Bulbasaur" ->> Bulbasaur`.

---
## Practice

Querying the JSON `pokemon` field in a MySQL database, select all Pokémon which have evolutions:
```sql
??? pokemon
??? poke_json ???
pokemon ??? ??? = ???;
```

* `SELECT`
* `FROM`
* `WHERE`
* `->`
* `"$.has_evolution"`
* `TRUE`
* `0`
* `->>`

---
## Revision

MySQL's operator for JSON parsing is

???

* `->`
* `@>`
* `==`
* `JSON_VALUE`
* `$`

 
 
