---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.connect-client.0: 10
  sql.connect-client.1: 10
  sql.connect-client.2: 10
  sql.connect-client.3: 10

tags:


  - workout


links:

  - '[More on connection strings](http://www.dofactory.com/reference/connection-strings){website}'


aspects:
  - workout


---

# Connection strings

---
## Content

*Connection strings* are URLs that point at a database hosted on a server. They use the Uniform Resource Indicator standard to structure the different parts. Abstractly, they look like this:

```
dbprotocol://username:password
  @hostname:port/dbname
  %delim%property=value
```

**dbprotocol** will be different for each database type. Postgres uses `postgres` and `pg`. MySQL uses `mysql`. Microsoft SQL Server uses `jdbc:sqlserver`.  
**username:password** is a standard way of specifying authentication. For some databases (namely SQL server), the user and password are entered at the end, in the `property=value` section.  
**hostname** is the address of the server the database is located on. If the database you are connecting to is _on your computer_, this value will be `localhost` or `0.0.0.0`. If it is _remote_, you will enter a hostname like `aws-us-east-1-portal.29.dblayer.com`.  
**port** is how you know which port to connect to. The default port differs between database servers.  
**delim** denotes a delmiter. Some databases read from the querystring `?property=value&property=value`, some use a semicolon `/pokemon;property=value;property=value`. These properties and values are used to send extra information to the database.

Here is the database connection string for the Postgres server hosting all of the examples from this course. You can connect to it, and perform those queries yourself!

```
postgres://ashketchum:iwannabetheverybest
@aws-us-east-1-portal.29.dblayer.com
  :23336/pokemon
?ssl=true
```

---
## Practice

Connect to a different `pokemon` database, this one hosted on MySQL. Use the username `gary`, password `rival`, to our database on `aws-us-west-1-portal.29.dblayer.com`. The port is `23336`.

```
???://
???:???
@???
:???
/???
```


* `mysql`
* `gary`
* `rival`
* `aws-us-west-1-portal.29.dblayer.com`
* `23336`
* `pokemon`
* `postgres`
* `dbprotocol`
* `hostname`
* `aws-us-east-1-portal.29.dblayer.com`
* `?ssl=true`
* `mssql`

---
## Revision

Connect to a `puppies` database, this one hosted on Postgres. Use the username `spot`, password `supersecret`, to our database on `aws-us-east-1-portal.42.dblayer.com`. The port is `23336`.

```
???://
???:???
@???
:???/???
```


* `postgres`
* `spot`
* `supersecret`
* `aws-us-east-1-portal.42.dblayer.com`
* `23336`
* `pokemon`
* `dbprotocol`
* `hostname`
* `aws-us-east-1-portal.29.dblayer.com`
* `mysql`
* `?ssl=true`
* `mssql`
 
 
