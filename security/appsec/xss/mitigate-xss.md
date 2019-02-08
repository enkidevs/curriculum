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
  security.xss.3: 10
  security.xss.4: 10
  security.xss.6: 10
  security.xss.7: 10

links:
  - '[OWASP Top Ten](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)'
  - '[link to deeper dive blog post](https://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet)'
  - '[DOM based XSS Prevention Cheat Sheet](https://www.owasp.org/index.php/DOM_based_XSS_Prevention_Cheat_Sheet)'
  - '[XSS Filter Evasion Cheat Sheet](https://www.owasp.org/index.php/XSS_Filter_Evasion_Cheat_Sheet)'
  - '[OWASP Java Encoder Project](https://www.owasp.org/index.php/OWASP_Java_Encoder_Project)'

---

# mitigate-xss

---
## Content

Follow these simple rules for mitigating XSS vulnerability. **Bookmark this insight to receive links that have examples.**

- Never Insert Untrusted Data Except in Allowed Locations
- HTML Escape Before Inserting Untrusted Data into HTML Element Content
- Attribute Escape Before Inserting Untrusted Data into HTML Common Attributes
- JavaScript Escape Before Inserting Untrusted Data into JavaScript Data Values
- CSS Escape And Strictly Validate Before Inserting Untrusted Data into HTML Style Property Values
- URL Escape Before Inserting Untrusted Data into HTML URL Parameter Values
- Sanitize HTML Markup with a Library Designed for the Job
- Prevent DOM-based XSS
- Use HTTPOnly cookie flag
- Implement Content Security Policy
- Use an Auto-Escaping Template System

---
## Practice

What is the best way to prevent XSS attacks?
???

* Escape untrusted data before doing anything with it
* Prevent free-form entry fields
* Only allow traffic from trusted locations
* Only store data on the client

---
## Revision

How should you escape your user input?

???

* Using a library designed for the job
* Write custom validation for my specific use case
* Use IP filtering rules to determine which input to escape
