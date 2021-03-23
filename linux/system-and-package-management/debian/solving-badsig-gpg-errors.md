---
author: tuwidc
type: normal
category: caveats
tags:
  - linux
  - pgp
  - security
  - signature
  - terminal
  - apt-get
  - ubuntu
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Solving BADSIG GPG errors


---

## Content

When installing a package a GPG error regarding bad signature may occur. Usually, this happens because your signatures are incorect.

```plain-text
W: GPG error: 
http://download.virtualbox.org 
lucid Release:  
The following signatures were invalid:
BADSIG 54422A4B98AB5139 Oracle
Corporation key
```

If you trust the source's key fingerprint, copy the string after `BADSIG` and use it to run the following:

```bash
sudo apt-key adv --recv-keys \ 
  --keyserver keyserver.ubuntu.com \
 54422A4B98AB5139
```

The installation operation should now succeed.


---

## Revision

`BADSIG GPG` errors usually occur because 

???.

- the signatures are incorrect
- there is not enough space on the disk
- the login credentials are wrong
