---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Stashing And
    Cleaning](http://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Useful stashing options


---

## Content

To only stash files that are not staged:

```bash
git stash --keep-index
```

To stash untracked files as well as tracked:

```bash
git stash -u
```

To interactively stash the changes:

```bash
git stash --patch
```

To clean up your working directory but not delete the changes permanently:

```bash
git stash --all
```

Finally, there is an optional `message` argument to give a description of the stash:

```bash
git stash save new feature
git stash list
stash@{0}: On master: new feature
```


---

## Practice

Select the `git stash` option that stashes:

tracked and untracked files ???  
unstaged files ???  
interactively ???  

- -u
- --keep-index
- --patch


---

## Revision

`new feature` in `git stash save new feature` represents a ??? of the stash.

- description
- branch
- message
