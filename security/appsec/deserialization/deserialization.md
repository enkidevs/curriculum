---
author: lizTheDeveloper

levels:

  - beginner

  - basic

aspects:

  - introduction

  - workout

type: normal

category: pattern


standards:
  security.insecure-deserialization.0: 10

links:
  - '[OWASP Top Ten](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)'
  - '[OWASP Cheat Sheet: Deserialization](https://www.owasp.org/index.php/Deserialization_Cheat_Sheet)'
  - '[OWASP Proactive Controls: Validate All Inputs](https://www.owasp.org/index.php/OWASP_Proactive_Controls#4:_Validate_All_Inputs)'
  - '[OWASP AppSecUSA 2017: Friday the 13th JSON Attacks](https://speakerdeck.com/pwntester/friday-the-13th-json-attacks)'

---

# Deserialization

---
## Content

Deserialization vulnerabilities mostly come from unsanitized input, thus reiterating one of the best things you can do for security inside your organization: always sanitize your inputs!

Deserialization vulnerability exposes two main vectors of attack:
* Allowing the contents of a serialized object affect behavior or application logic that is recorded or executed on the server
* Data tampering, where client-side logic is thwarted by modifying calls to the server

Bookmark this insight to receive a link to the OWASP guides on detecting and preventing deserialization vulnerability.
---
## Practice

What's the best way to prevent a deserialization attack?
???

* Sanitize your inputs
* Use XML instead of JSON
* Don't accept any inputs

---
## Revision

Which attack vectors does deserialization expose?

???

* Data Tampering and Logic Tampering
* Payload Bombs and Billion Laughs
* Data Injection and Malicious Code Execution
* Denial of Service and Resource Consumption
