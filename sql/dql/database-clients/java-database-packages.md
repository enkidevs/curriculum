---
author: nickdaminov

levels:
  - basic
  - medium

type: normal

category: how to

inAlgoPool: false

standards:
  sql.connect-client.0: 10
  sql.connect-client.1: 10

tags:
  - java
  - implementation
  - database packages

links:
  - '[Why JDBC](https://www.progress.com/faqs/datadirect-jdbc-faqs/why-do-we-need-jdbc){website}'
  - '[Oracle Statement on JDBCs](http://www.oracle.com/technetwork/java/index-138427.html#13){website}'
  - '[Postgres JDBC driver](https://jdbc.postgresql.org/about/about.html){website}'
  - '[Java Driver Interface](https://docs.oracle.com/javase/7/docs/api/java/sql/Driver.html){website}'
  - '[More Examples](https://www.tutorialspoint.com/postgresql/postgresql_java.htm){website}'

aspects:
  - workout


---

# Java Database Packages

---
## Content

In **Java**, Oracle does not provide database connection APIs with the JDK, meaning that we will have to download the necessary library (the *database driver*) and import it into our project manually. These libraries should be provided the database hosts as each *DBMS* is different. The *database driver* or *JDBC (Java Database Connectivity)* for Postgres can be downloaded from Postgres website.

Now after downloading the correct `.jar` file and adding it to our project, we can connect to our database:
```java
import java.sql.*;

public class Main {
 public static void main(String args[]) {
  Connection c = null;
  Statement stmt = null;
  try {
   Class.forName(
     "org.postgresql.Driver");
   // connecting to the DB
   c = DriverManager
    .getConnection("
       jdbc:postgresql://
       aws-us-east-1-portal.29.
       dblayer.com:23336/pokemon",
    "ashketchum", "iwannabetheverybest");
   c.setAutoCommit(false);
   System.out.println("Opened
     database successfully");

   stmt = c.createStatement();
   // querying the DB
   ResultSet rs = stmt.executeQuery(
     "SELECT * FROM pokemon_color;");
   // iterating through the query result
   while ( rs.next() ) {
    int id = rs.getInt("id");
    String name = rs.getString("name");
    System.out.println("ID = " + id );
    System.out.println("NAME = "+name);
   }
   // now we are finished with the task
   rs.close();
   stmt.close();
   c.close();
  } catch ( Exception e ) {
   // in case the connection failed
   // or the query could not get executed
   System.err.println(
    e.getClass().getName()+": "
    + e.getMessage() );
    System.exit(0);
  }
  System.out.println("Operation done
    successfully");
  }
}
```

The result of the following code should be similar to:

```
Opened database successfully
ID = 1
NAME = black
ID = 2
NAME = blue
ID = 3
NAME = brown
ID = 4
NAME = gray
ID = 5
NAME = green
ID = 6
NAME = pink
ID = 7
NAME = purple
ID = 8
NAME = red
ID = 9
NAME = white
ID = 10
NAME = yellow
Operation done successfully
```

---
## Practice

Considering `c = DriverManager.getConnection("jdbc:postgresql://aws-us-east-1-portal.29.dblayer.com:23336/pokemon", "ashketchum", "iwannabetheverybest");`, form a connection string:

c = DriverManager.getConnection
("???:???://
???:???/???",
 "???", "???");


* jdbc
* postgresql
* URLaddress
* port
* databaseName
* username
* password

---
## Revision

What is a database driver?

???

* It is a library in a certain language and it is specific to a certain DBMS
* It is Java specific library which allows the user to connect to the MySQL database
 
 
