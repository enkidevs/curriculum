---
author: nene

levels:

  - basic

  - medium

  - beginner

aspects:
  - introduction

type: normal

category: must-know

tags:

  - permissions

  - user groups


links:
  - '[Managing Group Access](http://www.yolinux.com/TUTORIALS/LinuxTutorialManagingGroups.html){website}'
  - '[Unix Permissions](https://drawings.jvns.ca/permissions/){illustration}'

parent: understanding-umask

---

# Set file permissions for users

---
## Content

Have a look at the current permissions with:
```
$ ls -l filename
```
This will return something similar to: 
```
rwxr-x--x  1 root root
90112 10 Mar 11:43 filename.php
```
There are three user groups on the system, and for the above example, their permissions for `filename.php` are:
- `user(u)` : read/write/execute (rwx)
- `group(g)` : read/execute(rx)
- `others(o)` : execute(x)

 
You can target them all using the `a` letter:
```
$ chmod a+x filename.php
#adds execute permissions for all

```
Or individually:
```
$ chmod g-x filename.php
# drops execute permissions for group

$ chmod go+w filename.php
# adds write permissions for g/o
```

Various numbers in `chmod` mean a different set of permissions. Some commonly used commands include, for executable files (i.e. programs):
```
# all three have no restrictions
$ chmod 777 filename

# owner has no restrictions
$ chmod 700 filename
```
For general files:
```
# all users can read/write the file
$ chmod 666 filename

# this is the same as
$ chmod a=rw filename
```

---
## Practice

Add *read/execute* permissions for *user* and *other* for enki.txt: 
```
$ ??? ??? ??? 
          ??? enki.txt
```

* `chmod`
* `uo`
* `+`
* `rx`
* `ug`
* `a`
* `-`

---
## Revision

You can target all groups when setting permissions with the 

??? symbol. 

* `a` 
* `go` 
* `all` 
* `@`

 
