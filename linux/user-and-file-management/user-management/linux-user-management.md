---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - terminal
  - user
  - userdel
  - delete
  - add
  - useradd
  - bash
  - chfn
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Other User Management Recipes


---

## Content

To list all existing users you can use:

```bash
cut -d: -f1 /etc/passwd
```

To remove/delete a user:

```bash
userdel newuser
```

And to delete their home directory:

```bash
rm -r /home/newuser
```

Or just pass the `-r` flag with `userdel` to delete their account and their home directory:

```bash
userdel -r newuser
```

To change the password for a user:

```bash
passwd username
```

To change the shell for a user:

```bash
chsh username
```

To change the details for a user (real name, for example):

```bash
chfn username
```


---

## Practice

Create a new user:

```bash
??? enkiUser
```

Change its password:

```bash
??? enkiUser
```

Delete both the user and its home directory:

```bash
??? enkiUser
```

- `useradd`
- `passwd`
- `userdel -r`
- `enkiUser`
- `usermod`
- `sudo`
- `rm -r`


---

## Revision

The two equivalent commands for adding a new user are

???

- `adduser / useradd`
- `adduser / usermod -a`
- `useradd / usermod -n`
- `chsh / usermod -a`
