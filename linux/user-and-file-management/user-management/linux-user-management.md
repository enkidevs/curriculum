---
author: tuwi.dc

levels:

  - basic

  - medium

  - beginner

type: normal

category: must-know

tags:

  - linux

  - terminal

  - user

  - userdel

  - delete

  - add

  - useradd

  - bash

  - chfn

  - workout




aspects:
  - workout


---

# Other User Management Recipes

---
## Content

To list all existing users you can use:
```
$ cut -d: -f1 /etc/passwd
```

To remove/delete a user:
```
$ userdel newuser
```
And to delete their home directory:
```
$ rm -r /home/newuser
```
Or just pass the `-r` flag with `userdel` to delete their home directory:
```
$ userdel -r newuser
```
To change the password for a user:
```
$ passwd username
```
To change the shell for a user:
```
$ chsh username
```
To change the details for a user (real name, for example):
```
$ chfn username
```

---
## Practice

Create a new user:
```
$ ??? enkiUser
```
Change its password:
```
$ ??? enkiUser
```
Delete both the user and its home directory:
```
$ ??? enkiUser
```

* `useradd`
* `passwd`
* `userdel -r`
* `enkiUser`
* `usermod`
* `sudo`
* `rm -r`

---
## Revision

The two equivalent commands for adding a new user are

???

* `adduser / useradd`
* `adduser / usermod -a`
* `useradd / usermod -n`
* `chsh / usermod -a`

 
