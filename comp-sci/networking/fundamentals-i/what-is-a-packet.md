---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction

links:

  - '[www.dummies.com](http://www.dummies.com/programming/networking/cisco/cisco-networking-packets/){website}'
  - '[whatismyipaddress.com](http://whatismyipaddress.com/tcp-ip){website}'

parent: what-is-a-computer-network

---

# What is a packet?

---
## Content

Think of **packets**[1] as the simplest unit of communication in computer networks.

Whatever the nature of the communication over a computer network might be, data must be sent and received.

*Data transmission* - the action of sending data over a network works in the following way:
 - original data is broken down in smaller structures of data - `packets`
 - `packets` are transmitted following the rules of the *protocol* used
 -  when `packets` reach their destination, they are *reassembled* into the original data

A packet is composed of a **header** and a **payload** (the actual data sent). The content of the header depends on the protocol used for transmission.

Over the Internet, where *IP* (Internet Protocol) is the standard, packets' **header** needs to have:
 - source IP address
 - destination IP address
 - type of service (used for optimisations)
 - flags
 - other technical data

In the latter type of networks, packets are sent over the Internet through *nodes*[2] (devices and routers) positioned between the *source* and *destination*.

---
## Practice

Data transmission over the Internet works in the following way:

Original data is split into ??? at the ??? .
Data is transmitted following protocol rules.
Data is ??? at the ??? .


* packets
* source
* reassembled
* destination
* nodes
* datagrams
* IP
* payload
* header

---
## Revision

IP packets are usually made out of `header` and

???


* payload
* protocols
* packets
* header
* source
* datagram
* cells

---
## Footnotes
[1:packets]
Other terms equivalent to **packets** are datagrams, segments, blocks, cells and even frames, depending on the protocol used for data transmission.

[2:how do nodes work?]
Contrary to *traditional lines* of communication, such as telephone lines, where there must be a continuous physical link between the source and destination, modern networks work on a different concept.

Packets are routed from *source* to *destination*, going through **nodes**. At each node calculations are made deciding the most efficient route of reaching the destination.

