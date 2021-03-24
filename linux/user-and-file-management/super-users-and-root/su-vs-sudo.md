---
author: catalin
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# `su` vs `sudo`


---

## Content

There is a big difference between `su` and `sudo` commands:

- `su` switches you to the **root user account**.
- `sudo` runs a command with **root privileges**.

Basically, `sudo` is a binary **setuid** that executes root commands on behalf of other authorized users.

The list of users that can execute `sudo` can be modified by running (requires **root** access):

```bash
sudo /usr/sbin/visudo
```

By default, the list looks like:

```bash
# User privilege specification
root ALL=(ALL) ALL
```

The syntax of every `sudo` line is:

```plain-text
user machine=(effective_user) command

```

You can give a user *root privileges* (`sudo` access)  by following the syntax above. This is what each field means:

- `user` is the username of the new `sudo` user
- `machine` is the host name in which `sudo` is valid
- `effective_user` stands for the effective users that are allowed to execute the commands
- `command` represents a set of commands that the user can run


---

## Practice

What is a `sudoer`?

???

- A user that can run one or more commands with elevated privileges.
- The equivalent of root.
- A user that can always run all the commands with elevated privileges.
- The machine on which a user can run commands with elevated privileges.


---

## Revision

Running `su` will ???

- switch to the root account.
- give you root privileges for the next command.
- switch to the next account in the list.
