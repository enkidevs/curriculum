---
author: catalin

levels:

  - basic

type: normal

category: tip

---

# Delete commands aliases

---
## Content

Adding the `-i` or `--interactive` flag to the `rm` [1], `mv`[2]or `cp`[3] commands will ask you to confirm the intent after each step of their iteration.

Using them is considered to be a good practice as you won't end up losing important files from your computer by mistake.

To achieve this functionality by default, the following aliases can be added to `~/.bashrc` or to `/etc/profile`:

```
$ alias cp='cp -i'
$ alias mv='mv -i'
$ alias rm='rm -i'
```

---
## Revision

You can prompt for confirmation when using `rm` and `mv` commands with `???` flag.

* `-i`
* `-I`
* `-r`
* `-p`

