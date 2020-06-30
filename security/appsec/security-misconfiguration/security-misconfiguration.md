---
author: lizTheDeveloper
type: normal
category: pattern
links:
  - >-
    [Blog Post on Security
    Misconfiguration](https://www.htbridge.com/blog/OWASP-security-misconfiguration.html){website}
  - >-
    [OWASP on Security
    Misconfiguration](https://www.owasp.org/index.php/Top_10_2013-A5-Security_Misconfiguration){website}
  - >-
    [OWASP on Configuration during
    Development](https://www.owasp.org/index.php/Configuration){website}
  - >-
    [12 Factor Apps store config in the
    environment](https://12factor.net/config){website}
---

# Security Misconfiguration


---

## Content

Security Misconfiguration sounds like a broad topic- what it allows us to do as a concept is treat software configuration as an independent layer of security.

Think about all of the cloud services you use, and what their settings were when you first set them up. Perhaps all ports on your database server were available to all IP addresses. Perhaps your Wordpress installation came with a default admin username and password. Perhaps there is a backdoor page that only internal employees know about, where you can write raw SQL against the database. These are all examples of security misconfiguration vulnerabilities.


---

## Practice

Which is a security misconfiguration vulnerability?
???

- Keeping the default admin user and password active
- Improperly positioned security cameras
- Shoulder-surfing at a coffee shop
- Using an old XML library


---

## Revision

Not checking the default security settings to allow access from only trusted sources is considered a ??? vulnerability.

- Security Misconfiguration
- Insecure Application
- Credential Access
- Remote Access
 
