---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - deep

  - workout

links:

  - '[www.bleepingcomputer.com](https://www.bleepingcomputer.com/tutorials/tcp-and-udp-ports-explained/){website}'
  - '[www.diffen.com](http://www.diffen.com/difference/TCP_vs_UDP){website}'

parent: what-is-a-port

---

# What are TCP and UDP?

---
## Content

Both `TCP` and `UDP` are protocols that deal with sending chunks of data (packets) over a network.

Used together with **IP** (which deals with the "where"), these protocols define "how" the data is sent.

- `TCP` is **connection oriented** – once a connection is established, data can be sent *to* and *from* both parties.
- `UDP` is a simpler, connectionless Internet protocol. Multiple messages are sent as packets in chunks using `UDP`.

#### TCP

Transmission Control Protocol is the most widely used protocol over the Internet mostly due to its *reliability*.
Its purpose is to ensure that all **packets** are received as uncorrupted files.

For two devices to communicate, a `TCP` connection must be established. This connection enables sending data in **ordered** chunks (packets). If some packets are lost along the way, the device **receiving** data can ask for them again.

After both computers are aware that the transfer is over (there are no packets missing), the connection is *dropped*.

As a consequence, `TCP` transfers are **slower**, but error correction is ensured.

Common protocols that work on top of `TCP` are: **HTTP**, **HTTPS**[1], **FTP**, **SMTP** and **Telnet**. We will get back to these in the following insights.

#### UDP

User Datagram Protocol, on the other hand, was designed for **fast data transmission**.

When `datagrams` (packets) are released into the **network** there is no way of telling whether they reach their destination. Data can arrive out of order, duplicated or none at all.

The simplicity of `UDP` reduces the overhead[2] of other protocols and can be adequate for some applications such as real-time media streams or broadcasts.

Protocols such as **DHCP** and **VOIP** work on top of `UDP`.

---
## Practice

Which of the following protocols ensures error-correction of **packets**?

???


* `TCP`
* `UDP`
* `IP`

---
## Revision

Which of the following protocols prioritizes **speed** over **reliability** ?

???


* `UDP`
* `TCP`
* `IP`

---
## Footnotes
[1:protocol naming convention]
Protocol acronyms that end with an `s` usually refer to the **secure** (encrypted, authenticated, etc.) version of some protocol.

For example, `HTTPS` refers to the secure extension of `HTTP`.

[2:overhead]
Overhead, in Computer Science, means any form of excess or indirect computation, time, memory, bandwidth or other resources required to complete a specific task.

