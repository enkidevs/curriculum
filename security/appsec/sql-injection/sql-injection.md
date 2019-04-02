---
author: lizTheDeveloper

levels:

  - beginner

  - basic

  - medium

aspects:

  - introduction

  - workout

type: normal

category: hack


standards:
  security.sql-injection.0: 10
  security.sql-injection.4: 10

links:
  - '[OWASP Top Ten](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)'
  - '[Threat Analysis](https://www.owasp.org/index.php/OWASP_Automated_Threats_to_Web_Applications)'
  - '[Little Bobby Tables](https://xkcd.com/327/)'
  - '[Bobby Tables Prevention Guide](http://bobby-tables.com/)'

---

# SQL Injection

---
## Content
From OWASP:

> Almost any source of data can be an injection vector, environment variables, parameters, external and internal web services, and all types of users. Injection flaws occur when an attacker can send hostile data to an interpreter.

When unvalidated data passes through your system, your system is at risk of an injection attack. **SQL Injection** is the practice of adding SQL code to your inputs to circumvent normal operation and issue commands directly to the database.

These examples from OWASP show SQL Injection attacks:

**Scenario #1**: An application uses untrusted data in the
construction of the following vulnerable SQL call:
```java
String query = "SELECT *
FROM accounts
WHEREcustID='" +
request.getParameter("id") +
 "'";
```
**Scenario #2**: Similarly, an application’s blind trust in frameworks
may result in queries that are still vulnerable, (e.g. Hibernate
Query Language (HQL)):
```
Query HQLQuery = session.createQuery(
  "FROM accountsWHERE custID='" +
  request.getParameter("id") +
  "'");
```
In both cases, the attacker modifies the ‘id’ parameter value in
their browser to send: ' or '1'='1. For example:
http://example.com/app/accountView?id=' or '1'='1
This changes the meaning of both queries to return all the
records from the accounts table. More dangerous attacks could
modify or delete data, or even invoke stored procedures.

Side note: Now you get the joke in the course description!
 
---
## Practice

What form data would you enter into the following form to get a simple search engine to return all users instead of product search results?
```
Product Search: _______
Results:
```

???

* `'; SELECT * FROM USERS;`
* `SELECT * FROM USERS`
* `USERS`

---
## Revision

Is this code snippet vulnerable to SQL injection?

```
let query = "SELECT *
FROM accounts
WHERE custID='" +
request.getParameter("id") +
 "'";
```

???

* Yes
* No
