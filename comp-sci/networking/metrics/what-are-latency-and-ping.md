---
author: catalin
type: normal
category: must-know
links:
  - >-
    [whatis.techtarget.com](http://whatis.techtarget.com/definition/latency){website}
  - >-
    [www.websitepulse.com](https://www.websitepulse.com/blog/what-is-ping-test){website}
  - '[en.wikipedia.org](https://en.wikipedia.org/wiki/Ping_){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What are latency and ping?


---

## Content

**Latency** - also known as **lag** or **delay** is a metric that measures the amount of time it takes to transfer information from one point to another. It is measured in *milliseconds* (ms)[1].

In *packet-switched*[2] networks the latency is measured[3] either **one-way** (direct trip from source to destination) or **round-trip** (trip from source to destination and from destination to source).

However, *round-trip delay time* is more often quoted, being able to be measured from a single point.

**RTT** is the time it takes for a `packet` to be sent to a destination point and for the **acknowledgment** message to get back to the source.

Keep in mind that processing and decoding time of the `packet` is not taken into consideration.

To calculate **RTT**, one can use the `ping` command line utility, available on most systems, including **Windows**:

```bash
ping enki.com
```

A general output would be:

```plain-text
64 bytes from 52.85.178.222:
   icmp_seq=1 ttl=55 time=55.9 ms
64 bytes from 52.85.178.222:
   icmp_seq=2 ttl=55 time=55.6 ms
64 bytes from 52.85.178.222:
   icmp_seq=3 ttl=55 time=56.2 ms
```

You can see that the average time is around `55-56` ms.

In the majority of cases the **ping rate** is equivalent to the **effective latency** between a device and a server, but factors such as throttling and congestion[4] might affect the results.
The terms are roughly synonymous and many games and applications report the **latency** as **ping rate**.


---

## Practice

We can talk about **round-trip time** only in:

???

- packet-switched networks
- complex networks
- UDP networks
- simple networks
- networks with a firewall


---

## Revision

In the context of computer networks, **RTT** stands for:

???

- round-trip time
- routed-through-tunnel
- real-time trip
- ready trip time


---

## Footnotes

[1:Internet Speed]
Internet speed is roughly a combination of **bandwidth** and **latency**.

Both are in a *cause-and-effect* relationship, each one affecting how the other functions.

[2:Packet switching]
**Packet switching** is a digital networking communications method that groups all transmitted data into suitably sized blocks, called `packets`.

[3:Factors]
There are some factors that directly influence the network latency:

- *connection type* : for example satellite connections are slower than cable connections
- *distance* : the farther away you are from the server, the more time it takes for information to get to you

[4:Congestion]
**Congestion** goes hand in hand with **bandwidth**. The smaller your bandwidth is, the more likely are you to experience congestion with low latency.

All the information gets to you fast enough, but it does not have enough space on the bandwidth to get through and will slow down.
