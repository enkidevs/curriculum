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

category: how to


standards:
  security.xss.0: 10
  security.xss.1: 10
  security.xss.2: 10
  security.xss.5: 10

links:
  - '[OWASP Top Ten](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)'
  - '[Testing for Reflected Cross site scripting](https://www.owasp.org/index.php/Testing_for_Reflected_Cross_site_scripting_(OTG-INPVAL-001))'
  - '[Testing for Stored Cross site scripting](https://www.owasp.org/index.php/Testing_for_Stored_Cross_site_scripting_(OTG-INPVAL-002))'
  - '[Testing for DOM-based Cross site scripting](https://www.owasp.org/index.php/Testing_for_DOM-based_Cross_site_scripting_(OTG-CLIENT-001))'


---

# Detect XSS Vulnerabilities

---
## Content

In order to review source code to establish whether or not your application is vulnerable to XSS attacks, ask yourself the following questions:

- Does my application _store unvalidated input_?
- Does my application _write unescaped user input to the page_?
- Does my application _write unescaped user input to another page_?
- Do all of my endpoints contain _server side validation_?

Bookmark this insight to receive links to OWASP testing guides for XSS that you can use on your own applications.

---
## Practice

Which of these will produce a vulnerability to XSS?
???

* Storing unvalidated input
* Using JSON
* Using web forms

---
## Revision

Which of these will produce a vulnerability to XSS?
???

* Writing unvalidated input to the page
* Allowing connections to your website from any IP address
* Accepting input from any IP address
