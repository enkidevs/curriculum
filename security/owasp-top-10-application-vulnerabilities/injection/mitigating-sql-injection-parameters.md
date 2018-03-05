# Mitigating SQL Injections - Parameters
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

Dynamically-formed SQL queries from URL parameters are espsecially dangerous to application and database security. 

Again, take the hypothetical API that returns account information from a database:

```java
// https://api.mywebsite.com/getcustomer?id=42
String query = "SELECT * FROM accounts
  WHERE custID = '"
  + request.getParameter("id") +
  "'";
db.execute(query);
// . . .
```

Since the query is formed directly from the URL parameter `id`, any arbitrary string passed into the `id` parameter will be executed. This creates a critical vulnerability allowing for the creation, deletion, alteration, and extraction of any data in the database.

In general, it is best practice to __avoid evaluating plaintext as code__ entirely. In the case of SQL, libraries exist to programatically form and execute queries safely. But, if the API _must_ use dynamically-formed, plaintext queries for whatever reason, step can be taken to improve the overall security. 

Treat incoming data with as much scrutiny as possible. In the case of Strings, use [Regex](https://en.wikipedia.org/wiki/Regular_expression) validation and replace any potentially malicious character with their respective [escape character](https://en.wikipedia.org/wiki/Escape_character) to transform what may be a malicious query into a harmless string.

---
## Practice

Should API parameters be trusted?

* no
* yes, if it has been validated on the front-end
* yes

---
## Revision

??? is one way to turn a malicious query into a harmless string.

* Escape characters
* Whitespace trimming
* Making the string lowercase
