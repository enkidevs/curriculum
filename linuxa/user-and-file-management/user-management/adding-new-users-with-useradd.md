# Adding New Users With `useradd`
author: jfarmer

levels:

  - basic

  - beginner

type: normal

inAlgoPool: false

category: must-know

tags:
  - workout
---
## Content

We can use the `useradd` command to add new user accounts to the system.  The simplest usage is as follows:

```console
$ sudo useradd -m newuser
```

Here `newuser` is the username of your choice.  The `-m` options tells `useradd` to create a home directory.  You will need to have `root` access to add a new user, hence the `sudo` command.

By default the new user will have no password assigned and therefore won't be able to log in.  Use the `passwd` command to create a new password for the user, like so:

```console
$ sudo passwd newuser
```

If you want the user to be added to specific groups upon creation use the `-G` option, like so:

```console
$ sudo useradd -m -G admin newuser
```

This would create a user named `newuser` and ensure they are a member of the `admin` group.

### Note For Debian Systems

On Debian systems, it's recommended you use the `adduser` command rather than the `useradd` command.  `adduser` is more user-friendly while `useradd` is more low-level, although both achieve the same result.  Using `adduser` will be less error-prone and provide you with an interactive "setup"-type interface, however.

---
## Practice

In which case will the new user *not* be able to login? 

???
*It doesn’t have a password set up.
*It doesn’t have a group assigned.
*It doesn’t have a home directory. 
*It doesn’t have an account picture.

---
## Revision

Set up a new user with their own home directory:
```
$ ??? ??? ??? ???
```
*`sudo`
*`useradd`
*`-m`
*`newuser`
*`-G`
*`root`