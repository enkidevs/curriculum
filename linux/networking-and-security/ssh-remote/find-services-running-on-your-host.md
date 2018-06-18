---
author: tuwi.dc

levels:

  - basic

  - medium

type: normal

category: how to

tags:

  - linux

  - terminal

  - netstat

  - connections

  - services

  - listening

  - ports



notes: ''

---

# Find services running on your host

---
## Content

We can get a detailed information of the services that are running on our host by issuing:
```
$ ss -tulpn
```

This gives us the service list specified by the port they're using (tcp or udp) and also the process that is using that specific port:

```
$ ss -tulpn
Netid        tcp
State 	   Listen
Recv-Q 	  0
Send-Q 	  5      
Local Address:Port     127.0.1.1:53
Peer Address:Port      *:*
users:(("dnsmask', pid=728, fd=5))
```
This means that *TCP port 53* was opened by *dnsmask* process having *PID 728*.

Flags:
- `-t` : display TCP sockets
- `-u` : display UDP sockets
- `-l` : display listening sockets
- `-p` : display the process ID attached to the sockets
- `-n` : do not try to find the DNS of the IP address

The `ss` command is the alternative to `netstat`, which is deprecated.

---
## Revision

You can get the process ID of services that are Listening to TCP ports by issuing the non deprecated command:
```
$ ??? ??? ???
```

* `sudo`
* `ss`
* `-tlp`
* `-ulp`
* `-tl`
* `netstat`

 
