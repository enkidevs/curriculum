---
author: aakarsh
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Use tcpdump to listen to network interface traffic


---

## Content

`tcpdump` is a useful utility to print out
descriptions of contents of packets flowing
through network interface card which match a
given boolean expression.

```bash
sudo tcpdump -i wlan0 -v 'tcp port 80'
...
17:09:13.099292 IP 10.0.2.15.46998 >
   132.ip-192-99-245.net.https: Flags [.],
   ack 2533, win 35500, length 0
...
```

The `-i` specifies the interface to listen
on. The `-v` option specifies verbosity of
packet information such as time to live,
identification, total length and options in
ip packet. The expression specifies a
`pcap-filter` used to decide which packets
to print. Here we listen for tcp traffic
with either source or destination port set
to `80`.

See man `pcap-filter` for details on
filters.


---

## Revision

You can use `tcpdump` to listen to traffic passing through a *specific interface* by using the ??? flag.

- -i
- -v
- -e
- -a
