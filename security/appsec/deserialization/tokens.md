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

category: best practice


standards:
  security.insecure-deserialization.2: 10

links:
  - '[link to official documentation](https://enki.com)'
  - '[A deeper dive on how and why this happens](https://www.whitehatsec.com/blog/web-storage-security/)'
  - '[JSON Web Tokens](https://jwt.io/)'
  - '[Auth0 on how and where to store tokens](https://auth0.com/docs/security/store-tokens)'

---

# Tokens

---
## Content

To identify a request, use a **session token**, and use the session server to store data related to that session token. This will prevent users from directly modifying their state.

If you must send state to a user and be sure it has not been tampered with, you can use an **Integrity Check**. **JSON Web Tokens** have a built-in integrity check, and are a great example of a way to represent claims securely between two parties. Bookmark this insight to receive a link.

You can use an in-memory store often to store session tokens for later retrevial. Memcached, Redis, and other NoSQL databases are specifically designed to accommodate this type of task, instead offering O(1) access against a key.
 
---
## Practice

What is one example of how you can build in an integrity check to a token passed to the client?
???

What is one example of a server that can handle session storage?
???

* JSON Web Tokens
* Memcached
* Apache
* XML DTDs

---
## Revision

What is the best way to handle persisting user state between stateless requests?
???

* Pass an integrity-verified token to the user that represents user state stored elsewhere
* Store user state in an integrity-verified token
* Encrypt user state end-to-end
