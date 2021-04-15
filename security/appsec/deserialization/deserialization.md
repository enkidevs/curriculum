---
author: lizTheDeveloper
type: normal
category: pattern
links:
  - '[OWASP Top Ten](https://owasp.org/www-project-top-ten/){website}'
  - >-
    [OWASP Cheat Sheet:
    Deserialization](https://cheatsheetseries.owasp.org/cheatsheets/Deserialization_Cheat_Sheet.html){website}
  - >-
    [OWASP Proactive Controls: Validate All
    Inputs](https://owasp.org/www-project-proactive-controls/#4:_Validate_All_Inputs){website}
  - >-
    [OWASP AppSecUSA 2017: Friday the 13th JSON
    Attacks](https://speakerdeck.com/pwntester/friday-the-13th-json-attacks){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deserialization


---

## Content

Deserialization vulnerabilities mostly come from unsanitized input, thus reiterating one of the best things you can do for security inside your organization: always sanitize your inputs!

Deserialization vulnerability exposes two main vectors of attack:

- Allowing the contents of a serialized object affect behavior or application logic that is recorded or executed on the server
- Data tampering, where client-side logic is thwarted by modifying calls to the server


---

## Practice

What's the best way to prevent a deserialization attack?

???

- Sanitize your inputs
- Use XML instead of JSON
- Don't accept any inputs


---

## Revision

Which attack vectors does deserialization expose?

???

- Data Tampering and Logic Tampering
- Payload Bombs and Billion Laughs
- Data Injection and Malicious Code Execution
- Denial of Service and Resource Consumption
