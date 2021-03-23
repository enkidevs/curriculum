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

# Using ping To Measure Network Latency


---

## Content

The `ping` command will continuously send a tiny bit of internet traffic to a remote address and report the amount of time it took to receive a response.  It will also report if the traffic was dropped, which is indicative of a bad network connection or a misconfigured network. The `ping` command one of the most basic and essential tools for diagnosing network problems.

Here is an example:

```shell
ping google.com
PING google.com (172.217.0.238)
  56(84) bytes of data.
64 bytes from 172.217.0.238:
  icmp_seq=1 ttl=56 time=0.849 ms
64 bytes from 172.217.0.238:
  icmp_seq=2 ttl=56 time=0.822 ms
64 bytes from 172.217.0.238:
  icmp_seq=3 ttl=56 time=0.905 ms
64 bytes from 172.217.0.238:
  icmp_seq=4 ttl=56 time=0.894 ms
64 bytes from 172.217.0.238:
  icmp_seq=5 ttl=56 time=0.888 ms
=== google.com ping statistics ===
5 packets transmitted, 5 received,
  0% packet loss, time 4001ms
rtt min/avg/max/mdev =
  0.822/0.871/0.905/0.044 ms
```

The `ping` command will continue to do this until it is stopped.  The `time=` field is the most important.  This particular machine is getting a response back from `google.com` in about 1 millisecond, which is very fast.  `ping` will also give an overall summary of the "ping session", which includes the number of ping packets sent, the percentage of packets lost, and various statistics about the round trip time (`rtt`).

Keep in mind that latency has to do with both the quality of your connection and the physical distance between the machine on which you issue the `ping` command and the machine being pinged.

For example, if I ping `www.duma.ru`, the website for the Russian State Parliament (Duma), we get much higher ping times:

```shell
ping duma.ru
PING duma.ru (212.11.128.31)
  56(84) bytes of data.
64 bytes from duma.ru (212.11.128.31):
  icmp_seq=1 ttl=113 time=149 ms
64 bytes from duma.ru (212.11.128.31):
  icmp_seq=2 ttl=113 time=149 ms
64 bytes from duma.ru (212.11.128.31):
  icmp_seq=3 ttl=113 time=149 ms
64 bytes from duma.ru (212.11.128.31):
  icmp_seq=4 ttl=113 time=149 ms
=== duma.ru ping statistics ===
5 packets transmitted, 4 received,
  20% packet loss, time 4005ms
rtt min/avg/max/mdev =
  149.660/149.811/149.946/0.484 ms
```


---

## Practice

The `ping` command will send ??? and count the time until the ???

- data
- server responds
- connection fails
- your public key


---

## Revision

Based on the distance, which server would respond to pings faster?

???

- a close one
- a distant one
- the distance isn’t relevant
