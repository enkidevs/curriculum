---
author: jfarmer

levels:

  - basic

  - beginner

type: normal

category: must-know

inAlgoPool: false

tags:

  - introduction

  - workout


links:

  - '[Permissions](https://wiki.archlinux.org/index.php/File_permissions_and_attributes){website}'


aspects:
  - introduction
  - workout


---

# File Ownership

---
## Content

On Linux, every file and directory is given both a user owner and a group owner.  You can use `ls -l` or `ls -ld` to see which user and group owns a specific file or directory (respectively).

Here is some example output:

```bash
$ ls -ld /var/log
drwxrwxr-x 10 root syslog
    4096 Jun 13 06:25 /var/log
$ ls -l /var/log/syslog
-rw-r

```

---
## Practice

Consider the following snippet:

```bash
$ ls -l schedule.txt
-r-xr-xr-- 10 student students
436 Jul 15 13:21 ~/schedule.txt
```

Who has the fewest permissions for this file?

???

* Others
* User
* Group
* They all have the same permissions

---
## Revision

You can use `???` to see which user or group owns a specific _file_.

* `ls -l`
* `ls -a`
* `ls -o`
* `ls -d`
 
