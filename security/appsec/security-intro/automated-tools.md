---
author: lizTheDeveloper
type: normal
category: how-to
links:
  - '[ZAP (a vulnerability scanning tool)](https://www.zaproxy.org/){website}'
  - >-
    [A roundup of hacker
    tools](https://www.concise-courses.com/hacking-tools/top-ten/){website}
  - >-
    [NodeGoat- a vulnerable node.js server you can download to test and validate
    tools](https://github.com/OWASP/NodeGoat){website}
  - >-
    [An exercise using automated tools with the NodeGoat
    server](https://f0.holisticinfosecforwebdevelopers.com/chap06.html#process-agile-development-and-practices-security-regression-testing){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Automated Tools


---

## Content

The beautiful thing about creating an automated exploit is that you never have to do it by hand again, and neither does anyone else. 

This makes automated exploit development very dangerous if it gets into the wrong hands.

Because of this, *white-hat*[1] (ie. good guy) exploit researchers will publish vulnerability scanning tools that allow penetration testers to demonstrate the vulnerability, in order to mitigate it. 

This is also very handy tooling for application developers, as you can scan your application for vulnerability as you develop it, as a regular cycle.

> 💡 Some tools common to the industry can be found in this footnote[2].

In order to improve application security, we'll make use of many automated tools to make the process more automatic, and integrate it into your normal developer workflow.


---

## Practice

In order to develop applications that cannot be scanned for vulnerabilities, you should periodically ??? your ??? using ???.

- scan
- application
- an automated tool
- attack
- sniff
- crack
- coworker's email
- a password cracker
- a packet sniffer


---

## Footnotes

[1:Hacker Types]
There are three types of hackers:

- black-hat are looking for exploits for malicious reasons and without permision
- white-hat are looking for exploits for good reasons and with permision
- grey-hat are looking for exploits for good reasons but without permision

[2:Common Tools]
Here's a list of the most common tools used in application security:

- [Metasploit](https://www.metasploit.com/) - an automated vulnerability scanner
- [Wireshark](https://www.wireshark.org/) / [Snort](https://www.snort.org/) - packet sniffers / network monitors
- [John The Ripper](https://www.openwall.com/john/) - a password cracker
- [Aircrack-NG](https://www.aircrack-ng.org/) - password / wifi cracker
- [Ettercap](https://www.ettercap-project.org/) - Man in the middle attacker
