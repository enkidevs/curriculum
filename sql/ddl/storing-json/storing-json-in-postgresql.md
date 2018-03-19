# Storing JSON in PostgreSQL
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

---
## Content

In PostgreSQL, there are two possible ways of storing JSON objects:
- `json`: stores an exact copy of the string, which is reparsed for every query targeting it
- `jsonb`: stores data in binary format, which makes querying faster

In practice, it is recommended to use `jsonb`:
```SQL
CREATE TABLE poke_json(
  id bigserial PRIMARY KEY,
  pokemon jsonb
);
```
Inserting new JSON values is done through strings:
```SQL
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
And querying object properties is done using `@>` operator:
```SQL
SELECT *
FROM poke_json WHERE
pokemon @> '{"types": ["poison", "grass"]}';
```
With the output:
```
   id   |     pokemon
========+===================
    1   | {"id": 1, "name": "Bulbasaur" ...}
```

---
## Practice

Querying the JSON `pokemon` field in a PostgreSQL database, select all Pokémon which have evolutions:
```SQL
??? pokemon
??? poke_json ???
??? ??? '{"has_evolution": ???}';
```
* `SELECT`
* `FROM`
* `WHERE`
* `pokemon`
* `@>`
* `true`
* `->`
* `->>`

---
## Revision

PostgreSQL's operator for JSON parsing is

???

* `@>`
* `->`
* `->>`
* `@`
* `JSON_VALUE`
