---
author: catalin
type: normal
category: tip
tags:
  - workout
---

# `usermod` recipes


---

## Content

Another utility that is used for user management is `usermod`. Its syntax is:

```plain-text
usermod [options] [username]
```

Expire a user at a defined date (**YYYY-MM-DD**):

```plain-text
usermod --expiredate 2016-04-01 newuser
```

Add a user to supplementary groups:

```plain-text
usermod --append --groups newgroup \
    newuser
usermod -aG newgroup,enkigroup newuser
```

Change default home directory:

```plain-text
usermod --home /path/to/dir newuser
```

Change default shell:

```plain-text
usermod --shell /path/to/sh newuser
```

Display the groups an user is member of:

```plain-text
groups newuser
id newuser
```

Disable account with password lock:

```plain-text
usermod --lock newuser
```

Unlock an account with password unlock:

```plain-text
usermod --unlock newuser
```

As you've already seen, there are multiple ways to achieve the same result. It's a matter of taste of which utility to use when it comes to user management.


---

## Practice

Add the user `user` to the group `root`:

```bash
??? ??? ???
      root user
```

- `usermod`
- `--append`
- `--groups`
- `addgroup`
- `--home`
- `--lock`
- `groups`
- `--expiredate`


---

## Revision

Change a user's home directory without moving the files:

```plain-text
??? ??? /newHome user
```

- `usermod`
- `--home`
- `-dm`
- `--move-home`
- `chmod`
 
