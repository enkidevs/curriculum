# What is jitter?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'http://www-users.cselabs.umn.edu/classes/Spring-2016/csci5221/Papers/Fundamentals_of_Internet_Measurement_A_Tutorial.pdf'

---
## Content

**Jitter** is defined as the variation in the delay of received packets in computer networks.

Keeping in mind that **latency** is the time it takes to move a packet from point A to point B, **jitter** is the *change* in that time.

Jitter, referred to as **Packet Delay Variation**[1] is an undesirable effect caused by inherent tendencies[2] of **TCP/IP** networks. It is measured in milliseconds.

Imagine a simple network between two computers, **A** and **B**. When **A** sends a packet to **B** in let's say `20ms` and **B** sends a response to **A** in `20ms` than the flow of data is continuous and neither of the computers experience **jitter**.

However, this is an ideal case. Let's say **A** sends packets every `20ms`, yet the router between **A** and **B** is busy handling other intensive tasks on the network (computer **C** is downloading a massive file). Due to this fact, computer **B** won't receive the packets constantly or evenly.

**B** would receive packets once every let's say `40ms` instead of `20ms`. Or it can receive multiple packets  at once every `60ms`. This is **jitter**.

There's a pretty high chance you have experienced jitter before. Most recognisable scenarios are *lag spikes* in video games where players teleport across the map or pauses for video buffering on services like YouTube.

-**

`FOOTNOTES`

[1:packet delay variation]
Keep in mind that the terms **Jitter** and **Packet Delay Variation** are not completely synonymous, but often used interchangeably.

[2:what causes jitter]
Common jitter causes in **TCP/IP** networks are:
 - congestion
 - improper queuing
 - configuration errors

---
## Practice

Common jitter causes are ???, ??? and ??? ?

* congestion
* improper queuing
* configuration errors
* hardware fail
* bad request

---
## Revision

What is the measured unit of **JItter**
??? ?

* milliseconds
* `bps`
* `Gbps`
