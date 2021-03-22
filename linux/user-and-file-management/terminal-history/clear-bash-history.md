---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - bash
  - history
  - clean
  - cat
  - null
  - truncate
  - workout
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Clear bash history


---

## Content

If not altered every command executed on a linux system is stored in the `.bash_history ` file.

That file is in the home directory of the user executing the command.
If we need to clear our current history we do:

```bash
cat /dev/null > ~/.bash_history
history -c
```

To clear another user's file we do the same:

```bash
cat /dev/null >
/home/otherUser/.bash_history
```

Keep in mind that we have to be logged in as *root* to clear another user's `bash_history` file.


---

## Practice

You can clear another user's history by running :

```bash
sudo ??? /dev/null >
           ???
```

- `cat`
- `/home/user/.bash_history`
- `~/.bash_history`
- `history`
- `-c`


---

## Revision

To clear the current user’s history you can run:

```bash
??? ???
```

- `history`
- `-c`
- `~/.bash_history`
- `-history`
- `echo`
- `-d`
