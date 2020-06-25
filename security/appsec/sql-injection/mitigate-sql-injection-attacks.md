---
author: lizTheDeveloper

levels:

  - beginner

  - basic

aspects:

  - introduction

  - workout

type: normal

category: how to


standards:
  security.sql-injection.1: 10
  security.sql-injection.2: 10
  security.sql-injection.5: 10

links:
  - '[Injection Prevention Cheat Sheet](https://www.owasp.org/index.php/Injection_Prevention_Cheat_Sheet)'
  - '[SQL Injection Prevention Cheat Sheet](https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet)'
  - '[Query Parameterization Cheat Sheet](https://www.owasp.org/index.php/Query_Parameterization_Cheat_Sheet)'
  - '[Bobby Tables](http://bobby-tables.com/)'

---

# Mitigate SQL Injection Attacks

---
## Content

The best way to prevent SQL Injection attacks is to use a library designed to automatically escape parameterized queries. Most Object Relationship Mappers do this automatically, though it is your job to be sure of that. Every major language and database has a library for **Parameterized Queries**.

A few other steps you can take:
- Use limits and pagination to limit the amount of data that is disclosed
- Evaluate your ORM for SQL Injection vulnerability reports
- Always escape and sanitize inputs
- Log SQL Injection attempts to detect hostile IPs

Bookmark this insight for links to SQL Injection Cheat Sheets that will help you detect and mitigate SQL Injection risks.
 
---
## Practice

What step _might not_ help you mitigate SQL injection attacks?

???

* Block all user input
* Evaluate your ORM for SQL Injection vulnerability reports
* Always escape and sanitize inputs
* Log SQL Injection attempts to detect hostile IPs


---
## Revision

What step _might not_ help you mitigate SQL injection attacks?

???

* Block all user input
* Evaluate your ORM for SQL Injection vulnerability reports
* Always escape and sanitize inputs
* Log SQL Injection attempts to detect hostile IPs