---
author: lizTheDeveloper

levels:

  - beginner

  - basic

aspects:

  - introduction

type: normal

category: best practice


standards:
  security.configure-security.1: 10
  security.configure-security.3: 10

links:
  - '[OWASP Testing Guide for Configuration Management](https://www.owasp.org/index.php/Testing_for_configuration_management)'
  - '[OWASP Testing guide for HTTP Error Codes](https://www.owasp.org/index.php/Testing_for_Error_Code_(OTG-ERR-001))'
  - '[Using Metasploit to do a port scan](https://www.youtube.com/watch?v=CYB6Uta9VTI)'

---

# Check Defaults

---
## Content

One of the best ways to check to see if you have default settings that are vulnerable is to use an automated scanner. A manual inventory of the application components is still required to identify automated scanners for each part of the application stack.

Check with tools like metasploit, with scripts that are tailored for your application framework. There are tools written specifically to check for vulnerabilities in Wordpress, Ruby on Rails, etc.

Once someone writes a framework that automates common application tasks, someone, somewhere on the internet sets out to find vulnerabilities to take advantage of the default settings of that framework. Check the default settings, and the security recommendations of each framework and library in your application stack.

Bookmark this insight to receive links to the OWASP testing guides, Metasploit video tutorials, and more.

---
## Practice

A ??? of the ??? is required to identify ??? for each part of the application.

* manual inventory
* application components
* automated scanners
* pentester
* hacking team
* AI hacker

---
## Revision

What is a cause of hackers to develop automated attacks for application components:
???

* when the default security settings are vulnerable
* when too many people set their settings to insecure settings
* when they're hosted on windows
* when a phishing attack is successful
