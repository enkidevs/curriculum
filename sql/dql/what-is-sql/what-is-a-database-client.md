---
author: nickdaminov

levels:

  - beginner

  - basic

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.connect-client.0: 10
  sql.connect-client.1: 10

tags:
  - introduction

aspects:
  - introduction

links:

  - '[Top 10 free Database Management Tools](https://techtalk.gfi.com/top-10-free-database-tools-for-sys-admins/){website}'
  - '[Comparison of those tools](https://en.wikipedia.org/wiki/Comparison_of_database_tools){website}'

parent: connection-strings

---

# What is a database client?

---
## Content

A **Database Client** is any piece of software that issues queries to a *Database Server*, which holds the data.
There are many types:
 - Software Packages (like `pg` in Node, or `jdbc` in Java, `psycopg2` in Python)
 - Command Line Applications, like `psql`
 - Graphical Interfaces, like SQL Server Management Studio

Some of the Database Clients can act as one or both of the following things:
 - The end user GUI/command line database management system which is connected to the database server.
 - When used as a software package, it can act as an intermediary between other applications and the database that holds the data (such as web servers)

---
## Practice

The software through which information in a database is *queried* is called the:

???

* Database Client
* Database Server
* Server Manager
* Database Application

---
## Revision

What is a Database Client?

???

* The software that queries information from the database server
* An optional program that a user can install on top of the Database Server
* The software through which memory is allocated on the server

