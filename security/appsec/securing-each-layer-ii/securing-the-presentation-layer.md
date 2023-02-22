---
author: milesflo
type: normal
category: must-know
links:
  - >-
    [SANS
    Institute](https://www.sans.org/reading-room/whitepapers/protocols/applying-osi-layer-network-model-information-security-1309){website}
  - >-
    [OWASP
    Buffer Overflow](www.owasp.org/index.php/Buffer_Overflow){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Securing the Presentation Layer


---

## Content

Vulnerabilities in the Presentation Layer* occur when an attacker gains access to some or all other parts of the system by *passing unexpected or illegal arguments* to simple, OS-specific methods.

One such vulnerability is the **buffer overflow**.

In short, this condition occurs when a program attempts to write to a memory address outside of its restricted bounds, tampering with the memory of other programs. This can result in crashing, corruption of memory, and execution of malicious code.

For more in-depth information on this vulnerability, check out the *OWASP Buffer Overflow* link in the **Learn More** section.

The possibility of this happening can be mitigated with untrusting code practices. When making network calls, be sure to extensively validate the contents of the response before parsing it.


---

## Practice

What is one control in the Presentation Layer of the OSI Model?

???

- Input validation of network responses
- Using a strong, unique password
- Strict use of ports as they are designed
- Use of a physical firewall
- Using managed switches prevent topographical loops
- Locks and secure enclosures


---

## Revision

A ??? occurs when a program attempts to write to a memory address outside of its restricted bounds.

- Buffer Overflow
- Checksum Validation
- Stack Overflow
- SQL Injection
- Format String attack


---

## Quiz

### What is one control for this OSI model Layer?


```plain-text
What is one control in the Presentation Layer of the OSI Model?
```

???

- Input validation of network responses
- Using a strong, unique password
- Strict use of ports as they are designed
- Use of a physical firewall
