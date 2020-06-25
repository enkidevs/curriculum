---
author: nickdaminov

levels:
  - basic
  - medium

type: normal

category: feature

inAlgoPool: false

standards:
  sql.connect-client.0: 10
  sql.connect-client.1: 10

links:
  - '[Top 10 GUI Database Tools](https://techtalk.gfi.com/top-10-free-database-tools-for-sys-admins/){website}'
  - '[pgAdmin Download](https://www.pgadmin.org/download/){website}'
  - '[Installing .dmg package](https://apple.stackexchange.com/questions/64845/how-do-i-install-applications-from-a-dmg-file){website}'

aspects:
  - workout

---

# GUI Client

---
## Content

GUI Clients on the other hand appear in a separate window and are more preferred by users because of their user friendly interface. These database tools can also work with different DBMS's.

Some of them act as web based interfaces such as Adminer, others are just like regular desktop apps.

As an example we will take pgAdmin 4 v1.2.0 on MacOS X. After downloading, it will appear as a `.dmg` package which you can run directly or install manually (link provided in the *learn more* section).

In order to connect to a database, click `"Add new Server"` in `"Quick Links"`, fill in all the necessary information and click `"Save"`. Now, the connection has been established. For further information please refer to the *pgAdmin* documentation.

---
## Practice

Suppose we have the following connection string:
```
psql "sslmode=require host=aws-us-east-1-portal.29.dblayer.com port=23336 dbname=pokemon user=ashketchum"
```

The name of the database is: ???.

The username is: ???.

* pokemon
* ashketchum

---
## Revision

Suppose we have the following connection string:
```
psql "sslmode=require host=aws-us-east-1-portal.29.dblayer.com port=23336 dbname=pokemon user=ashketchum"
```

The name of the database is: ???.

The username is: ???.

* pokemon
* ashketchum
