---
author: lizTheDeveloper

levels:

  - beginner

  - basic

aspects:

  - introduction

type: normal

category: how to


standards:
  security.automated-tools.0: 10
  security.automated-tools.1: 10
  security.automated-tools.2: 10

links:
  - '[OWASP ZAP (a vulnerability scanning tool)](https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project)'
  - '[A roundup of hacker tools](https://www.concise-courses.com/hacking-tools/top-ten/)'
  - '[NodeGoat- a vulnerable node.js server you can download to test and validate tools](https://github.com/OWASP/NodeGoat)'
  - '[An exercise using automated tools with the NodeGoat server](https://f0.holisticinfosecforwebdevelopers.com/chap06.html#process-agile-development-and-practices-security-regression-testing)'

---

# Automated Tools

---
## Content

The beautiful thing about creating an automated exploit is that you never have to do it by hand again, and neither does anyone else. This makes automated exploit development very dangerous if it gets into the wrong hands. Because of this, white-hat (ie. good guy) exploit researchers will publish vulnerability scanning tools that allow penetration testers to demonstrate the vulnerability, in order to mitigate it. This is also very handy tooling for application developers, as you can scan your application for vulnerability as you develop it, as a regular cycle.

Today, many teams have no individual person devoted entirely to security, despite many countries around the world passing legislation that creates penalties on companies who fail to safeguard user data. It ends up falling on individual engineers to take up the call to guard user data by running vulnerability scans as part of their code review or QA process.
 
Some tools common to the industry:
- Metasploit - an automated vulnerability scanner
- Wireshark / Snort - packet sniffers / network monitors
- John The Ripper - a password cracker
- Aircrack-NG - password / wifi cracker
- Ettercap - Man in the middle attacker

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
