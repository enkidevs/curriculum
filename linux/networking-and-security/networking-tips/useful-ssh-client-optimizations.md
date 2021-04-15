---
author: tuwidc
type: normal
category: best-practice
tags:
  - linux
  - ssh
  - ssh_config
  - config
  - optimizations
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Useful ssh client optimizations


---

## Content

It can always be useful to make a few optimizations on your ssh client configuration (`~/.ssh/config`).

The options below enable us to boost our client performance by using compression (which is helpful with `scp` over low-bandwidth connections), avoiding dropped connections in certain network environments[1] and multiplexing channels to the same server with a local control file[2].

```plain-text
    TCPKeepAlive=yes
    ServerAliveInterval=15
    ServerAliveCountMax=6
    Compression=yes
    ControlMaster auto
    ControlPath /tmp/%r@%h:%p
    ControlPersist yes
```

For more info on additional options check 

```bash
man ssh_config
```


---

## Practice

Which of these lines will instruct the machine to send empty packets to keep the connection alive? 

???

- `TCPKeepAlive`
- `ServerAliveInterval`
- `ServerAliveCountMax`
- `ServerAlivePackets`


---

## Revision

You can speed up the connection to a server through ???

- compression
- keeping the connection alive
- tunneling the connection
- reduce the number of packets sent


---

## Footnotes

[1:Keep Connection Alive]
`TCPKeepAlive` will send an empty TCP packet from time to time in order to keep the connection alive. Might be stopped by firewall.

`ServerAliveInterval` and `ServerAliveCountMax` send non-empty packets through ssh so they can get past the firewall.
[2:Multiplex Channels]
`ControlMaster` tells SSH to reuse an existing connection to the server if it already exists, speeding up the process.

`ControlPath` specifies where to create the control socket on your system.

`ControlPersist` indicates that the main connection should remain open until the last session has exited.
