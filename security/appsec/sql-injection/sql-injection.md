---
author: lizTheDeveloper
type: normal
category: hack
links:
  - '[OWASP Top Ten](https://owasp.org/www-project-top-ten/){website}'
  - >-
    [Threat
    Analysis](https://owasp.org/www-project-automated-threats-to-web-applications/){website}
  - '[Little Bobby Tables](https://xkcd.com/327/){website}'
  - '[Bobby Tables Prevention Guide](http://bobby-tables.com/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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
WHERE custID='" +
request.getParameter("id") +
 "'";
```

**Scenario #2**: Similarly, an application’s blind trust in frameworks
may result in queries that are still vulnerable, (e.g. Hibernate
Query Language (HQL)):

```plain-text
Query HQLQuery = session.createQuery(
  "FROM accounts WHERE custID='" +
  request.getParameter("id") +
  "'");
```

In both cases, the attacker modifies the ‘id’ parameter value in
their browser to send: ' or '1'='1. For example:
<http://example.com/app/accountView?id='> or '1'='1
This changes the meaning of both queries to return all the
records from the accounts table. More dangerous attacks could
modify or delete data, or even invoke stored procedures.

> 📝 Now you get the joke in the course description!


---

## Practice

What form data would you enter into the following form to get a simple search engine to return all users instead of product search results?

```plain-text
Product Search: _______
Results:
```

???

- `'; SELECT * FROM USERS;`
- `SELECT * FROM USERS`
- `USERS`


---

## Revision

Is this code snippet vulnerable to SQL injection?

```plain-text
let query = "SELECT *
FROM accounts
WHERE custID='" +
request.getParameter("id") +
 "'";
```

???

- Yes
- No
