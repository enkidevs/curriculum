---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Remote Branches Official
    Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){website}
  - >-
    [Git Branch Official
    Documentation](https://git-scm.com/docs/git-branch){website}
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

# Setting the upstream branch


---

## Content

When you use the `git clone` or `git checkout` commands on a remote repository, a tracking branch is set up automatically.

Instead, you can explicitly set the upstream branch by using the `-u` or `--set-upstream-to` options.

For example, to set the current branch to track the remote branch `scrollFix`:

```bash
git branch -u origin/scrollFix
```


---

## Practice

```bash
git ??? ??? ???/???
```

is used to set the current branch to follow the remote branch *newFeature*.

- `branch`
- `-u`
- `origin`
- `newFeature`
- `checkout`
- `-upstream`


---

## Revision

`git clone` and `git checkout` commands on a remote repository set up a ??? branch automatically.

- tracking
- single
- false
