---
author: catalin
type: normal
category: must-know
links:
  - '[Packet Loss](https://en.wikipedia.org/wiki/Packet_loss){website}'
  - >-
    [Understanding Packet
    Loss](https://esj.com/articles/2012/12/13/understanding-packet-loss.aspx){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How Does Packet Loss Happen?


---

## Content

**Packet loss** is a phenomenon that happens when packets sent across a computer network fail to reach their intended destination.

They can be lost on their way or, more often, intentionally dropped. The latter happens because packets sent through a *router* or a *network segment* arrive at a greater rate than the router is able to process. As a consequence, there is no other option than to *drop* them.

**Packet loss** is also used as a relevant metric for the performance of a network, measured as the percentage of packets *lost* with respect to packets *sent*.

The causes of packet loss vary, yet the most common ones are:

- `link congestion`  - network devices intentionally drop packets
- `device performance` - hardware devices can't physically keep up[1]
- `software issues` on network devices that can go undetected[2]
- `faulty hardware or cabling`

**Packet loss** is a common and normal[3] thing, but at an acceptable rate. For example, for **VoIP**, traffic losses between `5%` and `10%` will significantly affect the quality, while for video and audio streaming `1%` is *good* and `2.5%` is *acceptable*.


---

## Revision

*Packet loss* is measured ???

- as a percentage
- in milliseconds
- in seconds
- as a number of packets


---

## Footnotes

[1:Device performance]
Routers, Switches, Firewalls are typical devices whose **CPU** or **memory** can be maxed out.

Therefore, they can't allow additional traffic to go through them and will result in **packet loss**.

[2:Software issues]
As software written for *network devices* is not perfect, bugs might occur undetected.

Therefore, it's highly recommended to always update drivers and such software to the latest versions.

[3:Packet loss]
**TCP** will detect packet loss and will *resend* packets that don't get to their destination to ensure reliable communication and avoid congestion.

However, media streaming, VoIP or video games don't use **TCP**, but **UDP** that doesn't handle packet loss.
