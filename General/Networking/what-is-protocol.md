# What is protocol?
author: catalin

levels:

  - beginner

type: normal

category: must-know

links:

  - 'https://www.tutorialspoint.com/internet_technologies/internet_protocols.htm'

  - 'http://www.comptechdoc.org/independent/networking/guide/netcategories.html'

parent: what-is-a-packet

---
## Content

**Networks** are used to enable two or more devices to *communicate*.

Now, exactly as in real life, when you want two parties to communicate effectively you need to follow some rules. Among computer networks, different sets of rules are called **protocols**.

So far, you must have encountered and used some of the following **protocols**:
- `IP` - used to uniquely identify computers (*hosts*)
- `FTP`[1] - standard protocol for file transfer between two hosts
- `HTTP` - key protocol for data transfer across the *Internet*
- `SMTP` - used for mail transfer

Some of the **protocols** used are hidden within the implementation of you devices while others are easily spotted by simply accessing a web page:
```
// here the HTTPS protocol is used
https://enki.com
```

In human communication we can think of the *English language* as a **protocol**. It defines some rules that make sure the parties understand each other.

However, other rules, and therefore other **protocols** are need. For example, two persons shouldn't speak at the same time because information might get lost.

In the same way, computer networks will use multiple **protocols** that are hierarchically organized on different layers[2].

---
## Footnotes

[1:Fun fact]
`FTP` was firstly published by Abhay Bhushan in **1971**, making it over **45** years old.

[2:Network Layers]
According to the **OSI model** (used for computer systems communication standardization) there are 7 layers of *networking protocols*.

These layers range from a low-level **Physical Layer** to a high-level **Application Layer**.

Any protocol can be pinpointed to a specific layer. For example, the `HTTP` protocol is situated on the **Session Layer** that manages continuous exchange of information.

---
## Practice

Which of the following protocols is used solely for file transfer?

???

* FTP
* SMTP
* IP
* HTTPS

---
## Revision

Protocols are ??? for a good communication between two devices within computer networks.

* rules
* privileges
* properties
