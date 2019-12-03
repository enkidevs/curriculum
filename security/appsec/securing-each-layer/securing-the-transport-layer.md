---
author: milesflo

levels:

  - beginner

  - basic

  - medium

type: normal

aspects:
  - introduction

category: must-know

inAlgoPool: false


links:

  - '[SANS Institute](https://www.sans.org/reading-room/whitepapers/protocols/applying-osi-layer-network-model-information-security-1309){website}'
  - '[Common Ports Cheatsheet](http://packetlife.net/media/library/23/common_ports.pdf){website}'


---

# Securing the Transport Layer

---
## Content

Vulnerabilities in the Transport Layer are usually brought about by misuse of ports. Hosting a web server on a remote access port (22), or handling SFTP on port 8000, for example. This kind of misuse results in an inability to filter out traffic by service, and can create errors that affect higher Layers on the OSI model. These issues can be mitigated by [strictly using ports as they are designed](http://packetlife.net/media/library/23/common_ports.pdf). For example, Web servers should only be hosted on port 80, HTTPS (HTTP over Secure Socket Layer) on port 443, FTP on port 20-21, and SSH on port 22.
 
---
## Practice

What is one control in the Transport Layer of the OSI Model?
???


* Strict use of ports as they are designed
* Use of a physical firewall
* Using managed switches prevent topographical loops
* Locks and secure enclosures
* Encrypted password exchange and storage

---
## Revision

In order to have the most control over how traffic flows to a hosted web server, the service should be hosted on port ??? (with secure connections on port ???).


* 80
* 443
* 22
* 7
* 25

---
## Quiz
### What is one control for this OSI model Layer?
```
What is one control in the Transport Layer of the OSI Model?
```

 ???

* Strict use of ports as they are designed
* Use of a physical firewall
* Using managed switches prevent topographical loops
* Locks and secure enclosures
