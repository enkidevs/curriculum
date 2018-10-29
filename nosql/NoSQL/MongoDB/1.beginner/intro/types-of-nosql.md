---
author: stefan.stojanovic

levels:
  - beginner
  - introduction
    
type: normal

category: must-know

standards: 

links:
  - '[link to a discussion](https://enki.com)'

---

# Types Of NoSQL Databases
---

## Content

### Key-Value databases

The `Key-value` databases store data in a key-value pair. These types of databases take far less memory and tend to work faster than traditional SQL databases. This is because the values are tied to keys, and if you want to modify or delete a value, you don't have to search through the database, but rather just search with the key.

The `Key-value` databases are flexible, have high-performance, high-availability, and massive scalability.

Some popular key-value databases are **Oracle NoSQL Database**, **Redis**, **Google Cloud Datastore**, **Hbase**, **Arango**(Multi-model, Key-value, graph, document) and more.

### Column databases

The `Column` databases, also referred to as **Column family databases**, **Column-oriented databases**, **Wide column databases**, etc., use something called a `keyspace`.
This `keyspace` is used to hold together all the `column families`(similar to tables) which have rows that have columns.

The **column families** can have multiple rows, and each row can have a different number of columns. The columns can also differ from one another, in length, type of data they store, have different names, etc.

Each row also has a unique key used to identify that row either for modifying or deleting data(Like key-value databases). The `Column` based databases have good compression, scalability, fast loading, and querying and work great with massive data.

Some popular `column` databases are **Bigtable**, **Cassandra**, **Hbase**(can be used as a key-value or column database), etc.

### Graph databases

The `Graph` databases store data in graphs. The graphs are collections of Vertices, also referred to as Nodes. These Nodes hold values, referred to as *properties* and are connected with Edges(Relationships). Essentially each node has information called properties and each `Edge` has information about the connection(Relationship) between each property.

`Graph` databases have great performance, are flexible and have great agility.

Some popular `graph` databases are **GraphD**, **Neo4j**, **ArangoDB**, **OrientDB** and more.

### Document databases

**Document** databases also referred to as document store databases, store data in documents, encoded as JSON, BSON(Strictly on MongoDB), XML or YAML. The document databases are similar to the key-value databases. They store data in documents, which are essentially values in a key-value system, and then stores those documents in `collections`.  

The document's structure(number of fields) can also differ from one another.

**Document** based databases are flexible, have fast write and query performance.

Some popular `document` databases are **MongoDB**, **CouchDB**, **RaptorDB**, **CloudKit**, etc.

---
## Practice

Chose the correct 4 types of NoSQL databases:

???

* Column, Graph, Document, Key-value
* Column, Graph, Table, Key value
* Table, Graph, Circle, Spreadsheet
* Spreadsheet, Table, Key value, index