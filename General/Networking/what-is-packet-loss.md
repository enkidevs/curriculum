# What is packet loss?
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

**Packet loss** is a phenomenon happening when packets sent across a computer network fail to reach the intended destination.

They can either be lost on their way or ,more often, intentionally dropped. The latter happens because packets sent through a *router* or a *network segment* arrive at a greater rate than the router is able to process. As a consequence, there is no other option than to *drop* them.

**Packet loss** is also used as a relevant metric for the performance of a network, measured as the percentage of packets *lost* with respect to packets *sent*.

The causes of packet loss vary, yet the most common ones are:
 - `link congestion`  - network devices intentionally drop packets
 - `device performance` - hardware devices can't physically keep up[1]
 - `software issues` on network devices that can go undetected[2]
 - `faulty hardware or cabling`

**Packet loss** is a common and normal[3] thing, but at a acceptable rate. For example, for **VoIP** traffic losses between `5%` and `10%` will significantly affect the quality, while for video and audio streaming `1%` is *good* and `2.5%` is *acceptable*.

-**

`FOOTNOTES`

[1:device performance]
Routers, Switches, Firewalls are typical devices whose **CPU** or **memory** can be maxed out. Therefore, they can't allow additional traffic to go through them and will result in **packet loss**.


[2:software issues]
As software written for *network devices* can can't possibly be perfect and bugs might occur undetected, it's recommended to always update drivers and such software to the latest versions.

[3:Packet loss]
**TCP** will detect packet loss and will *resend* packets that don't get to their destination to ensure reliable communication and avoid congestion.

However, media streaming, VoIP or video games don't use **TCP**, but other Protocols that can't fully handle packet loss.
---
## Practice

What is the biggest acceptable loss rate for video and audio streaming
??? ?

* up to `2.5%`
* up to `10%`
* up to `5%`

---
## Revision

??? is also used as metric for performance of the computer.

* Packet loss
* latency
* ping
