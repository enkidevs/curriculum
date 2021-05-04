---
author: tuwidc
type: normal
category: feature
tags:
  - ssh
  - linux
  - proxy
  - terminal
  - bash
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Proxifying `ssh` connections


---

## Content

Since connection to a server is usually achieved by:

```bash
ssh user@box
```

An interesting feature of the ssh client is neglected:

```bash
ssh user@box 'ls -la /tmp'
total 4
drwxrwxrwt  4 root root   80 Jun ...
drwxr-xr-x 22 root root 4096 May ...
drwxrwxrwt  2 root root   40 Apr ...
drwxrwxrwt  2 root root   40 Apr ...
```

This executes the command on the remote server and gets the output directly from there.

This allows a user to log in to a remote host using another host as below:

```bash
ssh -t hostB 'ssh hostC'
```

If `w` (who) is issued on hostC, hostB would appear in the `FROM` field.

The `-t` option is mandatory in this case to force pseudo-terminal allocation and be able to work in an interactive shell. If you intend to run a non-interactive command like `ls` or `cat` it's possible to omit the `-t` option:
bash

```plain-text
ssh hostB ssh hostC 'ls -lah'
```


---

## Revision

If you are using a middle server to connect to a third, what username will appear on the third server’s connections list?

???

- the middle server’s username
- your username
- the third server’s username
