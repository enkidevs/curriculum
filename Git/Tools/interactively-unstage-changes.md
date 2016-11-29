# Interactively unstage changes
author: rosielowther

levels:

  - medium

type: normal

category: must-know

parent: interactively-stage-patches

links:

  - '[git-scm.com](https://git-scm.com/docs/git-reset){website}'

  - '[git-scm.com](https://git-scm.com/docs/git-add){website}'

---
## Content

In the same way that you can interactively stage changes, you can interactively unstage changes using `git reset` with the `--patch` option.

For a single file:
```
$ git reset --patch experiment.md
```
For the whole repository:
```
$ git reset --patch
```
You then decide what you want to do with each *hunk* by selecting one of the options.

---
## Practice

What does this command do?
```
$ git reset --patch enki.md
```
???
*interactively removes changes made to `enki.md`
*restores `enki.md` to the last version
*untracks enki.md

---
## Revision

Interactively unstage some of the changes made to `enki.md`.
```
$ git reset ??? ???
```
*`--patch`
*`enki.md`
*`-patch`