---
author: lizTheDeveloper

aspects:
  - introduction

type: normal

category: how to

links:
  - '[OWASP ZAP (a vulnerability scanning tool)](https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project)'
  - '[A roundup of hacker tools](https://www.concise-courses.com/hacking-tools/top-ten/)'
  - '[NodeGoat- a vulnerable node.js server you can download to test and validate tools](https://github.com/OWASP/NodeGoat)'
  - '[An exercise using automated tools with the NodeGoat server](https://f0.holisticinfosecforwebdevelopers.com/chap06.html#process-agile-development-and-practices-security-regression-testing)'

---

# Automated Tools

---
## Content

The beautiful thing about creating an automated exploit is that you never have to do it by hand again, and neither does anyone else. 

This makes automated exploit development very dangerous if it gets into the wrong hands.

Because of this, white-hat (ie. good guy) exploit researchers will publish vulnerability scanning tools that allow penetration testers to demonstrate the vulnerability, in order to mitigate it. 

This is also very handy tooling for application developers, as you can scan your application for vulnerability as you develop it, as a regular cycle.

> 💡 Some tools common to the industry can be found in this footnote[1].

---
## Practice

In order to develop applications that cannot be scanned for vulnerabilities, you should periodically ??? your ??? using ???.

* scan
* application
* an automated tool
* attack
* sniff
* crack
* coworker's email
* a password cracker
* a packet sniffer

---
## Revision

In order to find vulnerable ports and network devices, you would use a ???

* packet sniffer
* wi-fi hijacker
* password cracker
* port forwarder

---
## Footnotes

[1:Common Tools]
Here's a list of the most common tools used in application security:
- [Metasploit](https://www.metasploit.com/) - an automated vulnerability scanner
- [Wireshark](https://www.wireshark.org/) / [Snort](https://www.snort.org/) - packet sniffers / network monitors
- [John The Ripper](https://www.openwall.com/john/) - a password cracker
- [Aircrack-NG](https://www.aircrack-ng.org/) - password / wifi cracker
- [Ettercap](https://www.ettercap-project.org/) - Man in the middle attacker