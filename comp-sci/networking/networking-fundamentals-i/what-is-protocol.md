---
author: catalin
type: normal
category: must-know
links:
  - >-
    [Transmission Control
    Protocol](https://www.tutorialspoint.com/internet_technologies/internet_protocols.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Is a Protocol?


---

## Content

**Networks** enable two or more devices to *communicate*.

As in real life, for two parties to communicate efficiently, they need to follow some rules. With regard to computer networks, these sets of rules are called **protocols**.

So far, you must have encountered some of the following **protocols**:

- `IP` - used to uniquely identify computers (*hosts*)
- `FTP`[1] - standard protocol for file transfer between two hosts
- `HTTP` - key protocol for data transfer across the *World Wide Web*
- `SMTP` - used for mail transfer

Some of the **protocols** used are hidden from the user, while others can be spotted by accessing a web page:

```plain-text
// the HTTPS protocol is used
https://enki.com
```

In human communication, we can think of *English* as a **protocol**. It defines rules for the parties to follow, and hence "speak the same language".

However, a single protocol might not be enough. For example, an additional rule that states "two persons shouldn't speak at the same time" should be included.

In the same way, communication over networks requires multiple **protocols**, organized hierarchically[2].


---

## Practice

Which of the following protocols is used solely for file transfer?

???

- FTP
- SMTP
- IP
- HTTPS


---

## Revision

Protocols are ??? that ensure efficient communication between two devices, over a network.

- rules
- privileges
- properties


---

## Footnotes

[1:Fun fact]
`FTP` was firstly published by Abhay Bhushan in **1971**, making it over **45** years old.

[2:Network Layers]
According to the **OSI model** (used for computer systems communication standardization) there are 7 layers of *networking protocols*.

These layers range from a low-level **Physical Layer** to a high-level **Application Layer**.

Any protocol can be pinpointed to a specific layer. For example, the `HTTP` protocol is situated on the **Session Layer** that manages continuous exchange of information.
