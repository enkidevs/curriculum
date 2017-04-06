# Tools for diagnosing network issues
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[learn more](https://shapeshed.com/unix-traceroute/)'

---
## Content

`Ping` is a well known networking tool for checking the **connectivity** between two `IP` hosts. It can be used to check if a *remote* host is up, or that network interfaces can be reached. It is frequently used to check whether a *network* connection is available between one machine and another. Ping output:

Unlike the `ping` utility which provides basic information such as latency of a packet until it reaches its destination, the `traceroute` / `tracepath` utility shows the detailed path it takes through all network nodes up until it reaches that **destination**.

`PING enki.com (216.137.63.191) 56(84) bytes of data.
64 bytes from server-216-137-63-191.lhr3.r.cloudfront.net (216.137.63.191): icmp_seq=1 ttl=247 time=5.51 ms
64 bytes from server-216-137-63-191.lhr3.r.cloudfront.net (216.137.63.191): icmp_seq=2 ttl=247 time=34.0 ms
`

The way `traceroute` / `tracepath` works is:
 - a packet is sent towards a **destination**
 - at each Internet router (node), a reply is sent back to the **source** with the response time
 - this is repeated until the packet reaches its **destination**

Basically, the two utilities do the same thing, the only  difference being the fact that `traceroute` manipulates **raw** packages, bypassing security mechanisms.

In addition, the `traceroute` utility is available on all distributions(Windows, Linux and Mac OS X).

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
Each line in the output follows the format:

```
hop_number host_name IP_address pkrtt_times
```

- **hop_number** in computer networking a hop means one portion of the path from the source to the destination. hop_number refers to the number of intermediate devices through which data must be sent through.
- **host_name** this field contains the result of a reverse DNS lookup(determining the domain name associated with an IP address).
- **IP_address** this field contains the IP address for this network hop.
- **packet_trace_rout_trip_times**(pkrtt_times) the remainder of the line gives the round-trip times for a packet to the host and back again.

Keep in mind that there is also a Windows alternative of this command, called `tracert`, behaving the same way.

---
## Practice

Which of the following is not displayed in the `traceroute/tracepath` output
??? ?

* destination
* packet_trace_rout_trip_times
* host_number
* host_name

---
## Revision

The networking tool used to check connectivity between two IP hosts.

* ping
* admin
* netstat
* traceroute
