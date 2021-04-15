---
author: lizTheDeveloper
type: normal
category: best-practice
links:
  - '[1Password](https://1password.com/){website}'
  - '[LastPass (free)](https://lastpass.com/f?81082801 ){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Cloud Security Configuration


---

## Content

Cloud Security Configuration is a challenging area to perform an audit for, due to the widely varying natures of the type, configuration choices, level of control, and highly variant UI design of all of the different cloud interfaces. There are some steps you can take to make it easier on yourself:

- Use a password manager
- Make all developers keep top-level "admin" accounts in the password manager
- Make all developers use individual accounts on a team plan if possible
- Do not share admin accounts with every member of the team
- Ensure audit logging is turned on wherever possible
- Evaluate the roles granted to each team member, ensure all roles are strictly necessary
- Make all admins and developers use 2 Factor Authentication (2FA) wherever possible
- Store tokens and database credentials in the database so there are the fewest number of sensitive credentials available
- Keep a list of where credentials must be updated to allow for effective rotation
- Keep a rotation log
- Create a recurring calendar item for credential rotation
- Disable stack trace and verbose error reporting


---

## Practice

Which is **not** a practice that will help mitigate cloud security configuration vulnerabilities:

???

- prohibiting new cloud services without extensive review
- allowing new cloud services to be used in development and only deployed to production after review
- using a password manager
- rotating credentials


---

## Revision

Which is **not** a practice that will help mitigate cloud security configuration vulnerabilities:

???

- locking down the VPN to prevent developers from using unapproved cloud services
- gathering admin credentials to cloud services
- enabling audit logging
- helping developers to configure sensible defaults
