---
author: milesflo

levels:

  - basic

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false


links:

  - '[SANS Institute](https://www.sans.org/reading-room/whitepapers/protocols/applying-osi-layer-network-model-information-security-1309){website}'

parent: securing-the-session-layer

---

# Identifying the Presentation Layer

---
## Content

The Presentation Layer (Layer 6), also called the syntax layer, is responsible for taking data from the Application Layer above it and converting it from a system-specific format to a format that can be parsed by the recipient. For example, the Presentation Layer would be responsible for converting Windows line endings (CRLF) in text file to Unix line endings (LF) and vice versa as needed.

The Presentation Layer is also be responsible for encryption/decryption of data from the Application Layer for secure transmission through lower layers.
**Note:** This process may also take place in the Application, Session, Transport, and/or Network layers, depending on the use case.

---
## Practice

What role does the Presentation Layer play in the OSI 7 Layer Model?
???


* Data conversion and encryption/decryption
* Packaging data packets into data streams and vice versa for transport
* Transmitting data between network nodes
* Routing and transmission over the physical topography of the Internet
* Maintaining and ensuring a stable connection between two hosts over the Internet
* Opening, closing, and managing connections between applications
* Providing computational power via electronic circuits

---
## Revision

The Presentation Layer converts data from the ??? format to a format usable by the recipient.


* system-specific
* plaintext
* binary
* byte

---
## Quiz 
### What role does this Layer play in the OSI 7 Layer Model?
```
What role does the Presentation Layer play in the OSI 7 Layer Model?
```

 ???

* Data conversion and encryption/decryption
* Opening, closing, and managing connections between applications
* Maintaining and ensuring a stable connection between two hosts over the Internet
* Transmitting data between network nodes

 
