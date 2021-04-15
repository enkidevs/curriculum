---
author: jfarmer
type: normal
category: must-know
links:
  - >-
    [Network
    devices](https://ubuntu.com/server/docs/network-configuration){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Is A Network Interface?


---

## Content

Every Linux system has a number of *network interfaces*, each of which corresponds to either a physical or virtual networking device.  For example, if your computer has both an Ethernet card and a Wifi card, then there will be one network interface for each (by default).

The `ifconfig` command will display a list of network interfaces along with their current status and associated information.  Here is some example output (`...` is used in place of some data to ensure the output fits on screen):

```shell
ifconfig
eth0
Link encap:Ethernet  HWaddr ...
inet addr:73.14.187.124  Bcast:...  
Mask:255.255.255.0
inet6 addr: .../64 Scope:Global
inet6 addr: .../64 Scope:Link
UP BROADCAST RUNNING MULTICAST
   MTU:1500  Metric:1
RX packets:9302745 errors:0 dropped:0 
   overruns:0 frame:0
TX packets:6648291 errors:0 dropped:0 
   overruns:0 carrier:0
collisions:0 txqueuelen:1000
RX bytes:995345630 (995.3 MB)
TX bytes:7125692666 (7.1 GB)
```

The `eth0` interface corresponds to a physical Ethernet connection.  We can see that the associated connection is active, connected to the internet, and has been assigned an IP address of `73.14.187.124`.  The output includes some high-level network activity statistics: `RX` means corresponds to "received" and `TX` corresponds to "transmitted", i.e., download traffic vs. upload traffic.


---

## Practice

What interface corresponds to the physical connection?

??? 

- eth0
- enp0s3
- lo


---

## Revision

What do `RX` and `TX` stand for in `ifconfig` ‘s output? 

???

- Received/Transmitted
- Read/Transmitted
- Read/Translated
