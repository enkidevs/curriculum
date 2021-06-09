---
author: lizTheDeveloper
type: normal
category: best-practice
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Process Control Broken Access Control


---

## Content

Access control prevention starts in the software engineering process. Each requirement for the application should be throughly defined in terms of which users need what credentials and access levels to access it.

During code review, developers should look for application resources that are not protected by access control and question it. Even a simple definition of "all logged in users may access this resource" may prevent an automated web crawler from exfiltrating data. Ensure data routes are not wide open to the public internet without credentials.

Ensure that access control checks based on the software requirements are written into any automated test suites.


---

## Practice

Where should automated checks for access control go?

???

- Automated test suites
- Manual scans before release
- Alarms on anomalous access control patterns


---

## Revision

When should application resources be checked for proper access control configuration?

???

- During code review
- quarterly
- continuously
