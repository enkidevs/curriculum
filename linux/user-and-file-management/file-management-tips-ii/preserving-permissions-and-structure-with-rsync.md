---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - ssh

  - rsync

  - backup

  - sync

  - archive




---

# Preserving permissions and structure with `rsync`

---
## Content

To recursively copy from a remote system to your local system preserving permissions and structure you can use `rsync`. It works best for syncing the same files repeatedly over time:
```
$ rsync -a -v -e ssh server:/source/
                           /dest/
```
where:
```
-a   archive mode; it includes recursion
-v   increase verbosity
-e   specify the remote shell to use
```
Keep in mind that here we assume that we are using key based authentication and not password.

---
## Revision

`rsync` works best for files/directories that 

??? . 

* need constant syncing
* have to be downloaded only once
* are system independent

 
