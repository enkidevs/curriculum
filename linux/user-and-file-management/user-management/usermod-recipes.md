---
author: catalin

levels:

  - basic

  - medium

  - beginner

type: normal

category: tip

tags:

  - workout




aspects:
  - workout


---

# `usermod` recipes

---
## Content

Another utility that is used for user management is `usermod`. Its syntax is:
```
$ usermod [options] [username]
```

Expire a user at a defined date (**YYYY-MM-DD**):
```
$ usermod --expiredate 2016-04-01 newuser
```

Add a user to supplementary groups:
```
$ usermod --append --groups newgroup \
    newuser
$ usermod -aG newgroup,enkigroup newuser
```

Change default home directory:
```
$ usermod --home /path/to/dir newuser
```

Change default shell:

```
$ usermod --shell /path/to/sh newuser
```

Display the groups an user is member of:
```
$ groups newuser
$ id newuser
```

Disable account with password lock:
```
$ usermod --lock newuser
```

Unlock an account with password unlock:
```
$ usermod --unlock newuser
```

As you've already seen, there are multiple ways to achieve the same result. It's a matter of taste of which utility to use when it comes to user management.

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

* `usermod`
* `--home`
* `-dm`
* `--move-home`
* `chmod`

 
