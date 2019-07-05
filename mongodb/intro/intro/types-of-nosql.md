---
author: Stefan-Stojanovic

levels:
  - beginner
  - introduction

aspects:
  - introduction
  - workout

type: normal

category: must-know

standards:

links:
-
    - '[Analysis of the NoSQL Landscape](http://blog.knuthaugen.no/2010/03/the-nosql-landscape.html){website}'

---

# Types Of NoSQL Databases
---

## Content

### Key-Value databases

*Key-Value databases* store data as key-value pairs, also called dictionaries.

A dictionary of key-value pairs is treated as a single opaque collection, no matter which values it contains or if it contains any.

By having opaque values, Key-Value databases only allow querying by key, meaning that they are simple and limited.

This also means that a dictionary contains only the values we explicitly stored into it, without any extra data such as placeholder values. This allows Key-Value databases to often use far less memory than traditional SQL databases.

Since each value in a dictionary corresponds to a particular key, Key-Value databases allow us to perform very fast lookups and operations on any value uniquely identifiable by its key.

Some popular key-value databases are **Oracle NoSQL Database**, **Redis**, **Google Cloud Datastore**, **Hbase**, and more.

### Column databases

**Column databases**, also referred to as, **Wide Column databases**, store data into structures conceptually similar to tables but with less-strict rules, known as *column families*.

Column families are comprised of rows and columns, but unlike a relational database, the names and format of the columns can vary from row to row within the same family. Each column family can have multiple rows, and each row can have a different number of columns. The columns can also differ from one another, in length, type of data they store, have different names, etc.

Each row also has a unique key used to identify that row either for modifying or deleting data(Like key-value databases).

Since the column names as well as the record keys are not fixed, Column databases can be seen as two-dimensional key-value databases, where a combination of column and row id serves as a "key" for fast data lookups.

Some popular Column databases are **Bigtable**, **Cassandra**, **Microsoft Azure Cosmos DB**, etc.

### Graph databases

**Graph databases**, as the name implies, store data in graphs. The graphs are represented as collections of `Nodes` that hold some *properties*, and are connected with `Edges`(Relationships) to one another. Each `Edge` has information about the relationship between each Node.

The relationships in `Graph` databases are a first-class citizen and directly stored. This allows data to be linked together explicitly and, in many cases, retrieved with one operation. In other words, a `Graph` database usually allow for fast information retrieval across different nodes (unlike multi table joins in relational databases which are quite costly).

Some popular `Graph` databases are **GraphD**, **Neo4j**, **ArangoDB**, **OrientDB** and more.

### Document databases

**Document databases** represent an extension to `Key-value` databases.  They store data in sets of key-value dictionaries called *documents*, encoded as JSON, BSON (Strictly on MongoDB), XML or YAML.

Document databases organize documents into groups called *collections*.

Unlike a Key-Value database where a key-value dictionary is inherently opaque to the database, a Document database understands the internal structure of these dictionaries.

This allows us to query a Document database for information based on any part of a document's shape, not just the key.

This also enables the database to optimize access for such non-key property lookups, by remembering those properties as additional keys. This is known as *indexing*.
An index in a Document database allows us to have one or more additional keys linking to a document, enabling multiple-ways to quickly retrieve the same data.

Some popular `document` databases are **MongoDB**, **CouchDB**, **RaptorDB**, **CloudKit**, etc.

---
## Practice

Chose the correct 4 types of NoSQL databases:

???

* Column, Graph, Document, Key-Value
* Column, Graph, Table, Key-Value
* Table, Graph, Circle, Spreadsheet
* Spreadsheet, Table, Key-Value, Index
