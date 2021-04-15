---
author: nene
type: normal
category: must-know
links:
  - >-
    [Managing Group
    Access](http://www.yolinux.com/TUTORIALS/LinuxTutorialManagingGroups.html){website}
  - '[Unix Permissions](https://drawings.jvns.ca/permissions/){illustration}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Set file permissions for users


---

## Content

Have a look at the current permissions with `ls` and the `l` flag:

```sh
ls -l filename
```

This will return something similar to: 

```sh
rwxr-x--x  1 root root
90112 10 Mar 11:43 filename.php
```

There are three user groups on the system, and for the above example, their permissions for `filename.php` are:

- `user(u)` : read/write/execute (rwx)
- `group(g)` : read/execute(rx)
- `others(o)` : execute(x)

You can target them all using the `a` letter:

```bash
chmod a+x filename.php
# adds execute permissions for all
```

Or individually:

```bash
chmod g-x filename.php
# drops execute permissions for group

chmod go+w filename.php
# adds write permissions for g/o
```


---

## Practice

You can target all groups when setting permissions with the ??? symbol. 

- `a` 
- `go` 
- `all` 
- `@`
