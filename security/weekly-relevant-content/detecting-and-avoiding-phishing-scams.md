# Detecting and Avoiding Phishing Scams
author: milesflo

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

links:

  - [Krebs On Security](https://krebsonsecurity.com/2017/12/phishers-are-upping-their-game-so-should-you/)

---
# Content

**Phishing** is defined as "the attempt to obtain sensitive information, often for malicious reasons, by disguising as a trustworthy entity in an electronic communication". This type of attack can take the form of web services, emails, and text messages, and got its name because attacker will 'bait' their target into divulging personal data.

Phishers have employed new methods in the last few years. Pre-2015, a rule of thumb for detecting 3rd-party phishing sites was to look for an SSL certificate (a green lock in the address bar of the browser) on login pages. Due to the ease of creating SSL certs, the number of phishing sites hosted on HTTPS has increased from <1% in 2015, to nearly 25% in Q3 of 2017. The green lock in the address bar indicates that connection with the web service is end-to-end encrypted, **not that it is safe or legitimate**. As a November poll conducted by [PhishLabs](https://www.phishlabs.com/) revealed, [nearly 80% of responders believed otherwise](https://info.phishlabs.com/blog/have-we-conditioned-web-users-to-be-phished).

In addition to hosting their sites over HTTPS, these bad actors will polish up their websites to look official with proper spelling and stolen/custom image assets, as well as using links back to the original site. To the untrained eye, the fake is very passable.

One huge tell in the fake will be the URL. For example, a site hosted at the address `https://system.confirm.fbsettings-recovery.com/confirmation-sysytem.html` (Which is an actual phishing site-- visit at your own risk) may _look_ like the legitimate Facebook recovery page, but one look at its oddly formatted address will reveal otherwise. [PhishTank](https://www.phishtank.com/) is a great database for finding examples of phishing sites. Avoid clicking on links to these oddly formatted URLs. Amateur phishing sites may also have spelling mistakes, malformed/outdated site layouts, and unusual image assets.

In general, if a request from a company/service seems unusual, instead of using the web browser, contact them via other means, such as over the phone or email.

---
# Practice Question

What does a green lock in a browser URL bar indicate?
???

* End-to-end encryption
* Website is safe
* Website is legitimate
* All other options are correct

---
# Revision Question

One of the biggest tells that a web page is actually a 3rd party phishing site is ???.

* (All of these apply)
* an unusually formatted URL
* an outdated site layout
* spelling mistakes
* unusual image assets
