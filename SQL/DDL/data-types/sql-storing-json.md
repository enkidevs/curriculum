# JSON Data Type
author: mihaiberq

levels:

  - beginner

  - basic

type: normal

category: must-know

tags:
  - introduction
  - workout
  - deep



---
## Content

**JSON**, or JavaScript Object Notation, is a string that has a semantic value. A JSON object looks like this:
```JSON
{
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
  }]
}
```
As you can see, a JSON object looks very much like a table entry on its own[1]. Even though it's a different concept altogether (fields can have their own fields), relational databases started supporting them as data types not too long ago.

**Note:** Table must be encoded using `UTF-8` in order for them to support JSON strings.


### PostgreSQL

There are two possibilities for storing JSON objects:
- `json`: stores an exact copy of the string, which is reparsed on every query targeting it
- `jsonb`: stores data in binary format, but makes processing faster

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

### MySQL

MySQL has only one data type for JSON values: `JSON`.

Creating a table and inserting values into it is similar to PostgreSQL syntax:
```SQL
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
```SQL
SELECT *
FROM poke_json
WHERE pokemon->"$.types"->"$[0]" = "poison";
```
And the output is:
```
   id   |     pokemon
========+===================
    1   | {"id": 1, "name": "Bulbasaur" ...}
```
There's also `->>` for cases in which a single selected field must be unquoted: `"Bulbasaur" ->> Bulbasaur`.

### Microsoft SQL

MSSQL has no default JSON data type, but provides functional support to query the JSON objects stored as strings:
```SQL
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
```SQL
SELECT id, JSON_VALUE(pokemon, '$.name') AS name
FROM poke_json
WHERE ISJSON(pokemon) > 1 AND
JSON_VALUE(pokemon, '$.moves[0].level') = 1;
```
With the output:
```
  id   |    name
=======+============
   1   |  Bulbasaur
```
One of the advantages of MSSQL is that it can parse JSON strings as tables on the go.


---
## Footnotes

[1:NoSQL]
Because of the versatility of JSON files, a new type of database had been created to store and query them. You have probably heard of NoSQL (non-SQL or non-relational) databases.

---
## Practice

Querying the JSON `pokemon` field in a PostgreSQL database, select all Pokémons which have evolutions:
```SQL
??? pokemon
??? poke_json
??? ??? ??? '{"has_evolution": ???}';
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

While storing JSON data is possible in most relational databases, the ones that prioritize such practices are

???

* NoSQL databases
* PostgreSQL databases
* MySQL databases
* SQL Server databases
