# What are TCP and UDP?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.bleepingcomputer.com/tutorials/tcp-and-udp-ports-explained/'

---
## Content

"Both `TCP` and `UDP` are protocols that deal with sending bits of data(packets) over a network.

Because both are built on top of the **IP** (Internet Protocol), packets will be sent to an IP address. What differentiates `TCP` and `UDP` is the way the transfer of data is handled.

`TCP` (Transmission Control Protocol) is the most widely used protocol over the Internet mostly because of its reliability. Its purpose is to ensure that all **packets** are received uncorrupted files. Using this *method*, the computer which is **sending** data would connect directly to the computer **receiving** data. 

After both computers are aware that the transfer transfer is over, the *connection* is dropped. `TCP` connection tends to be *faster* and more *reliable* then its UDP counter part, the trade-off being the load it puts on the computer for monitoring the connection.

`UDP` (User Datagram Protocol) achieves the same result: sharing *data* between two devices over a *network*. However, the method in which the transfer happens is different and less reliable. `UDP` bundles everything into a single *packet*, which it then releases into the **network**, with no way of telling whether the packet *reached its destination*.

Its advantage over `TCP` is the *low overhead*[1] caused. `UDP` is very popular in the case of services that don't have to respond immediately.

# Footnotes

[1:overhead] 
Overhead in Computer science means any form of excess or indirect computation, time, memory, bandwidth or other resources required to complete a specific task. 

---
## Practice

The protocol in which the two machines connect directly is
???

* `TCP`
* `UDP`
* `IP`

---
## Revision

??? is the protocol which bundles all of the data in one big packet.

* `UDP`
* `TCP`
* `IP`
