---
author: tuwi.dc

levels:

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - multiple

  - ip

  - vhost

  - terminal

  - eth0




---

# Multiple IP Address with aliasing 

---
## Content

**IP Aliasing** is assigning multiple IP address to a single network interface. This can be useful when hosting multiple SSL sites or to compensate for a host that's down for the moment.

Supposing the primary interface is `eth0` we can set up a _temporary alias_ by executing:
```
$ sudo ifconfig eth0:0 192.168.100.100 up
$ sudo ifconfig eth0:1 192.168.100.150 up
...
$ sudo ifconfig eth0:10 192.168.100.250 up
```

To make this permanent we need to edit network config files. 

In Debian based system we edit the `/etc/network/interfaces` and we add:
```
auto eth0:0
iface eth0:0 inet static
        address 192.168.100.100
        netmask 255.255.255.0

```

In Red Hat based systems, first copy existing card configuration `ifcfg-eth0` from:

```
/etc/sysconfig/network-scripts/
```

into

```
new/etc/sysconfig/network-scripts/
``` 
as `ifcfg-eth0:1`.

Then, edit the `DEVICE` and `IPADDR` directives like below:
```
DEVICE="eth0:1"
...
IPADDR=192.168.100.100
```

---
## Revision

To temporary alias `eth0` interface as `eth0:1` you would run:
```
$ ??? ??? ??? 
     100.100.100.1  ???
```

* `sudo`
* `ifconfig`
* `eth0:1`
* `up`
* `eth0`
* `ACTIVE`

 
