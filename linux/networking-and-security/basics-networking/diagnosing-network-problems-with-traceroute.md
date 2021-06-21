---
author: jfarmer
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Diagnosing Network Problems With traceroute


---

## Content

When you request data over the internet, the traffic doesn't flow directly between your machine and the machine you're requesting data from.  Rather, the traffic makes a sequence of "hops" between many machines along the way.  The specific route the traffic takes can vary from request to request.  The failure of any link in this chain might cause your internet connection to appear slow or unreliable.

To see all the "hops" between your machine and some remote machine we can use the `traceroute` command.  Here is an example of the output:

```shell
traceroute google.com
traceroute to google.com (216.58.194.174), 
  64 hops max, 52 byte packets
 1  192.168.1.254 (192.168.1.254)
    6.081 ms  3.963 ms  6.136 ms
 2  99.117.96.2 (99.117.96.2)  
    33.620 ms  11.704 ms  42.567 ms
 3  71.145.0.182 (71.145.0.182)
    11.542 ms  18.129 ms  11.582 ms
 4  12.83.39.177 (12.83.39.177)
    13.595 ms
    12.83.39.181 (12.83.39.181)
    15.196 ms  29.830 ms
 5  12.122.137.213 (12.122.137.213)
    13.275 ms  21.040 ms  13.481 ms
 6  206.121.188.42 (206.121.188.42)
    22.509 ms
    206.121.188.62 (206.121.188.62)
    15.713 ms
    206.121.188.66 (206.121.188.66)
    15.764 ms
 7  72.14.235.207 (72.14.235.207)
    24.409 ms
    216.239.42.157 (216.239.42.157)
    15.598 ms
    72.14.235.207 (72.14.235.207)
    14.963 ms
 8  64.233.175.249 (64.233.175.249)
    19.212 ms  18.240 ms  15.194 ms
 9  sfo07s13-in-f14.1e100.net 
    (216.58.194.174)
    15.199 ms  16.632 ms  14.472 ms
```

Each line corresponds to one "hop."  By default `traceroute` sends out three packets per hop and displays the round trip time for each of the three packets, corresponding to the three times displayed.

The first few hops correspond to your home network and your ISP's network.  Eventually the packets reach the highest-level networks and find their way down into the destination's network.

If a particular website or service is slow you can use `traceroute` to determine which hop in the chain is at fault.  You will see a sudden jump in latency, say, from `13ms` to `100ms`.

If the "bad hop" is internal to your network you know that it's a problem with your own network.  If it's between your computer and your ISP you know it's a problem with your internet connection or possibly your ISP itself.  If it's between some farther-out hops then it might be a problem with the *destination*'s network (e.g., the site in question is actually down).


---

## Practice

If there is a *bad hop* right at the beginning, the most likely to blame is ???

- your network
- your ISP
- destination’s server
- destination’s ISP


---

## Revision

If a particular connection is slow, you can check the *hops* of the packets between your machine and the destination’s machine using ???

- traceroute
- netstat
- ls
- packetroute
