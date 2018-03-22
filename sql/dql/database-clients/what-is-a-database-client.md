# What is a database client?
author: Nick Daminov

levels:

  - beginner

  - basic

type: normal

category: must-know

inAlgoPool: false

parent: connection-strings


standards:
  sql.connect-client.0: 10
  sql.connect-client.1: 10

tags:
  - introduction


links:

  - '[Top 10 free Database Management Tools](https://techtalk.gfi.com/top-10-free-database-tools-for-sys-admins/)'
  - '[Comparison of those tools](https://en.wikipedia.org/wiki/Comparison_of_database_tools)'

---
## Content

A **Database Client** is any piece of software (also known as a *Database Management Tool*) that issues queries to a *Database Server*, which holds the data. A Database Client is essential to have access to the database, and there are many types:
 - Software Packages (like pg in Node, or jdbc in Java)
 - Command Line Applications
 - GUI Interfaces


As a client we do not need to know how data gets allocated on the storage device and how the server configuration gets set up. So let's forget the backend part (server) of using a database and look at Database Client.

Some of the Database Clients can act as one or both of the following things:
 - The end user GUI/command line database management system which is connected to the database server.
 - When used as a software package, it can act as an intermediary between other applications and the database that holds the data.

---
## Practice

The software through which information in a database is queried is called

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
