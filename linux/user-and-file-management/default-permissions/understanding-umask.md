---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - permissions
  - umask
  - terminal
  - files
  - obscura
  - workout
  - deep
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Understanding `umask`

---

## Content

Every file or directory gets some default permissions when created. These values can be set using `umask`[1].

As its name states, the value itself is a _mask_ that _takes away_ permissions. The default permission a **directory** gets when created is 777 (rwxrwxrwx), which is then masked by the `umask` value.

The default permission for new **files** is 666 (rw-rw-rw-), which gets masked by the `umask` value.

Masking is equivalent to turning off permission bits - if the permission does not already exist[2], the `umask` will end up doing nothing. For example, creating a new file while the `umask` is set to _111_ does not change permissions:

```bash
rw-rw-rw-
# masking x bit still yields
rw-rw-rw-
```

However, this is not the case for a `umask` value of _333_, in which both _w_ and _x_ bits are switched off:

```bash
rw-rw-rw-
# masking w and x bits
r--r--r--
```

You can check the current `umask` value with:

```bash
umask
0022
# these would be the permissions
# for a new file
touch new-file
ls -l new-file
-rw-r--r-- 1 user group 0 new-file

# for a new dir
mkdir new-dir
ls -l new-dir
drwxr-xr-x 2 user group 4096 ./
```

To change the umask of current session to `077`, run:

```bash
umask 077
# or
umask u+rwx,g-rwx,o-rwx
# or
umask u=rwx,g=,o=

# + enables specified permissions
# - disables specified permissions
# = enables specified,disables the others

umask
0700
```

To apply this for all the users of the system you should add this in `/etc/profile` file or their specific `~/.bashrc` file.

---

## Practice

What default permission would a _new file_ have if the `umask` is `314` (which translates to `-wx--xr--`)?

???

- r--rw--w-
- r--r--r--
- -wx-wx-w-
- --x--x-wx

---

## Revision

What `umask` value makes the new files only accessible to the user who created them?

???

- 077
- 700
- 777
- 000

---

## Quiz

### how does umask work?

What is the umask value, if the permission of a newly created file is `224`?

???

- All three are valid
- 442
- 552
- 443

---

## Footnotes

[1:Permissions]
The _mask_ represents a 4 digit value, and it is a valid octal number. If fewer digits are passed as an argument, leading zeros are assumed.

The 3 rightmost digits represent the permissions granted to the user, user's group and other users, respectively.

[2:Files]
In case of files, for which the x (or execute) permission is turned off by default.
