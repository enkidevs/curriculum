# Connection strings
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on connection strings](http://www.dofactory.com/reference/connection-strings)'

---
## Content

The syntax for conneciton strings is slighty different for all types of servers. There are two main connection types:
- ODBC (Open Data Base Connectivity)
- OLE DB (Object Linking Embedding)

**ODBC** is a connection method to data sources. It requires  a data source (DSN) to be set up. This can be done using a *SQL* driver or other drivers if you want to connect to a different type of database. It's designed for connecting relational databases.

**OLE DB** can access both, relational databases as well as non-relational databases. It's a set of software components that allow a GUI (Graphical User Interface) to connect with a backend. It doesn't need any *DSN* set up.

We will use some js scripts for a better understanding:

Using *ODBC* and MyODBC driver to connect to a localDB:
```
using System.Data.Odbc;
var conn = new OdbcConnection();
conn.ConnectionString =
            "Driver={MySql};" +
            "Server=localhost;" +
            "DataBase=DataBaseName;"
conn.Open();
```
So, we need `Odbc` library, which can be found in `System.Data` namespace. The `OdbcConnection` object has the `ConnectionString` property.  We use it to create our new connection string.

Using *ODBC*  and MyODBC driver to connect to a remoteDB:
```
using System.Data.Odbc;
var conn = new OdbcConnection();
conn.ConnectionString =
            "Driver={MySql};" +
            "Server=db.domain.com;" +
            "Port=3306;" +
            "DataBase=DataBaseName;" +
            "Uid=UserName;" +
            "Pwd=Secret;"
conn.Open();
```
The same object is needed. The difference is that we need to specify the port if it is not the default one (`8080`) and also give a username and password for the desired server.

Using *OLE DB* the syntax is the same for connecting to both, remoteDB and localDB:
```
using System.Data.OleDb;
var conn = new OleDbConnection();
conn.ConnectionString =
            "Provider=MySqlProv;" +
            "Data Source=ServerName;" +
            "User id=UserName;" +
            "Password=Secret;"
conn.Open();
```
The syntax is pretty simillar to the one used with `ODBC`. The difference is that we use `Oledb` object. It requires a provider and instead of `Server` field it has `Data Source` field.

---
## Practice

What type of connection did we use here?
```
using System.Data.Odbc;
var conn = new OdbcConnection();
conn.ConnectionString =
            "Driver={MySql};" +
            "Server=localhost;" +
            "DataBase=cars.db;"
conn.Open();
```

* We use ODBC connection type to connect to a localdb
* We use ODBC connection type to connect to a remotedb
* We use OLE DB connection type to connect to a localdb

---
## Revision

We would like to connect to a remote db using OLE DB conneciton type. Fill the gaps accordingly:
```
using System.Data.???;
var conn = new ???;
conn.ConnectionString =
  "Provider=dotConnect;" +
  "???=
  aws-us-east-1-portal.29.dblayer.com;"+
  "User id=ashketchum;" +
  "Password=Secret;"
conn.???();
```

* OleDb
* OleDbConnection();
* Data Source
* Open
* Close
* Obdc
* ObdcConnection();
