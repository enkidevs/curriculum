---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - security

notes: alexgaynor's tip

links:

  - >-
    [alexgaynor.net](https://alexgaynor.net/2015/jun/08/tips-for-improving-your-companys-security/){website}

---
# Store user credentials responsibly

---
## Content

When storing users' credentials in a database, never store their passwords in plain text.

There most common practice is to hash them using existing algorithms designed for passwords such as `bcrypt`, `scrypt` or `PBKDF2` (with a high iteration count). 

Their open source implementations are available for most programming languages.

Once a password is hashed it appears as randomly generated sequence of characters:

```
hash("hello") = 
    cf24dba5fb0a30e26e8b2ac5b9e29e1b161e
    c1fa7425e73043362938b9824as33af91349

```
As a result, if a database is compromised, an attacker won't receive plain password.