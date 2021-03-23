---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - terminal
  - permissions
  - chmod
  - setuid
  - deep
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
---

# The `setuid` permission

---

## Content

When set-user identification (`setuid`) permission is set on an executable file, a process that runs this file is granted access based on the owner of the file, rather than the user who is running the executable file.

This special permission allows a user to access files and directories that are normally only available to the owner. For example, the `setuid` permission on the `passwd` command makes it possible for a user to change its password, assuming the permissions of the root:

```bash
ll /usr/bin/passwd
 -rwsr-xr-x 1 root /usr/bin/passwd*
```

The `s` in the permissions shows that special permissions is set.

We can set this special permissions with:

```bash
chmod +s file
```

---

## Practice

Which of the following is an alternate description of what `setuid` does?

???

- It allows users to run an executable with the permissions of the file's owner.
- It gives root privileges over the file to all other users.
- It gives elevated privileges over the file to all other users in a specific group.

---

## Revision

Use `chmod` to set the `setuid` attribute for `file`:

```bash
??? ??? ???
```

- `chmod`
- `+s`
- `file`
- `+g`
- `setuid`
