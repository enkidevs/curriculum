---
author: mihaiberq
type: normal
category: how-to
links:
  - '[Nettop](http://www.unix.com/man-page/osx/1/nettop/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# nettop and jnettop


---

## Content

`nettop` (MacOS) and its Debian/OpedBSD equivalent `jnettop` are command line tools for monitoring network traffic. They both display the traffic going in and out of the machine and the ports used.

The output you'll see is *jnettop's* (the utilities have rather similar outputs). After running the command:

```bash
jnettop
Local <-> Remote
 (IP)                       PORT    PROTO
 (IP)                       PORT
Mihai <-> 2a02:20c:d000:9::d
 2a02:2f0a:b03:10c:d08:8    43543   UDP6
 2a02:20c:d000:9::d           443
   TX       RX      TOTAL
 1.88K/s  303K/s   305K/s
 42.2K    5.32M    5.36M

Mihai <-> 162.125.18.133
 192.168.100.5              34042   TCP
 162.125.18.90                443
 447b/s   218b/s   665b/s
 1.75K     874b    2.60K
 ...
──────────────────────────────────────────
 2.71K/s  304K/s   306K/s
 50.4M    2.24G    2.29G
```

You'll get live updates of in-and-out traffic. Interpreting the output is simple: you've got your IP, port and port type, the remote's IP, port and port type and the upload speed (*TX/transmit*), download speed (*RX/receive*), and the total used for that remote.

You can also sort or filter the output using the flags:

```bash
# only tcp ports, similar to -x
jnettop --filter tcp
# traffic through eth0, similar to -i
jnettop --interface eth0
# run for 10 seconds
jnettop --display text -t 10
```

You might need to run them with *sudo* to work.


---

## Practice

`jnettop` and `nettop` are tools used to

???

- monitor traffic
- enable and disable ports
- verify how the DNS resolves
- count hops to the remote


---

## Revision

The ??? equivalent of `jnettop` is `nettop`.

- MacOS
- Debian
- Windows
- OpenBSD
