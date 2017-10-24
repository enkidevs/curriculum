# GUI Client
author: Nick Daminov

levels:

  - basic

  - medium

type: normal

category: feature

inAlgoPool: false

standards:
  sql.connect-client: 10

links:

  - '[Top 10 GUI Database Tools](https://techtalk.gfi.com/top-10-free-database-tools-for-sys-admins/)'
  - '[pgAdmin Download](https://www.pgadmin.org/download/)'
  - '[Installing .dmg package](https://apple.stackexchange.com/questions/64845/how-do-i-install-applications-from-a-dmg-file)'

---
## Content

GUI Clients on the other hand appear in a separate window and are more preferred by users because of their user friendly interface. These Database Tools can also work with different DBMS's.

Some of them act as web based interfaces such as Adminer, others are just like regular desktop apps.

As an example we will take pgAdmin 4 v1.2.0 on MacOS X. After downloading it will appear as `.dmg` package which you can run directly or install manually (link provided in *learn more* section).

In order to connect to Enki "Pokemon" click "Add new Server" in " Quick Links", fill in all the necessary information and click "Save":
 - host: aws-us-east-1-portal.29.dblayer.com
 - port: 23336
 - dbname: pokemon
 - user: ashketchum
 - password: iwannabetheverybest

Now the connection has been established, for further information please refer to the *pgAdmin* documentation.

**NOTE: Bookmark this insight, and try connecting to the databae on your own!**

---
## Practice

Suppose we have the following connection string:
`psql "sslmode=require host=aws-us-east-1-portal.29.dblayer.com port=23336 dbname=pokemon user=ashketchum"`

What is the name of a database???
What is user name???
* pokemon
* ashketchum

---
## Revision

Suppose we have the following connection string:
`psql "sslmode=require host=aws-us-east-1-portal.29.dblayer.com port=23336 dbname=pokemon user=ashketchum"`

What is the name of a database?
???
What is user name?
???
* pokemon
* ashketchum
