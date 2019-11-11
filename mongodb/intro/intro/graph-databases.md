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

# Graph databases

---

## Content

**Graph databases**, as the name implies, store data in graphs. The graphs are represented as collections of `Nodes` that hold some *properties* and are connected with `Edges`(Relationships) to one another. Each `Edge` has information about the relationship between each Node.

The relationships in `Graph` databases are a first-class citizen and directly stored. This allows data to be linked together explicitly and, in many cases, retrieved with one operation. In other words, a `Graph` database usually allows for fast information retrieval across different nodes (unlike multi-table joins in relational databases which are quite costly).

Some popular `Graph` databases are **GraphD**, **Neo4j**, **ArangoDB**, **OrientDB** and more.