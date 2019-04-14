---
author: lizTheDeveloper

levels:

  - beginner

  - basic

  - medium

aspects:

  - introduction

  - new

  - workout

  - deep

type: normal

category: pattern


standards:
  security.broken-access-control.3: 10

links:
  - '[link to official documentation](https://enki.com)'
  - '[HTTP Status Codes (cats)](https://http.cat/)'

---

# Broken Access Control

---
## Content

Broken Access Control means misconfigured or absent features that are aupposed to ensure that users are only able to access resources they're intended to access, and that no users are able to access resources not intended for access. In layman's terms, it means not letting normal users have admin-level access, and making sure that all the content you need to be logged in to see actually has a check that prevents you seeing it if you aren't logged in.

Normally this is handled in the *Session and Application Layers*. The Session layer will hold a *credential* that securely identifies the user. That user will have access to some features of the application, and some _may_ be denied.

Access control is considered "broken" when it is simple for users to circumvent access control measures. For instance, if the credential were stored in the URL:
```
example.com/user_id=1234&admin=false
```
If the user modified the latter part of the url to read `admin=true`, and that granted the user administrator powers, this would be an example of broken access control.

Another example is this URL:
```
example.com/admin_dashboard
```
If the user who is logged in is not an administrator, and yet visiting that URL gives them access to administrator features not intended for access by that user, this would be an example of broken access control.

The HTTP Status Code you should receive depends on what's wrong with the credential. When attempting to access a URL with a credential that is not on the list of authorized credentials, you want **401 Not Authorized**. Servers occasionally return a **403 Forbidden** or a **402 Payment Required** when users access a resource that is locked for a reason. Sometimes, servers return a **404 Not Found**, which is like denying the existence of the URL in the first place.
 
---
## Practice

When a user accesses a URL they should not be able to access, return the HTTP status code ???.

* 401
* 500
* 200
* 204
* 404

---
## Revision

If a user should not even know about a URL if they don't have the proper credential, return a HTTP Status Code ???.

* 404
* 301
* 401
* 200
* 500
