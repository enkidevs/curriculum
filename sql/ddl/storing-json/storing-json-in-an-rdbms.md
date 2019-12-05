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

# Storing JSON in an RDBMS

---
## Content

**JSON**, or JavaScript Object Notation, is a string that has a semantic value. A JSON object looks like this:
```json
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
As you can see, a JSON object looks very much like a table entry on its own[1]. Even though it's a different concept altogether (stacked fields), relational databases started supporting them as data types not too long ago.

While JSON isn't a RDBMS standardized type, vendors took their liberty to implement their own way of dealing with it. The lack of specifications comes with a cost: big differences in how storing, querying and updating work from vendor to vendor.


A common requirement that tables include is that JSON fields must use `UTF-8` encoding, regardless of the SQL implementation.

---
## Practice

Which of the following JSON objects is valid?
```json
{
  'id': 'A',
  'name': 'John',
  'age': 36,
  'friends': ['Anna', 'Mike']
},
{
  "id" = "B",
  "name" = "Anna",
  "age" = 33,
  "friends" = ["John", "Mike"]
},
{
  "id": "C",
  "name": "Mike",
  "age": 34,
  "friends": ["John", "Anna"]
}
```

???


* C
* A
* B

---
## Revision

While storing JSON data is possible in most relational databases, the ones that prioritize such practices are

???


* NoSQL databases
* PostgreSQL databases
* MySQL databases
* SQL Server databases

---
## Footnotes
[1:NoSQL]
Because of JSON's versatility and popularity of JavaScript, a new type of database had been created to better match the needs of developers. They are called NoSQL (non-SQL or non-relational) databases.
 
 
