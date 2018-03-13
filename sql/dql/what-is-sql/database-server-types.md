---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

inAlgoPool: false

tags:

  - introduction

  - workout


links:

  - '[More on RDBMS](https://en.wikipedia.org/wiki/Comparison_of_relational_database_management_systems){website}'


---

# Database server types

---
## Content

There are a number of RDBMS servers available, each with different strengths:

*MySQL* is one of the world's most popular open source databases. It is most commonly used as a database for web applications. It's the **M** in the LAMP[1] web development stack. MySQL supports many different operating systems, such as: Microsoft Windows, Linux and Mac OS X.

Some MySQL features:
- ACID (Atomicity, Consistency, Isolation, Durability)
- transactions
- referential integrity
- unicode
- multi-version concurrency
- fine-grained locking

*MS Access* it's an entry level database management software. It's a powerful database for small-scale projects. MS Access is the first choice of software developers to develop application software. It uses the Jet database engine to deploy a graphical user interface.

Some MS Access features:
- option of importing and exporting the data to many formats including Excel, Outlook, ASCII
- ACID (Atomicity, Consistency, Isolation, Durability)
- transactions
- referential integrity
- unicode
- multi-version concurrency
- fine-grained locking

*MS SQL Server* is a RDBMS server developed by Microsoft to store and retrieve data as requested by the user. It's suitable for different workloads and it uses primary query languages such as: T-SQL and ANSI SQL.

Some MS SQL Server features:
- database mirroring
- ACID (Atomicity, Consistency, Isolation, Durability)
- transactions
- referential integrity
- unicode
- multi-version concurrency
- fine-grained locking
- a large community of professional users

*Oracle* is a multi-user database. It aims to manage big data collections among multiple clients requesting and sending data.  It is an excellent database server choice for client-server computing. It supports all major operating systems for both clients and servers.

Some Oracle features:
- ACID (Atomicity, Consistency, Isolation, Durability)
- transactions
- referential integrity
- unicode
- multi-version concurrency
- fine-grained locking

It is important you understand which server you use, as commands can differ slightly between them.

---
## Practice

Assume we have a huge database with thousands of users sending and retrieving data. If we need to be able to export data in Excel format, what type of RDBMS do you think will best fit our needs?
???


* MS Access
* MS SQL server
* MySQL

---
## Revision

Suppose you want to learn coding and you decided to build your first web application using LAMP development stack. Which server would you choose for hosting your database?
???


* MySQL
* MS Access
* Oracle

---
## Footnotes
[1:LAMP]
It is a development stack formed of:
- Linux
- Apache
- MySQL
- PHP
