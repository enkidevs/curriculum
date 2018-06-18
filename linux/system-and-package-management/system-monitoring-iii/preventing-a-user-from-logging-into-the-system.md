---
author: tuwi.dc

levels:

  - advanced

type: normal

category: tip

tags:

  - linux

  - nologin

  - false

  - shells

  - prevent




---

# Preventing a user from logging into the system

---
## Content

A linux system user's ability to login on the shell, or via SSH, depends on their shell settings in `/etc/passwd`.

To prevent the access, we can set the user's shell to `nologin`.

First, obtain the path of *nologin*:
```
$ which nologin
/bin/nologin
```
Then set user's shell to *nologin* as root :
```
$ sudo chsh <guestUser> -s /bin/nologin
```

**Do not set these for the root user**.

To give the access back, restore the login shell to `bash`:
```
$ sudo chsh <guestUser> -s /bin/bash 
```

---
## Practice

Prevent user `Tom`  from logging into the system :
```
$ sudo ??? ??? 
       ??? ???
```

* `chsh`
* `Tom`
* `-s`
* `/bin/nologin`
* `cshs`
* `-l`

---
## Revision

Restore log-in rights for Tom:
```
$ sudo ??? Tom 
        -s ???
```

* `chsh`
* `/bin/bash`
* `cshs`
* `/bin/login`

 
