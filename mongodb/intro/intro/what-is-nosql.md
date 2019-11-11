---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

aspects:
  - introduction

type: normal

category: must-know

---

# What is NoSQL

---
## Content

`NoSQL`, or **Not only SQL**, is a common term to describe any database that strays away from the traditional relational database model.

Storing and retrieving of data in a NoSQL database is usually done through other means that aren't tables (which are used in relational databases).

There are 4 main types of NoSQL databases, named after the data structures they use to store data:

1. Key-value
2. Column
3. Graph
4. Document

The notable aspects that most NoSQL databases share are:

- **Schema-less**: Most NoSQL databases allow us to store unstructured data.

- **Eventually consistent**: NoSQL databases are often designed to optimize for speed and availability of data, rather than its accuracy. Changes are "eventually" propagated throughout the system (fast but not instant) meaning that queries for data might return stale information for a short period of time.

- **Not `ACID`**: Most NoSQL stores lack true ACID transactions[1], although a few databases have made them central to their designs. In computer science, `ACID` stands for a set of properties (Atomicity, Consistency, Isolation, Durability) intended to guarantee validity even in the event of errors, power failures, etc.

NoSQL databases increase the amount of potential data storage options a business can use, allowing companies to use more-specialized technologies for certain kinds of data. This idea is commonly known as *polyglot persistence*.

---
## Practice

When querying any NoSQL database, we are always guaranteed to get accurate and up-to-date information:

???

* False
* True

---
## Revision

In a typical NoSQL database, the structure (shape) of the data that can be stored is not enforced.

???

* True
* False

---
## Footnotes

[1:ACID transaction]
An `ACID` transaction should be *atomic*, *consistent*, *isolated*, *durable*:
- Atomic: although composed of multiple smaller tasks, a transaction succeeds or fails as a single "unit".
- Consistent: a transaction can only bring the database from one valid state to another, based on the database rules
- Isolation: execution of each transaction should be isolated. The effects of an incomplete transaction should not even be visible to other transactions.
- Durable: once a transaction has reached a final state, it will remain committed even in the case of a system failure.

