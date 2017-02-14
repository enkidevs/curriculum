# Traceroute/Tracepath
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

Unlike the `ping` utility which provides basic information such as latency of a packet until it reaches its destination, the `traceroute` / `tracepath` utility shows the detailed path it takes through all network nodes up until it reaches that **destination**.

The way `traceroute` / `tracepath` works is:
 - a packet is sent towards a **destination**
 - at each Interent router (node), a reply is sent back to the **source** with the response time
 - this is repeated until the packet reaches its **destination**

Basically, the two utilities do the same thing, the only  difference being the fact that `traceroute` manipulates **raw** packages, bypassing security mechanisms.

In addition, the `traceroute` utility require **root** privileges and might not be installed by default.

Running `traceroute`:
```bash
$ traceroute enki.com

```

An example output:
```
traceroute  to enki.com (52.85.178.249),
   30 hops max, 60 byte packets
 1  192.168.0.1 2.65 ms  3.31 ms  3.82 ms
 2  10.0.0.1  4.526 ms  5.122 ms  5.888 ms
 3  * * *
 //cont

```
Each line in the output has the following format:

```
hop_number host_name IP_address pkrtt_times
```

- **hop_number** a sequential count of the number of degrees of separation the host is from your computer.
- **host_name** this field contains the result of a reverse DNS lookup on the host's IP address.
- **IP_address** this field contains the IP address for this network hop.
- **packet_trace_rout_trip_times**(pkrtt_times) the remainder of the line gives the round-trip times for a packet to the host and back again.

Keep in mind that there is also a Windows alternative of this command, called `tracert`, behaving the same way.

---
## Practice

Traceroute/tracepath commands output is formed of hop_number, ???, IP_address,
??? ?

* host_name
* packet_trace_rout_trip_times
* host_number
* destination

---
## Revision

The **traceroute** utility requires ??? privileges.

* root
* admin
* user
