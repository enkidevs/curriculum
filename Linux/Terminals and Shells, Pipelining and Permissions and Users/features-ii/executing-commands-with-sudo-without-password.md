# Executing commands with `sudo` without password
author: tuwi.dc

levels:

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - sudo

  - password

notes: ''

---
## Content

To `sudo` without password, you can:
- set the `sudoers` group to execute commands without being prompted
- set it up only for our user

Call `visudo` to start editing the
`/etc/sudoers` file and set to enable the feature for the group.
```
%sudo ALL=NOPASSWD: ALL
```

Alternatively, to enable it only for yourself:
```
YourUserName ALL=(ALL) NOPASSWD: ALL
```
*Note*: This is highly insecure and you should *avoid* doing it.

---
## Revision

You can disable the `sudo` password by modifying the

 ??? file.
*`/etc/sudoers`
*`/etc/visudo`
*`/etc/passwd`
*`~/.bashrc`
