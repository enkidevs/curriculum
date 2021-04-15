---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - netcat
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Quick port test with netcat


---

## Content

To be sure that we can communicate with a service sometimes the very first thing to do is verify manually that we can connect to it. 

To do this quickly we can issue the `nc` command

```bash
nc -vz localhost.localdomain 25
```

If it fails, the output looks like this:

```bash
nc: Connect to localhost.localdomain
    port 25 (tcp) failed: Connection
                          refused
```

Or in case the connection is possible:

```plain-text
Connection to localhost.localdomain
       port [tcp/ftp] succeeded!
```

Furthermore, to issue commands to a specific service through it we write after we get connected:

```bash
nc google.al 80
```

And we enter: 

```plain-text
GET / HTTP/1.1
```

thus getting this response:

```plain-text
HTTP/1.1 302 Found
Location: http://www.google.al/...
Cache-Control: private
Content-Type: text/html; charset=...
...
```


---

## Revision

You can test if a server’s *port 20* is open by issuing:

```bash
??? ??? 
  ??? 20
```

- `nc`
- `-z`
- `server_address`
- `-v`
- `your_ip`
