---
author: catalin
type: normal
category: must-know
links:
  - >-
    [www.cisco.com](http://www.cisco.com/c/en/us/support/docs/voice/voice-quality/18902-jitter-packet-voice.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# What is jitter?


---

## Content

**Jitter** is defined as the variation in the delay of received packets in computer networks.

Keeping in mind that while **latency** is the time it takes to move a packet from point A to point B, **jitter** is the *change* in that time.

Jitter, referred to as **Packet Delay Variation**[1], is an undesirable effect caused by inherent tendencies[2] of **TCP/IP** networks. It is measured in milliseconds.

Imagine a simple network between two computers, **A** and **B**. **A** sends a packet to **B** in `20ms` and **B** sends a response to **A** in `20ms`, then the flow of data is continuous and neither of the computers experience **jitter**.

However, this is an ideal case.

Supposedly **A** sends packets every `20ms`, yet the router between **A** and **B** is busy handling other intensive tasks on the network (e.g. computer **C** is downloading a massive file). Consequently, computer **B** won't receive the packets constantly or evenly.

Following this scenario, instead of every `20ms`, **B** can receive packets with a delay (i.e. every `40ms`, `60ms` or more). This phenomenon is called **jitter**.

There's a pretty high chance you have experienced jitter before. Most recognisable scenarios are *lag spikes* in video games where players teleport across the map or *pauses in video buffering* on services like YouTube.


---

## Revision

The term **jitter** is used interchangeably with:

```plain-text
??? ??? ???
```

- Packet
- Delay
- Variation
- Latency
- Spikes
- Lag
- Continuous
- Effect


---

## Footnotes

[1:packet delay variation]
Keep in mind that the terms **Jitter** and **Packet Delay Variation** are not completely synonymous, but often used interchangeably.

[2:what causes jitter]
Common jitter causes in **TCP/IP** networks are:

- congestion
- improper queuing
- configuration errors
