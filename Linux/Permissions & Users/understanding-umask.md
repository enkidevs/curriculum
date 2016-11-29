# Understanding `umask`
author: tuwi.dc

levels:

  - basic

type: normal

category: must-know

tags:

  - linux

  - permissions

  - umask

  - terminal

  - files

---
## Content

Every file or directory gets some default permissions when created. These values can be set using `umask`[1].

Getting how `umask` works is a bit tricky: the value of `umask` is not the permission the file/directory is assigned, but its complementary.

The actual permission is represented as the subtraction of `umask` from *full permission value*[2]: for a file to get the default `644` permission (`755` in case of a directory), the `umask` has to be `0022`:

```
#check the current umask value with
$ umask
0022
#these would be the permissions
#for a new file
$ touch new-file
$ ls -l new-file
-rw-r--r-- 1 user group 0 new-file

#for a new dir
$ mkdir new-dir
$ ls -l new-dir
drwrx-rx-rx 2 user group 4096 ./

```
To change the umask of current session to `077`, run:
```
$ umask 077
#or
$ umask u+rwx,g-rwx,o-rwx
#or
$ umask u=rwx,g=,o=

# + enables specified permissions 
# - disables specified permissions
# = enables specified,disables the others

$ umask 
0077
```

To apply this on all the users of the system you should add this in `/etc/profile` file or `~/.bashrc` file.

---
## Practice

What default permission would a *new file* have if the `umask` is `334` ? 

???
*332
*022
*443
*334

---
## Revision

What `umask` value makes the new files only accessible by the user that created them? 

???
*077
*700
*777
*000

---
## Footnotes

[1:Permissions]
The *mask* represents a 4 digit value, and it is a valid octal number. If fewer digits are passed as an argument, leading zeros are assumed. 

The 3 rightmost digits represent the permissions granted to the user, user's group and other users, respectively.

[2:Default permissions]
The full permission from which you have to subtract *umask* are: *666 for a file*, * 777 for a directory *.