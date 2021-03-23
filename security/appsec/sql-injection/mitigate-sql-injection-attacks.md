---
author: lizTheDeveloper
type: normal
category: how-to
links:
  - >-
    [Injection Prevention Cheat
    Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html){website}
  - >-
    [SQL Injection Prevention Cheat
    Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html){website}
  - >-
    [Query Parameterization Cheat
    Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Query_Parameterization_Cheat_Sheet.html){website}
  - '[Bobby Tables](http://bobby-tables.com/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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


---

## Practice

What step *might not* help you mitigate SQL injection attacks?

???

- Block all user input
- Evaluate your ORM for SQL Injection vulnerability reports
- Always escape and sanitize inputs
- Log SQL Injection attempts to detect hostile IPs


---

## Revision

What step *might not* help you mitigate SQL injection attacks?

???

- Block all user input
- Evaluate your ORM for SQL Injection vulnerability reports
- Always escape and sanitize inputs
- Log SQL Injection attempts to detect hostile IPs
