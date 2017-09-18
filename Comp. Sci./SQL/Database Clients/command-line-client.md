# Command-Line Client
author: Nick Daminov

levels:

  - basic

  - medium

type: normal

category: feature

links:

  - '[PostgreSQL Download](https://www.postgresql.org/download/)'

---
## Content

Some of the Database Tools have command-line interface, meaning that instead of a separate window or a in browser GUI we will interact with the database through the command line by entering various SQL commands. Examples of such tools are:
 - DbVisualizer
 - pgcli
 - PostgreSQL
 - etc.

As there are many RDBMS's (i.e. databases such as Oracle Database, MySQL, Microsoft SQL Server) a lot of Database Client software is built so that it could work with more than one database system.

In order to make the SQL course more practical we at Enki have created a PostgreSQL database "Pokemon" and provided a read only access for our users:
 - host: aws-us-east-1-portal.29.dblayer.com
 - port: 23336
 - dbname: pokemon
 - user: ashketchum
 - password: iwannabetheverybest


 **NOTE: please write the above details down if you want to access the database at your own time.**

Let's take PostgreSQL on MacOS X as an example. After the default installation (link provided in 'learn more' section), we have to go to */Library/PostgreSQL/9.6/bin* folder and run the `psql` binary file with proper arguments:
`./psql "sslmode=require host=aws-us-east-1-portal.29.dblayer.com port=23336 dbname=pokemon user=ashketchum"`

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
