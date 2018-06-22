---
author: tuwi.dc

levels:

  - basic

  - beginner

type: normal

category: how to

tags:

  - linux

  - ssh

  - debugging



notes: code blocks width is weird

---

# Debugging `ssh` client issues

---
## Content

To see more detailed information when connecting to a host via ssh for debugging purposes, add the `-v` flag (for verbosity):   
```
$ ssh -v user@host.corp.com
```
This will display a variety of useful information about the connection. 

 
```
OpenSSH_5.9p1 Debian-5ubuntu1.4, 
OpenSSL 1.0.1 14 Mar 2012

```
```
debug1: Reading configuration data 
/home/tuwid/.ssh/config
```
```
debug1: Remote protocol version 2.0, remote 
software version OpenSSH_6.0p1 
Debian-4+deb7u2

```

```
debug1: Host 'xx.yy.zz.zz' is known
 and matches the ECDSA host key.

```
```
debug1: Next authentication method:
 publickey
```

```
debug1: Offering RSA public key:
 /home/tuwid/.ssh/id_rsa
debug1: Server accepts key: 
pkalg ssh-rsa blen 279
debug1: Authentication succeeded (publickey)

```

 
