# What is a packet?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'http://www.dummies.com/programming/networking/cisco/cisco-networking-packets/'

---
## Content

Think of **packets**[1] as the basic unit of communication in computer networks.

Whatever the nature of the communication over a computer network might be, data must be sent and received.

*Data transmission* - the action of sending data over a network works in the following way:
 - original data is broken down in smaller structures of data - `packets`
 - `packets` are transmitted following the rules of the *protocol* used
 -  when `packets` reach their destination, they are *reassembled* into the original data

The structure of a **packet** also depends on what protocol is used for transmission, yet they usually have a **header** and a **payload** - the actual data sent.

Over the Internet, where *IP* is the standard, packets' **header** needs to have:
 - source IP address
 - destination IP address
 - *sequence number* of packets
 - type of service
 - flags
 - other technical data

Another thing that defines functionality of packets is the **protocol**. While **ethernet** based networks imply usage of *ethernet frames*, the ones using **IP** require *IP packets*.

In the latter type of networks, packets are sent over the Internet through *nodes*[2] (devices and routers) positioned between the *source* and *destination*.

---
## Footnotes

[1:packets]
Other terms equivalent to **packets** are datagrams, segements, blocks, cells and even frames, depending on the protocol used for data transmission.

[2:how nodes work]
Contrary to *traditional lines* of communication such as telephone lines where there must be a continuous physical link between the source and destination,
modern networks work on a different concept.

Packets are routed from *source* to *destination*, going through **nodes**. At each node calculations are made deciding the most efficient route of reaching the destination.

This mechanism makes use of the underlying structure of the Internet for free.
---
## Practice

??? help latter forms networking communication be more efficient.

* nodes
* source
* packets
---
## Revision

??? and ??? define functionality of the packets.

* header
* protocols
* packets
* payload
