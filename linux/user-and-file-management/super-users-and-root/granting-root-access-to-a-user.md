---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - user

  - group

  - terminal

  - sudo

  - usermod

  - workout

  - introduction




aspects:
  - workout
  - introduction


---

# Granting `root` access to a user

---
## Content

To give a specific user `root` access, you need to add the user to the `root` permissions group.

If you want to create a new user:
```
$ adduser newUser
$ passwd newUser
```
To add newUser to the *root* group, run:
```
$ adduser newUser root
# or
$ usermod -aG root newUser
```

Or to give it root privileges manually:
```
$ visudo
# and add the following line under
newUser ALL=(ALL:ALL)  ALL

# User privilege specification
root    ALL=(ALL:ALL)  ALL
newUser ALL=(ALL:ALL)  ALL
```

Note that the user must log off and back on for this change to take effect.

---
## Revision

Give `enkiUser` root access:
```
$ usermod ??? ??? enkiUser
```

* `-aG`
* `root`
* `-ag`
* `admin`

 
