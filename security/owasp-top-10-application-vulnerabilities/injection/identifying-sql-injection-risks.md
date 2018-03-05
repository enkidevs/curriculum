# Identifying SQL Injection Risks
author: milesflo

levels:

  - basic

  - medium

type: normal

category: must-know

links:

  - [OWASP Top 10 - 2017](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)

---
# Content

Injection flaws, such as SQL, NoSQL, OS, and LDAP injection, occur when untrusted data is sent to an interpreter as part of a command or query. The attacker’s hostile data can trick the interpreter into executing unintended commands or accessing data without proper authorization. This creates a critical vulnerability allowing for the creation, deletion, alteration, and extraction of any data in the database.

One notorious example of a SQL Injection is `"'; DROP TABLE users; --'"`-- a malicious query which will close off the expected string, execute a query to delete the `users` table, and finally, comment out all execution after. This will render a service completely inoperable until database backups can be restored.

Take this hypothetical API that returns information from a database, for example:

```java
// https://api.mywebsite.com/getcustomer?
// id=42
String query = "SELECT * FROM accounts
  WHERE custID = '"
  + request.getParameter("id") +
  "'";
db.execute(query);
// . . .
```

A database query is formed directly from the URL parameter `id` to look for the respective `account`. This is poor API design, because any arbitrary string passed into the `id` parameter will be executed. 

If the previously mentioned `DROP TABLES` string were slightly altered and passed in as the `id` parameter, the following would be evaluated on the db:

```sql
-- https://api.mywebsite.com/getcustomer?
-- id='; DROP TABLE accounts; --'
SELECT * FROM accounts
  WHERE custID = '';     -- Try to find row
  DROP TABLE accounts;   -- Delete accounts
  --''";     -- All other queries commented
  . . . 
```
-- resulting in catastrophic failure of the service.

---
## Practice

Which of the following situations could present an Injection vulnerability?
???

* A server-side SQL query formed from unvalidated URL parameters
* An unclosed tag on a web page
* An unresolved error on a production server

---
## Revision

Construct a malicious query on the previously mentioned API

```
https://api.mywebsite.com/getcustomer?
id="'; ??? ??? accounts; --'"
```

* `DROP`
* `TABLE`
* `accounts`
* `users`
* `DELETE`
* `CASCADE`
* `COLLUMN`
