---
author: catalin
type: normal
category: how-to
links:
  - '[freenode IRC](https://webchat.freenode.net/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Getting help


---

## Content

If ever in need, you can easily access the manual pages (**manpage**) of **Git** to get the documentation of specific commands.

There are three ways to access the manpage for a command:

```bash
git help <verb>
git <verb> --help
man git-<verb>
```

Note how in the last command, using the `man` command, the syntax enforced is `git-<verb>` and not `git <verb>`. Running the latter will get you the main manpage of `git`.

For example to get the manpage of the `clone` command you can run:

```bash
git help clone
git clone --help
man git-clone


NAME
git-clone - Clone a repository into a
            new directory
...
```

Additional help can be found on the `#git` and `#github` channels in the Freenode IRC server.


---

## Practice

Complete the command such that it will show you the *manpage* of `git branch` command:

```bash
??? ???-???
```

- `man`
- `git`
- `branch`
- `help`
- `--help`


---

## Revision

What flag can you use after a git command to show its documentation?

```bash
git clone ???
```

- `--help`
- `--manpage`
- `help`
- `--man`
- `--info`
