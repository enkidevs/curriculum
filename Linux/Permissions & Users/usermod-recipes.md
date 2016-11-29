# `usermod` recipes
author: catalin

levels:

  - basic

  - medium

  - beginner

type: normal

category: tip

---
## Content

After accounts are added on your Linux system, the `usermod` can be used to edit the information.

The standard `usermod` syntax is:
```
$ usermod [options] [username]
```

We will use as reference `enki` as a username and `enkigroup`, `othergroup` as group names.

Expire a user at a defined date (**YYYY-MM-DD**):
```
$ usermod --expiredate 2016-04-01 enki
```

Add a user to supplementary groups:
```
$ usermod --append --groups enkigroup enki
$ usermod -aG enkigroup,othergroup enki
```

Change default home directory:
```
$ usermod --home /path/to/dir enki
```

Change default shell:

```
$ usermod --shell /path/to/sh enki
```

Display the groups an user is member of:
```
$ groups enki
$ id enki
```

Disable account with password lock:
```
$ usermod --lock enki
```

Unlock an account with password unlock:
```
$ usermod --unlock enki
```

---
## Practice

Add the user `user` to the group `root`:
```
$ ??? ??? ??? 
      root user
```

* `usermod`
* `--append`
* `--groups`
* `addgroup`
* `--home`
* `--lock`
* `groups`
* `--expiredate`

---
## Revision

Change a user's home directory without moving the files:
```
$ ??? ??? /newHome user
```
*`usermod`
*`--home`
*`-dm`
*`--move-home`
*`chmod`