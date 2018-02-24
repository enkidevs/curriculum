# A1 - Injection
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

Injection flaws, such as SQL, NoSQL, OS, and LDAP injection, occur when untrusted data is sent to an interpreter as part of a command or query. The attacker’s hostile data can trick the interpreter into executing unintended commands or accessing data without proper authorization.

For example, the following SQL query formed from the URL parameter `id` would be vulnerable to injection:
```java
String query = "SELECT * FROM accounts
WHERE custID = ' "
+ request.getParameter("id") +
"'";
```
Any arbitrary string passed into the `id` parameter will be executed, allowing for the creation, deletion, edit, and extraction of any information on the database. A notorious example of the SQL Injection is `"'; DROP TABLE users; --'"`; a malicious snippet which will close off the expected string, execute a command to delete the 'users' table, and finally comment out all execution after. This will render a service inoperable until backups can be restored.


Injection vulnerabilities can be prevented by **validating user input**. Before a string reaches an interpreter, special characters (like quotation marks and semicolons) should be converted to [escape characters](https://en.wikipedia.org/wiki/Escape_character). Additionally, one could employ a trusted ORM-- an API that programmatically constructs SQL statements-- to ensure that validation is performed every step of the way, making injections less possible.

---
## Practice Question

Which of the following situations could present an Injection vulnerability?
???

* A server-side SQL query formed from unvalidated URL parameters
* An unclosed tag on a web page
* An unresolved error on a production server

---
## Revision Question

Injection vulnerabilities can be prevented by ???.

* Utilizing an ORM to construct reliable SQL queries
* Preventing physical access to servers
* Disabling anonymous access to an API