---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

tags:

  - linux

  - ssh

  - ssh_config

  - config

  - optimizations

---

# Useful ssh client optimizations 

---
## Content

It can always be useful to make a few optimizations on your ssh client configuration (`~/.ssh/config`).

The options below enable us to boost our client performance by using compression (which is helpful with `scp` over low-bandwidth connections), avoiding dropped connections in certain network environments[1] and multiplexing channels to the same server with a local control file[2].
```
    TCPKeepAlive=yes
    ServerAliveInterval=15
    ServerAliveCountMax=6
    Compression=yes
    ControlMaster auto
    ControlPath /tmp/%r@%h:%p
    ControlPersist yes
```

For more info on additional options check 
```
$ man ssh_config
```

---
## Practice

Which of these lines will instruct the machine to send empty packets to keep the connection alive? 

???

* `TCPKeepAlive`
* `ServerAliveInterval`
* `ServerAliveCountMax`
* `ServerAlivePackets`

---
## Revision

You can speed up the connection to a server through 

???.

* compression
* keeping the connection alive
* tunneling the connection
* reduce the number of packets sent

