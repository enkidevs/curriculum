# What are latancy and ping?
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

links:

  - 'http://whatis.techtarget.com/definition/latency'
  - 'https://technet.microsoft.com/en-us/library/cc732509'

---
## Content

**Latency** - also known as **lag** or **delay** is the metrics that measures[1] the amount of time it takes to transfer information from one point to another. It is measured in *milliseconds* (ms).



In *packet-switched* networks the latency is measured either **one-way** (direct trip from source to destination) or **round-trip** (trip from source to destination and from destination to source)[2].


However, *round-trip delay time* is more often quoted, being able to be measured from a single point. Keep in mind that it does not include the time packets need to be sent over the network and the time taken to be processed or decoded.

To calculate round-trip delay time, one can use the `ping` command line utility, available on most systems, including Windows:

```
ping enki.com
```

A general output would be:
```
64 bytes from 52.85.178.222:
   icmp_seq=1 ttl=55 time=55.9 ms
64 bytes from 52.85.178.222:
   icmp_seq=2 ttl=55 time=55.6 ms
64 bytes from 52.85.178.222:
  icmp_seq=3 ttl=55 time=56.2 ms


```
You can see that the average time is around `55 -56` ms.

In the majority of cases the **ping rate** is equivalent to the **effective latency** between a device and a server, but factors such as throttling and congestion[3] might affect the results. However, the terms are synonymous enough  and many games and applications report the **latency** as **ping rate**.\

-**

`FOOTNOTES`

[1:speed]
Internet speed is roughly a combination of **bandwidth** and **latency**.

Both are in a *cause-and-effect* relationship, each one affecting how the other functions.

[2:factors]
There are some factors that directly influence the network latency:
 - `connection type` : for example satellite connections are way slower than cable connections
 - `distance` : the farther away you are from the server, the more time it takes for information to get to you

[3:congestion]
**Congestion** goes hand in hand with **bandwidth**. The smaller your bandwidth is, the more likely are you to experience congestion with low latency.

All the information gets to you fast enough, but it does not have enough space on the bandwidth to get through and will slow down.

---
## Practice

What command utility is used to calculate round-trip delay time
??? ?

* `ping`
* `ping rate`
* `latancy`

---
## Revision

Latency can be measured either ??? or ??? ?

* one way
* round-trip
* direct
