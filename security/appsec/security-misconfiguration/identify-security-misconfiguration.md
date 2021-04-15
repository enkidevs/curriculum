---
author: lizTheDeveloper
type: normal
category: how-to
links:
  - >-
    [Blog Post on Security
    Misconfiguration](https://www.immuniweb.com/blog/OWASP-security-misconfiguration.html){website}
  - >-
    [OWASP on Configuration during
    Development](https://wiki.owasp.org/index.php/Configuration){website}
  - >-
    [12 Factor Apps store config in the
    environment](https://12factor.net/config){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Identify Security Misconfiguration


---

## Content

In order to do a through assessment to identify security vulnerabilities coming from security misconfiguration:

First, identify all cloud accounts and application components requiring a username / password to access or configure that portion of the stack. This may include parts as diverse as cloud database credentials, router credentials, or physical IDs. Check with the system admin or architect of the system to identify which parts of the system you have control over. For instance, you won't have control over (or access to) the router if everything is hosted on a cloud service, but you'll need access to the cloud service credentials.

Next, assess the settings of each interface between each part of the application stack from the OSI model. In more modern applications this means components like DNS routing settings, IP whitelists for cloud services, and CORS policy settings. Also review your developer user access restrictions settings. Ensure they are the minimum required settings- be sure the appropriate parties can manage the system *and still effectively innovate* with minimum required access to secure systems.

Last, run a progressive permissions-removal process for hardened secure systems to ensure the smallest number of sensitive credentials exist. Do this slowly, over time, and make sure you alert people that permissions will be removed with enough warning that they may petition to keep those permissions. Sometimes, use of a credential by an individual or another system is not properly documented, though the use of these credentials may be mission-critical. It's not an ideal situation, but it happens very often in any side of organization. The process is important here- receiving pushback means you may be hampering a team's ability to operate, so tread lightly.


---

## Practice

What should you do once you have accounted for all of the credentials and configurations in an application stack? 

???

- Ensure that the fewest number of sensitive credentials exist
- Forbid any new cloud services without extensive security review
- Close down each cloud service
- Migrate each component of the application stack to a secure location


---

## Revision

What order do these steps go in, to identify security vulnerabilities coming from security misconfiguration:

???
???
???

- Identify all cloud accounts and application components
- Assess the settings of each interface between each part of the application stack from the OSI model
- Run a progressive permissions-removal process for hardened secure systems to ensure the smallest number of sensitive credentials exist
- Lock down the creation of new cloud services
- Review watchlists daily for compromised data from your cloud service
- Contact each cloud provider to obtain credentials to their network systems
