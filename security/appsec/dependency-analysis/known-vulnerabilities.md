---
author: lizTheDeveloper
type: normal
category: must-know
links:
  - >-
    [Common Vulnerabilities and
    Exposures](https://cve.mitre.org/index.html){website}
  - '[National Vulnerability Database](https://nvd.nist.gov/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Known Vulnerabilities


---

## Content

Using components that have known vulnerabilities can leave your application open to automated attack vectors. The Common Vulnerabilities and Exposures database has known vulnerabilities searchable by *application, library, vulnerability, or component*.

OWASP marks the prevalence of use of known vulnerable components as a 3- high, which means lots of people do this.

You're the most vulnerable to this type of attack vector when you do not have a list of dependencies and their specific, fixed version numbers. Newer versions *can* introduce new security flaws, so it's not as simple as always keeping your libraries up to date. Early in development this is an acceptable practice, but any significant public-facing traffic will quickly leave your application vulnerable.


---

## Practice

Where can you find the most comprehensive information on vulnerabilities in application dependencies?

???

- Common Vulnerabilities and Exposures Database (CVE)
- Twitter
- Reddit
- IRC


---

## Revision

What is the most common cause of using components with known vulnerabilities?

???

- Not knowing what dependencies and versions I am using
- Allowing my dependencies to get out of date
- Using open-source components
- Using internally-developed components
