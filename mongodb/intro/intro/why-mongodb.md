---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction
  - workout

type: normal

category: must-know

links:
  - '[Official MongoDB Website](https://www.mongodb.com){website}'

---

# Why MongoDB?

---
## Content

MongoDB is a free, open-source, document-based database that stores documents in BSON (Binary JSON) format, grouped in *collections*.

Those documents are schema-less and can have any number of fields, varying over time. For instance, in any valid MongoDB collection, we can have one document with 1 field, another document with 40 fields, and another document with 12 fields.

Notable properties:

- Support for indexes on any field or sub-field of a document
- Three ways to perform aggregation: the aggregation pipeline, the map-reduce function, and single-purpose aggregation methods
- Drivers in numerous programming languages such as `C`, `C++`, `Java`, `JavaScript`, `Perl`, `Python`, `Ruby`, and more.
- Support for *ad hoc* queries such as field, range, and regular expression searches.
- High availability using replica sets with two or more copies of the data where each replica set may act as the primary replica at any time.
- Support for multi-document `ACID` transactions

---
## Practice

Documents in a MongoDB collection always have to have the same structure.

???

* False
* True
