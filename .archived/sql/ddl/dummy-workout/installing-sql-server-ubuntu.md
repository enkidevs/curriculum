---
author: SebaRaba

levels:
  - basic

type: normal

category: must-know

links:

  - '[More on connecting to a local server](https://docs.microsoft.com/en-us/sql/database-engine/configure-windows/sql-server-2016-express-localdb)'
  - '[More on connecting to a MySql local server](https://dev.mysql.com/doc/refman/5.7/en/connecting.html)'
  - '[More on connecting to a Postgress local server](https://www.postgresql.org/docs/8.3/static/tutorial-accessdb.html)'

---
# Installing MSSQL server on Ubuntu

---
## Content

Check the footnotes section for the abbreviations[1]!

First, we will import the public repository GPG keys:
```bash
curl packages_url | sudo apt-key add -
```
Then, we will register the MS SQL Server Ubuntu repository:
```bash
sudo add-apt-repository
"$(curl server_url)"
```

We need to configure a SQL Server. First install the SQL Server using the following commands:
```bash
sudo apt-get update
sudo apt-get install -y mssql-server
```

After package installation finishes we will be adviced to run the following command:
```bash
sudo /opt/mssql/bin/mssql-conf setup
```
Runnig this command will enable us to choose our server edition and set the SA (System Admin) password.

After configurations is done, check the server status using:
```bash
systemctl status mssql-server
```

To create a database we need to connect with a tool that can run Transact-SQL statements on the SQL Server. We will use sqlcmd and bcp utilities, first import the public repository GPG keys:
```bash
curl packages_url | sudo apt-key add -
```
And register the MS SQL Server:
```bash
sudo add-apt-repository
"$(curl tools_url)"
```
Finally update the source list and run the installation command:
```bash
sudo apt-get update
sudo apt-get install -y mssql-tools
sudo apt-get install -y unixodbc-dev
```

Now that the database is created we can connect, using `sqlcmd` command with the following flags:
- `-S` for host name, localhost in this case, as we are connecting to a local db
- `-U` for username, SA (System Admin) in this case, primary admin login is, by default, mapped to the db
- `-P` for password, is the one you set when configuring the server after installation

```bash
sqlcmd -S localhost -U SA -P '<YourPswd>'
```

---
## Practice

What is the host name of a local database?
???

* localhost
* localserver
* localdatabase

---
## Revision

We want to connect to a localDB using `sqlcmd` command. Fill the gaps accordingly :
```
??? -S ??? -U ??? -P pass12345
```

* sqlcmd
* localhost
* SA
* username
* 8080
* https

---
## Footnotes

[1:abbreviations]
In order to fit phones screen witdh, our code snippets are limited to maximum 44 characters width. That is why we need to define variables to store our urls in order to be easier to read the code snippets.

packages_url = https://packages.microsoft.com/keys/microsoft.asc

server_url = https://packages.microsoft.com/config/ubuntu/16.04/mssql-server.list

tools_url = curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list
