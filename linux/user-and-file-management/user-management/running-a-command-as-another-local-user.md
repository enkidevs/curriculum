---
author: dean
type: normal
category: tip
tags:
  - sudo-su-local-shell
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Running a command as another local user


---

## Content

To execute a command as a different user, call **sudo** with the ***-u*** argument:

```bash
sudo -u user command
```

Where *user* is the name of the user you want to execute the command as.

Example:

```bash
foo@linux:~$ whoami
foo

foo@linux:~$ sudo -u test whoami
test
```


---

## Revision

The `sudo` flag that allows you to run commands as another user is ??? .

- `-u`
- `-n`
- `-t`
- `-R`
