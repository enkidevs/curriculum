---
author: lizTheDeveloper
type: normal
category: how-to
links:
  - '[OWASP Top Ten](https://owasp.org/www-project-top-ten/){website}'
  - >-
    [Cross Site Scripting Prevention Cheat
    Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html){website}
  - >-
    [DOM based XSS Prevention Cheat
    Sheet](https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html){website}
  - >-
    [XSS Filter Evasion Cheat
    Sheet](https://owasp.org/www-community/xss-filter-evasion-cheatsheet){website}
  - '[OWASP Java Encoder Project](https://owasp.org/owasp-java-encoder/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# mitigate-xss


---

## Content

Follow these simple rules for mitigating XSS vulnerability.

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

- Escape untrusted data before doing anything with it
- Prevent free-form entry fields
- Only allow traffic from trusted locations
- Only store data on the client


---

## Revision

How should you escape your user input?

???

- Using a library designed for the job
- Write custom validation for my specific use case
- Use IP filtering rules to determine which input to escape
