---
author: lizTheDeveloper
type: normal
category: how to
links:
  - >-
    [Injection Prevention Cheat
    Sheet](https://www.owasp.org/index.php/Injection_Prevention_Cheat_Sheet){website}
  - >-
    [SQL Injection Prevention Cheat
    Sheet](https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet){website}
  - >-
    [Query Parameterization Cheat
    Sheet](https://www.owasp.org/index.php/Query_Parameterization_Cheat_Sheet){website}
  - '[Bobby Tables](http://bobby-tables.com/){website}'
---

# Mitigate SQL Injection Attacks


---

## Content

The best way to prevent SQL Injection attacks is to use a library designed to automatically escape parameterized queries. Most Object Relationship Mappers do this automatically, though it is your job to be sure of that. Every major language and database has a library for **Parameterized Queries**.

A few other steps you can take:

* Use limits and pagination to limit the amount of data that is disclosed
* Evaluate your ORM for SQL Injection vulnerability reports
* Always escape and sanitize inputs
* Log SQL Injection attempts to detect hostile IPs

Bookmark this insight for links to SQL Injection Cheat Sheets that will help you detect and mitigate SQL Injection risks.


---

## Practice

What step *might not* help you mitigate SQL injection attacks?

???

* Block all user input
* Evaluate your ORM for SQL Injection vulnerability reports
* Always escape and sanitize inputs
* Log SQL Injection attempts to detect hostile IPs


---

## Revision

What step *might not* help you mitigate SQL injection attacks?

???

* Block all user input
* Evaluate your ORM for SQL Injection vulnerability reports
* Always escape and sanitize inputs
* Log SQL Injection attempts to detect hostile IPs
