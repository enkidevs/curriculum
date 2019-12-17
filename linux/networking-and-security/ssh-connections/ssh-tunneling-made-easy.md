---
author: tuwidc

levels:

  - basic

aspects:
  - introduction
  - workout

type: normal

category: feature

tags:

  - ssh

  - tunneling

  - proxy



notes: ''

---

# SSH tunneling made easy

---
## Content

SSH tunneling can be thought of as a poor-man's-VPN. It is handy in situations where you would like to hide your traffic from anybody who might be listening on the wire.

You can also use an SSH tunnel between your computer and your Unix/BSD/Linux server to bypass limits placed by a network, to bypass NAT (Network Address Translation), or to access a specific service on a server which is not publicly available.

For example, to connect to a specific server and port through `ssh`, run:
```
$ ssh -L yourport:host:hostport \
     username@ssh_server
```
The port is then made available and we can connect to it as `127.0.0.1:yourport` thus tunneling the traffic to `server:port`

Bonus example to connect to an external IRC server:
```
ssh -L 8888:irc.freenode.net:6667 \
    myuser@my_ssh_host.net
```

After that we issue this command on our IRC client:
```
/server 127.0.0.1 8888
```

---
## Practice

The usual syntax to use a SSH tunnel is:
```
$ ??? ??? \
    ??? \
    ???
```

* `ssh`
* `-L`
* `port:host:hostport`
* `username@ssh_server`
* `-t`
* `port:host`

---
## Revision

Complete the following code snippet such that a connection to a specific server is made through `ssh`:
```
$ ??? ??? \
  yourport:host:hostport \
  username@ssh_server
```

* `ssh`
* `-L`
* `-T`
* `ssh-tunnel`
* `tunnel`
* `--tunnel`
* `-t`
* `-l`

 
