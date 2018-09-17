---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.connect-client.2: 5

tags:
  - introduction

links:

  - '[More on RDBMS](https://en.wikipedia.org/wiki/Comparison_of_relational_database_management_systems){website}'

aspects:
  - introduction


---

# Database server types

---
## Content

There are a number of RDBMS servers available, developed by different companies or open-source foundations. All of these databases can be interfaced with through SQL, though there are slight variations between them.

All SQL databases have the following features:
- ACID (Atomicity, Consistency, Isolation, Durability)
- transactions
- referential integrity
- unicode
- multi-version concurrency
- fine-grained locking

*Postgres* is a powerful free and open-source RDBMS developed and maintained by developers around the world. It does not require licensing fees to use, so it's market share has grown considerably recently. It is suitable for small-to-large applications.

*MySQL* is one of the world's most popular open source databases. It was acquired by Sun Microsystems, and they now require a license fee to use it. It's the **M** in the LAMP[1] web development stack. It is suitable for small-to-large applications.

*MS Access* is an entry level database management software developed by Microsoft. It's a powerful database for small-scale projects. MS Access is the first choice of software developers to develop application software. It uses the Jet database engine to deploy a graphical user interface.

*MS SQL Server* is a RDBMS server developed by Microsoft. It's suitable for many different workloads, from small hobby projects to huge production applications. It is not open-source, and licensing fees are required to deploy it to production. There are a large suite of powerful tools for managing MS SQL Server developed by Microsoft, and a large community that uses them.

*Oracle* is a multi-user database developed by Sun Microsystems. It's most suitable for large databases, and it's the backbone of many enterprise applications. It is not open-source, and licensing fees are required to deploy it to production.

It is important you know which server you are using, as commands can differ slightly between them.

---
## Practice

Which of the following is not a type of database server?
???

* Node.js Server
* MS Access
* MS SQL server
* MySQL
* Postgres

---
## Revision

Which database is open-source, _and_ does not require a license for commercial use?

???

* Postgres
* MySQL
* MS Access
* Oracle
* MS SQL Server


