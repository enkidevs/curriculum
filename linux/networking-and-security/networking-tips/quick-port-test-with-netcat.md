---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

tags:

  - linux

  - terminal

  - netcat



notes: ''

---

# Quick port test with `netcat`

---
## Content

To be sure that we can communicate with a service sometimes the very first thing to do is verify manually that we can connect to it. 

To do this quickly we can issue the `nc` command
```
$ nc -vz localhost.localdomain 25
```
If it fails, the output looks like this:
```
nc: Connect to localhost.localdomain
    port 25 (tcp) failed: Connection
                          refused
```
Or in case the connection is possible:
```
Connection to localhost.localdomain
       port [tcp/ftp] succeeded!
```

Furthermore, to issue commands to a specific service through it we write after we get connected:
```
$ nc google.al 80
```

And we enter: 
```
GET / HTTP/1.1
```
thus getting this response:

```
HTTP/1.1 302 Found
Location: http://www.google.al/...
Cache-Control: private
Content-Type: text/html; charset=...
...
```

---
## Revision

You can test if a server’s *port 20* is open by issuing:
```
$ ??? ??? 
      ??? 20
```

* `nc`
* `-z`
* `server_address`
* `-v`
* `your_ip`

 
