---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - >-
    [Permissions](https://wiki.archlinux.org/index.php/File_permissions_and_attributes){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# File Ownership


---

## Content

On Linux, every file and directory is given both a user owner and a group owner.  You can use `ls -l` or `ls -ld` to see which user and group owns a specific file or directory (respectively).

Here is some example output:

```bash
ls -ld /var/log
drwxrwxr-x 10 root syslog
    4096 Jun 13 06:25 /var/log
ls -l /var/log/syslog
-rw-r
```


---

## Practice

How would you find out the owners of the `timetable.txt` file?

```plain-text
??? ??? timetable.txt
```

- `ls`
- `-l`
- `ld`
- `-d`


---

## Revision

You can use ??? to see which user or group owns a specific *file*.

- `ls -l`
- `ls -a`
- `ls -o`
- `ls -d`
