---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: must-know
aspects:
  - workout
  - deep
  - obscura
links:
  - >-
    [git-scm.com](http://git-scm.com/book/en/v2/Git-Basics-Undoing-Things){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# How to unmodify a modified file


---

## Content

If you don't want to keep the changes that you've made to a file, you can use `git checkout` to revert to the previous version of the file.

For example:

```bash
git checkout -- MYFILE.md
```

It is not recommended that you use this command unless you are 100% certain. The deleted changes can't be recovered.

You can use **stashing** or **branching** to keep a copy of the changes to a file in case you need to access them at a later date.


---

## Practice

Why isn't reverting a file to its old version good practice?

???

- The deleted changes can't be recovered.
- It can have unexpected results.
- The command doesn't work on all files.


---

## Revision

Revert `README.md` to its previous version :

```bash
git ??? -- README.md
```

- checkout
- revert
- remove
