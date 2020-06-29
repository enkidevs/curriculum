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
---

# Other User Management Recipes


---

## Content

To list all existing users you can use:

```plain-text
cut -d: -f1 /etc/passwd
```

To remove/delete a user:

```plain-text
userdel newuser
```

And to delete their home directory:

```plain-text
rm -r /home/newuser
```

Or just pass the `-r` flag with `userdel` to delete their account and their home directory:

```plain-text
userdel -r newuser
```

To change the password for a user:

```plain-text
passwd username
```

To change the shell for a user:

```plain-text
chsh username
```

To change the details for a user (real name, for example):

```plain-text
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
 
