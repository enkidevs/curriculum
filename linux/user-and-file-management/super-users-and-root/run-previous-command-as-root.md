---
author: nene

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: hack

tags:

  - root

  - commands

  - introduction




aspects:
  - introduction


---

# Run previous command as root

---
## Content

Without including `sudo` before a command, sometimes a 'permission denied' message can be received.

`sudo !!` solves this problem.

Upon entering the following: 
```
$ rm -r private_file
```
You won't have the permission to execute this unless you're logged in with elevated privileges.

What `sudo !!` does is it runs the previous command as `root`. Meaning it now becomes :

```
$ sudo rm -r private_file
```

---
## Revision

A hack to re-run the last command as root is:
```
$ adduser newUser
$ ???
```

* `sudo !!`
* `!!`
* `sudo adduser newUser`
* `adduser newUser`

 
