# Testing internet connectivity
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

links:

  - https://shapeshed.com/unix-traceroute/

---
## Content

Possibly the most simple way to test the **connectivity** between your machine and a remote host is via the `ping` utility.

This tool will send (echo) an **ICMP packet**[1] (or more) to the specified destination and will print simple statistics (e.g. latency) about the connection as soon as it gets a response.
```bash
$ ping enki.com
PING enki.com (54.192.197.152): ...
64 bytes from ... time=7.124 ms
64 bytes from ... time=5.094 ms
...
```

For a more detailed analysis, you can use either the `traceroute` or `tracepath` commands.
These will give you information about every **network node** you packet needs to go through before it gets to the specified destination.


The way `traceroute` / `tracepath` works is:
 - a packet is sent towards a **destination**
 - at each Internet router (node), a reply is sent back to the **source** with the response time
 - this is repeated until the packet reaches its **destination**

Basically, the two utilities do the same thing, the only  difference being the fact that `traceroute` manipulates **raw** packages, bypassing security mechanisms.

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
 ...

```

Varying from distribution to distribution, the output of `traceroute` usually contains:
- **hop_number**: refers to the number of intermediate devices through which data must be sent through
- **host_name** : result of a reverse DNS lookup (determining the domain name associated with an IP address)
- **IP_address**: IP address for this network hop
- **round trip time** (RTT): time it took the packet to reach the node and come back

Note that `traceroute` might send multiple probes(packets) for each hop, displaying the RTT for each one of them.

This command is available in both **Linux** and **OSX**, yet `tracepath` is only available in the former.
Keep in mind that there is also a Windows alternative of this command, called `tracert`, behaving the same way.

---
## Revision

Which of the following commands will check connectivity between you and a remote host using **ICMP packets** ?

???

* ping
* tracert
* tracepath
* traceroute

---
## Footnotes

[1:ICMP]
**The Internet Control Message Protocol** (`ICMP`) is the mechanism used to give feedback about network problems that are preventing packet delivery.
ICMP packets are specialised packets used for informational and debugging purposes.
