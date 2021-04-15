---
author: catalin
type: normal
category: tip
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Delete commands aliases


---

## Content

Adding the `-i` or `--interactive` flag to the `rm` [1], `mv`[2]or `cp`[3] commands will ask you to confirm the intent after each step of their iteration.

Using them is considered to be a good practice as you won't end up losing important files from your computer by mistake.

To achieve this functionality by default, the following aliases can be added to `~/.bashrc` or to `/etc/profile`:

```bash
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
```


---

## Revision

You can prompt for confirmation when using `rm` and `mv` commands with ??? flag.

- `-i`
- `-I`
- `-r`
- `-p`


---

## Footnotes

[1:remove]
The `rm` (i.e., remove) command is used to delete files and directories.
[2:move]
The `mv` (i.e., move) command is used to move or rename files.
[3:copy]
The `cp` (i.e., copy) command is used to make copies of files and directories.
