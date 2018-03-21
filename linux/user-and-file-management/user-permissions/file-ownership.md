# File Ownership
author: jfarmer

levels:

  - basic

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [Permissions](https://wiki.archlinux.org/index.php/File_permissions_and_attributes){website}

tags:
  - introduction
  - workout
---
## Content

On Linux, every file and directory is given both a user owner and a group owner.  You can use `ls -l` or `ls -ld` to see which user and group owns a specific file or directory (respectively).

Here is some example output:

```shell
$ ls -ld /var/log
drwxrwxr-x 10 root syslog 
    4096 Jun 13 06:25 /var/log
$ ls -l /var/log/syslog
-rw-r----- 1 syslog adm
    98 Jun 13 07:17 /var/log/syslog
$
```

The string `drwxrwxr-x` describes the user and group permissions for the `/var/log` directory, which we'll outline briefly below.  The directory itself is owned by the user `root` and the group `syslog`.

Likewise, `-rw-r-----` describes the file permissions on `/var/log/syslog`, which is owned by the *user* `syslog` and the group `adm`.

### Understanding Permission Strings

To understand the permission string `drwxrwxr-x` it helps to break it apart like so:

```text
d|rwx|rwx|r-x
```

The `d` signifies that we're looking at a directory.  The first `rwx` signifies that the *user* who owns this directory has read, write, and execute permissions.  The second `rwx` signifies that any user in the `syslog` group also has read, write, and execute permissions.  The final `r-x` signifies that every other user on the system has read permission and execute permission, but *not* write permission.

For directories, the execute permission allows users to use `cd` to change into the directory, the read permission allows users to list the files in the directory, and the write permission allows users to create, rename, or delete files in the directory.

---
## Practice

Consider the following snippet:
```
$ ls -l schedule.txt
  -r-xr-xr-- 10 student students
     436 Jul 15 13:21 ~/schedule.txt
```
Who has the fewest permissions for this file? 

???
*Others
*User
*Group
*They all have the same permissions

---
## Revision

You can use `???` to see which user or group owns a specific *file*.
*`ls -l`
*`ls -a`
*`ls -o`
*`ls -d`