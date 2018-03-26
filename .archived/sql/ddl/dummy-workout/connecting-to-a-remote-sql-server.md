---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on connecting to a remote server](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu)'

---
# Connecting to a remote SQL server

---
## Content

Assuming the server is up and running, we can use `sqlcmd` utility to connect remotely: 
```bash
sqlcmd -S xxx.xxx.xxx.xxx, xxxx
-U xxxx -P xxx -d xx.xxx
-Q "SELECT * FROM xx.xxx"
```
Where:
- `-S` flag stands for servername, additionally the port can be specified
- `-U` flag stands for username
- `-P` flag stands for password
- `-d` flag stands for database name
- `-Q` flag stands for query, `sqml` will exit after the query finishes
- `-q` flag stands for query, but `sqml` doesn't exit when the query is finished

Basically it's the same command as the one for connecting localy, but we need to specify the machine name or IP address for the -S parameter. And also make sure that port 1433 is open on our firewall.

Note that instead `-S` flag, we can use `-D` specifying a data source name (DSN)[1] instead of a server name. 

---
## Revision

Suppose we would like to connect to a remote server. Fill the gaps accordingly:
```
???
-S aws-us-east-1-portal.29.dblayer.com,???
-U ashketchum ??? xxxxxxxxxxxxxx
-d pokemon
```

* sqlcmd
* 23336
* -P
* -D
* -U
* sql
* port

---
## Footnotes
[1:DSN]
A data source name is a data structure that contains information about a specific database. With this information an Open Database Connectivity (ODBC) driver will be able to connect to the database.
