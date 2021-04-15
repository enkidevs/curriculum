---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Users And Groups On Linux


---

## Content

Linux is a multiuser operating system.  Like any multiuser operating system, it has a notion of "permissions", since by default one doesn't want one user to be able to edit another user's files (or edit system files without proving they're an administrator).  There are two concepts central to Linux's permissions: users and groups.

A group is a collection of zero or more users and a given user can belong to multiple groups.  Files, directories, and executables can be given both user-level and group-level permissions.

Some examples:

1. One could create a group called `print` whose members have permission to use a printer attached to the computer.
2. One could create a group called `log` whose members have permission to read log files in `/var/log`.
3. One could create a group called `ssh` whose members have permission to login remotely via SSH.

These group names are just examples.  One would have to alter specific configuration files or change specific file permissions to make the system behave as described, but they're all possible.

### Listing Groups

The `/etc/group` file contains a list of every group on the system.  Run `cat /etc/group` to see the full list (or `less /etc/group` for a slightly nicer experience).

You can use the `groups` command to see which groups a specific user belongs to.  For example:

```shell
groups jesse
jesse : admin www-data rvm
```

Here we can see that the user `jesse` belongs to three groups: `admin`, `www-data`, and `rvm`.


---

## Revision

You can see the groups a user is in by issuing:

```plain-text
??? ???
```

- `groups`
- `user`
- `group`
- `ls -g`
- `-groups`
