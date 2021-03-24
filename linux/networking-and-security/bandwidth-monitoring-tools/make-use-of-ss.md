---
author: catalin
type: normal
category: how-to
links:
  - >-
    [Example of ss
    capabilities](http://www.binarytides.com/linux-ss-command/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Make use of `ss`


---

## Content

`ss` command line utility is used to get socket statistics. It replaces the deprecated `netstat` command.

To list all sockets status (TCP + UDP), all you have to issue is:

```bash
ss
```

To list TCP (`-t`), UDP (`-u`) or Unix (`-x`) port connections:

```bash
# TCP and UDP ports
ss -tu
State     Recv-Q Send-Q Local Address:Port
                        Peer Address:Port
ESTAB      69     0     192.168.100.5:59364
                        192.0.73.2:https
CLOSE-WAIT 1      0     192.168.100.5:47352
                        54.243.104.69:https
```

Or you can use the query flag (`-A` or `--query=`):

```bash
ss -A tcp
ss --query=tcp
```

By default, the above commands won't display ports that are **Listening**. To include them, add the `-a` (`--all`) flag:

```bash
ss -at
State   Recv-Q Send-Q Local Address:Port
                      Peer Address:Port
LISTEN  0      128    127.0.0.1:5939
                      *:*   
ESTAB   0      0      192.168.100.5:48088
                      34.198.75.135:https
```

To print out socket statistics:

```bash
ss -s
Total: 1188 (kernel 0)
TCP:   21 (estab 13, closed 0, orphaned 0,
   synrecv 0, timewait 0/0), ports 0

Transport   Total      IP        IPv6
*	         0         -         -        
RAW	       1         0         1        
UDP	       19        9         10       
TCP	       21        15        6        
INET	      41        24        17       
FRAG	      0         0         0    
```

Show the apps connected to the Internet:

```bash
ss -p
Netid State RecvQ SendQ Local Address:Port
                        Peer Address:Port
u_seq ESTAB  0      0     @0002f 203909
                          * 203910
      users:(("atom",pid=22832,fd=17))
u_seq ESTAB  0      0     @0001c 30591
                          * 30592
      users:(("chrome",pid=3057,fd=10))
```


---

## Practice

The explicit number of TCP connections is part of ???'s output.

- `ss -s`
- `ss -a`
- `ss -ta`


---

## Revision

`ss` is the replacement of the deprecated ??? command.

- netstat
- ip
- ifconfig
- ports
