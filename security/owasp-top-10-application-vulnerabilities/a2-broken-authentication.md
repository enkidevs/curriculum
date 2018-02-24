# Broken Authentication
author: milesflo

levels:

  - basic

  - medium

type: normal

category: must-know
links:

  - [OWASP Top 10 - 2017](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)

---
# Content

Broken Authentication is an umbrella term for application vulnerabilities related to authentication and session management. These are often implemented incorrectly, allowing attackers to compromise passwords, keys, or session tokens, or to exploit other implementation flaws to assume other users’ identities temporarily or permanently.

One such vulnerability is failing to mitigate [**brute force**](https://en.wikipedia.org/wiki/Brute-force_attack) attacks on authentication end-points. Such endpoints should be heavily logged and [rate limited](https://en.wikipedia.org/wiki/Rate_limiting) to prevent this kind of attack. 

One should also avoid single-factor authentication in favor of [2-Factor Authentication](https://www.securenvoy.com/two-factor-authentication/what-is-2fa.shtm), never employ knowlege-based password recovery, and only allow users to create [strong passwords](https://www.howtogeek.com/195430/how-to-create-a-strong-password-and-remember-it/) that are not [common](https://github.com/danielmiessler/SecLists/blob/master/Passwords/500-worst-passwords.txt)

---
## Practice Question


Which of the following situations could present a Broken Authentication vulnerability?
???

* Allowing temporary account access if the user inputs their maiden name and home address
* 
* 

---
## Revision Question

* asfd
* asdf
* aasdf
