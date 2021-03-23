---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - ssh
  - debugging
notes: code blocks width is weird
---

# Debugging ssh client issues


---

## Content

To see more detailed information when connecting to a host via ssh for debugging purposes, add the `-v` flag (for verbosity):   

```bash
ssh -v user@host.corp.com
```

This will display a variety of useful information about the connection. 

```plain-text
OpenSSH_5.9p1 Debian-5ubuntu1.4, 
OpenSSL 1.0.1 14 Mar 2012
```

```plain-text
debug1: Reading configuration data 
/home/tuwid/.ssh/config
```

```plain-text
debug1: Remote protocol version 2.0, remote 
software version OpenSSH_6.0p1 
Debian-4+deb7u2

```

```plain-text
debug1: Host 'xx.yy.zz.zz' is known
 and matches the ECDSA host key.

```

```plain-text
debug1: Next authentication method:
 publickey
```

```plain-text
debug1: Offering RSA public key:
 /home/tuwid/.ssh/id_rsa
debug1: Server accepts key: 
pkalg ssh-rsa blen 279
debug1: Authentication succeeded (publickey)

```
