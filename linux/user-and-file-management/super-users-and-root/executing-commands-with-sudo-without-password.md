---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - sudo
  - password
  - workout
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Executing commands with `sudo` without password


---

## Content

To `sudo` without password, you can:

- set the `sudoers` group to execute commands without being prompted
- set it up only for our user

Call `visudo` to start editing the
`/etc/sudoers` file and set to enable the feature for the group.

The syntax for configuring user privilages looks as follows:

```plain-text
user_list host_list =
effective_user_list tag_list command_list
```

Where:

- user_list: list of users who are allowed to use sudo
- host_list: list of hosts on which users can run sudo
- effective_user_list: list of effective users
- tag_list: list of tags, such as NOPASSWD
- command_list: list of commands sudo users will run

If we would like to enable all %sudo users to run all commands that require sudo auth without password we would use the following command:

```plain-text
%sudo ALL=NOPASSWD: ALL
```

Alternatively, to enable it only for yourself:

```plain-text
YourUserName ALL=(ALL) NOPASSWD: ALL
```

*Note*: This is highly insecure and you should *avoid* doing it.


---

## Revision

You can disable the `sudo` password by modifying the ??? file.

- `/etc/sudoers`
- `/etc/visudo`
- `/etc/passwd`
- `~/.bashrc`
