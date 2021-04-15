---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - user
  - group
  - terminal
  - sudo
  - usermod
  - workout
  - introduction
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Granting `root` access to a user


---

## Content

To give a specific user `root` access, you need to add the user to the `root` permissions group.

If you want to create a new user:

```bash
adduser newUser
passwd newUser
```

To add newUser to the *root* group, run:

```bash
adduser newUser root
# or
usermod -aG root newUser
```

Or to give it root privileges manually:

```bash
visudo
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

```bash
usermod ??? ??? enkiUser
```

- `-aG`
- `root`
- `-ag`
- `admin`
