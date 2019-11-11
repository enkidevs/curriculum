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

# Types Of NoSQL Databases

---

## Content

When talking about databases, there are multiple types you can choose from. In the following insights we will present the main types with their advantages and disadvantages.

### Key-Value databases

*Key-Value databases* store data as key-value pairs, also called dictionaries.

A dictionary of key-value pairs is treated as a single opaque collection, no matter which values it contains or if it contains any.

By having opaque values, Key-Value databases only allow querying by key, meaning that they are simple and limited.

This also means that a dictionary contains only the values we explicitly stored into it, without any extra data such as placeholder values. This allows Key-Value databases to often use far less memory than traditional SQL databases.

Since each value in a dictionary corresponds to a particular key, these databases allow us to perform very fast lookups and operations on any value uniquely identifiable by its key.

Some popular key-value databases are **Oracle NoSQL Database**, **Redis**, **Google Cloud Datastore**, **Hbase**, and more.
