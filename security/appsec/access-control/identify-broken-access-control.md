---
author: lizTheDeveloper

levels:

  - beginner

  - basic

  - medium

aspects:

  - introduction

  - workout

  - deep

type: normal

category: how to


standards:
  security.broken-access-control.1: 10
  security.broken-access-control.2: 10

links:
  - '[OWASP Top Ten](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)'
  - '[Burp Suite Scanner](https://portswigger.net/burp)'
  - '[Observatory by Mozilla](https://observatory.mozilla.org/)'
  - '[Postman](https://www.getpostman.com/)'

---

# Identify Broken Access Control

---
## Content

SAST (Static Application Security Testing) and DAST (Dynamic Application Security Testing) tools can read source code to detect access control vulnerabilities. Similarly, web crawlers and automated scanners are particularly effective at identifying access control vulnerabilities. If you use a commonly known web application framework, known vulnerabilities for that framework can be scanned for access control issues.

Largely this vulnerability comes from absentmindedness in the development process. It is simply that web developers implement access control as the last step in the process, when a product or feature is still in development but is pushed into a demo-able state, or is left unfinished. Sometimes it comes from application framework components that are not protected by default.

From OWASP, examples of common access control vulnerabilities:

* Bypassing access control checks by modifying the URL,
internal application state, or the HTML page, or simply using a
custom API attack tool.
* Allowing the primary key to be changed to another users
record, permitting viewing or editing someone else's account.
* Elevation of privilege. Acting as a user without being logged in,
or acting as an admin when logged in as a user.
* Metadata manipulation, such as replaying or tampering with a
JSON Web Token (JWT) access control token or a cookie or
hidden field manipulated to elevate privileges, or abusing JWT
invalidation
* CORS misconfiguration allows unauthorized API access.
* Force browsing to authenticated pages as an unauthenticated
user or to privileged pages as a standard user. Accessing API
with missing access controls for POST, PUT and DELETE.

To identify issues in your application:

1. Identify all available resources in your application (each distinct URL in a web application, for example, or each screen in a mobile application).
2. Determine and document the proper access requirements for that resource (which users, what credentials). Ask yourself questions like: does the user need to be an admin for this feature? Do they need to be a paid user to activate this screen?
3. Scan your application by visiting that resource with each credential type and report which HTTP status code is reported back. (Paid vs unpaid users, different plan levels, logged in vs not logged in, has access to group vs does not have access, etc)

Burp Suite, and Mozilla have a scanner that can help with this process. Postman can also be configured to use some kinds of authentication tokens to access resources.
 
---
## Practice

What information do I need to know about my application in order to create automated tests to ensure proper access control?

???

* The access control requirements for each resource
* The contact information for the developer who implemented the initial system
* The analytics data for each resource

---
## Revision

What order to these steps go in to identify access control issues in your organization?

???
???
???

* Identify all available resources in your application
* Determine and document the proper access requirements for that resource
* Scan your application by visiting that resource with each credential type and report which HTTP status code is reported back.
