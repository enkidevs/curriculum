---
author: milesflo
type: normal
category: hack
links:
  - >-
    [owasp.org](https://www.owasp.org/index.php/Cross-site_Scripting_(XSS)){website}
  - >-
    [OWASP Top
    Ten](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf){pdf}
---

# XSS (Cross-Site Scripting) Introduction


---

## Content

Cross-Site Scripting (abbreviated as XSS) is a malicious attack on a web form.

A malicious user embeds HTML/JavaScript in a form (such as a search bar or comment form), and that code is executed when the plaintext is rendered.

Take for example the mockup form I've create below...

```javascript
Add a Comment Below:
===
Hi, great site. Too bad I hacked it!
<script>
window.location="http://www.mysite.com/"
</script>

===
[SEND]
```

Upon sending this comment, any users that then visit this page will be redirected to my website.

This method can be used to steal cookies-- a chunk of data used in authenticating a user, redirect users to phishing websites, and other potential exploits.


---

## Practice

Cross Site Scripting can be used to steal ???-- a chunk of data used in authenticating a user.

* cookies
* usernames
* passwords
* cupcakes


---

## Revision

Embed malicious code in my comment form:

```javascript
Add a Comment Below:
===
Hi, great site. Too bad I hacked it!
<???>
???.location="http://www.mysite.com/"
</script>
===
[SEND]
```

* script
* window
* global
* blink
* h1
