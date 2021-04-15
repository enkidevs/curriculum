---
author: SebaRaba
type: normal
category: must-know
tags:
  - workout
links:
  - >-
    [More on connection
    strings](http://www.dofactory.com/reference/connection-strings){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Connection strings


---

## Content

*Connection strings* are URLs that point at a database hosted on a server. They use the Uniform Resource Indicator standard to structure the different parts. Abstractly, they look like this:

```plain-text
dbprotocol://username:password
  @hostname:port/dbname
  %delim%property=value
```

- **dbprotocol** will be different for each database type:
  - Postgres uses `postgres` and `pg`
  - MySQL uses `mysql`
  - Microsoft SQL Server uses `jdbc:sqlserver`.  
- **username:password** is a standard way of specifying authentication
  - for some databases (namely SQL server), the user and password are entered at the end, in the `property=value` section.  
- **hostname** is the address of the server the database is located on
  - if the database you are connecting to is *on your computer*, this value will be `localhost` or `0.0.0.0`
  - if it is *remote*, you will enter a hostname like `aws-us-east-1-portal.29.dblayer.com`.  
- **port** is how you know which port to connect to
  - the default port differs between database servers.  
- **delim** denotes a delimiter
  - some databases read from the query string `?property=value&property=value`
  - some use a semicolon `/pokemon;property=value;property=value`
  - these properties and values are used to send extra information to the database.


---

## Practice

Connect to a `pokemon` database, that is hosted on MySQL. 

Use the username `gary`, password `rival`, for the database on `aws-us-west-1-portal.29.dblayer.com`. 

The port is `23336`.

```plain-text
???://
???:???
@???
:???
/???
```

- `mysql`
- `gary`
- `rival`
- `aws-us-west-1-portal.29.dblayer.com`
- `23336`
- `pokemon`


---

## Revision

Connect to a `pokemon` database, that is hosted on Postgres. 

Use the username `spot`, password `supersecret`, for the database on `aws-us-east-1-portal.42.dblayer.com`. 

The port is `23336`.

```plain-text
???://
???:???
@???
:???/???
```

- `postgres`
- `spot`
- `supersecret`
- `aws-us-east-1-portal.42.dblayer.com`
- `23336`
- `pokemon`
