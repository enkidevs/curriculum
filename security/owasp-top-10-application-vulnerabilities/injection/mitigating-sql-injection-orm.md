# Mitigating SQL Injections - ORM
author: milesflo

levels:

  - basic

  - medium

type: normal

category: must-know

links:

  - [OWASP Top 10 - 2017](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)
  - [10 Ways to Mitigate SQL Injection](http://www.enterprisenetworkingplanet.com/netsecur/article.php/3866756/10-Ways-to-Prevent-or-Mitigate-SQL-Injection-Attacks.htm)

---
# Content

One could mitigate SQL injections by using a trusted ORM-- an API that programmatically constructs SQL statements-- to ensure that data is validated before queries are made, making injections less possible.

One popular ORM in

---
## Practice

Which of the following situations could present an Injection vulnerability?
???

* A server-side SQL query formed from unvalidated URL parameters
* An unclosed tag on a web page
* An unresolved error on a production server

---
## Revision

Injection vulnerabilities can be prevented by ???.

* Utilizing an ORM to construct reliable SQL queries
* Preventing physical access to servers
* Disabling anonymous access to an API
