---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Git Aliases Official
    Documentation](http://git-scm.com/book/en/v2/Git-Basics-Git-Aliases){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using aliases for git commands


---

## Content

To make things more simple and to save time, you can set up an **alias** for git commands that you use frequently. This means that you don't have to type out the whole command each time.

For example:

```bash
git config --global alias.br branch
git config --global alias.cm commit
```

You can now just type `git cm` when you commit a file.

You can also create your own **commands** with aliases. A common example is to view your last commit:

```bash
git config --global 
    alias.last 'log -1 HEAD'
git last
# details of last commit
```


---

## Practice

Create an alias `pr` for the command:

```bash
git ??? ??? ??? 'log --pretty=format:"%h:%an'
```

- `config`
- `--global`
- `alias.pr`
- `alias`
- `pr`
- `log`
- `pretty`


---

## Revision

Which command can now be used to create an annotated tag?

```bash
git config --global alias.ta 'tag -a'
git ???
```

- `ta`
- `alias.ta`
- `tag`
- `--global`
