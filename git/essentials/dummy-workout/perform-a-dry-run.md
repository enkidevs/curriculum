---
author: rosielowther
levels:
  - advanced
type: normal
category: must-know
aspects:
  - workout
  - deep
links:
  - >-
    [github.com](https://github.com/jbranchaud/til/blob/master/git/dry-runs-in-git.md){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Perform a dry run


---

## Content

Some commands in git allow you to have a dry run. The `--dry-run` option gives a preview of the results of the command.

To check which files `-fd` will delete:

```bash
git clean -fd --dry-run
Would remove test.md
```

To check which files a commit will include (much like `git status`):

```bash
git commit --dry-run --short
M  index.html
```


---

## Practice

Preview the result of the following command:

```bash
git rm -r resources/ ???
```

- --dry-run
- remove
- delete
- --prev


---

## Revision

How do you preview the results of a command?

```bash
git clean -fd ???
```

- --dry-run
- --prev
- after
- reflog
