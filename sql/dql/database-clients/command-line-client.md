---
author: Nick Daminov

levels:

  - basic

  - medium

type: normal

category: feature

inAlgoPool: false

standards:
  sql.connect-client.0: 10
  sql.connect-client.1: 10

tags:


  - workout


links:

  - '[PostgreSQL Download](https://www.postgresql.org/download/){website}'


aspects:
  - workout


---

# Command-Line Client

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

Let's take PostgreSQL on MacOS X as an example. After the default installation (link provided in 'learn more' section), we have to go to */Library/PostgreSQL/9.6/bin* folder and run the `psql` binary file with proper arguments:
`./psql "sslmode=require host=aws-us-east-1-portal.29.dblayer.com port=23336 dbname=pokemon user=ashketchum"`

**NOTE: Bookmark this insight, and try connecting to the database on your own!**

---
## Practice

Fill in the connection string with correct arguments:

./psql "sslmode=require
 host=???
 port=??? dbname=???
  user=???"


* aws-us-east-1-portal.29.dblayer.com
* 23336
* pokemon
* ashketchum

---
## Revision

Fill in the connection string with correct arguments:

./psql "sslmode=require
 host=???
 port=??? dbname=???
 user=???"


* aws-us-east-1-portal.29.dblayer.com
* 23336
* pokemon
* ashketchum
 
 
