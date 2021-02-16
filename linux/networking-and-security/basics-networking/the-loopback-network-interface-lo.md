---
author: jfarmer
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The Loopback Network Interface lo


---

## Content

If you run the `ifconfig` command you'll see an interface designated `lo` that doesn't appear to correspond to any physical device:

```shell
ifconfig
lo        
Link encap:Local Loopback  
inet addr:127.0.0.1  Mask:255.0.0.0
inet6 addr: ::1/128 Scope:Host
UP LOOPBACK RUNNING  MTU:65536  Metric:1
RX packets:31 errors:0 dropped:0
   overruns:0 frame:0
TX packets:31 errors:0 dropped:0
   overruns:0 carrier:0
   collisions:0 txqueuelen:0
RX bytes:2240 (2.2 KB)
TX bytes:2240 (2.2 KB)
```

The `lo` interface (`lo` stands for "loopback") is a special, virtual network interface in which all traffic (up or down) is automatically sent back to the interface itself without any processing or modification.  It is assigned the IP address `127.0.0.1`, which is a special IP address that can't ever be used publicly and always refers to the machine itself.

Think of the loopback interface and the `127.0.0.1` IP as a reflexive pronoun: it always means "this machine itself".  The term "localhost" is often used to mean the same thing in this context.

The loopback interface is used for debugging and running machine-internal network services.  For example, we might have a development version of a web application running and don't want it available to the internet at large.  We could configure it to only send/receive traffic over the loopback interface and then access it at `http://127.0.0.1`.


---

## Practice

You can access the loopback interface by going to ???

- `http://127.0.0.1`
- `http://loopback`
- `http://localarea`
- `http://l.p`


---

## Revision

Loopback interface always refers to the ???

- machine itself
- ISP address
- router’s address
- destination’s address
