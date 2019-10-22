---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - obscura
  - introduction

type: normal

category: must-know

links:
  - '[Analysis of the NoSQL Landscape](http://blog.knuthaugen.no/2010/03/the-nosql-landscape.html){website}'

---

# Document databases

---

## Content

**Document databases** represent an extension to `Key-value` databases. They store data in sets of key-value dictionaries called *documents*, encoded as JSON, BSON (Strictly on MongoDB), XML or YAML.

Document databases organize documents into groups called *collections*.

Unlike a Key-Value database, where a key-value dictionary is inherently opaque to the database, a Document database understands the internal structure of these dictionaries.

This allows us to query a Document database for information based on any part of a document's shape, not just the key.

This also enables the database to optimize access for such non-key property lookups, by remembering those properties as additional keys. This is known as *indexing*.
An index in a Document database allows us to have one or more additional keys linking to a document, enabling multiple-ways to quickly retrieve the same data.

Some popular `document` databases are **MongoDB**, **CouchDB**, **RaptorDB**, **CloudKit**, etc.

---
## Practice

Which are the 4 types of NoSQL databases:

???

* Column, Graph, Document, Key-Value
* Column, Graph, Table, Key-Value
* Table, Graph, Circle, Spreadsheet
* Spreadsheet, Table, Key-Value, Index
