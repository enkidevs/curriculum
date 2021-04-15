---
author: tuwidc
type: normal
category: tip
tags:
  - linux
  - nologin
  - false
  - shells
  - prevent
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Preventing a user from logging into the system


---

## Content

A linux system user's ability to login on the shell, or via SSH, depends on their shell settings in `/etc/passwd`.

To prevent the access, we can set the user's shell to `nologin`.

First, obtain the path of *nologin*:

```bash
which nologin
/bin/nologin
```

Then set user's shell to *nologin* as root :

```bash
sudo chsh <guestUser> -s /bin/nologin
```

**Do not set these for the root user**.

To give the access back, restore the login shell to `bash`:

```bash
sudo chsh <guestUser> -s /bin/bash 
```


---

## Practice

Prevent user `Tom`  from logging into the system :

```bash
sudo ??? ??? 
    ??? ???
```

- `chsh`
- `Tom`
- `-s`
- `/bin/nologin`
- `cshs`
- `-l`


---

## Revision

Restore log-in rights for Tom:

```bash
sudo ??? Tom 
    -s ???
```

- `chsh`
- `/bin/bash`
- `cshs`
- `/bin/login`
