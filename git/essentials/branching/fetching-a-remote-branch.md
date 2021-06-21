---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Remote Branches Official
    Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){website}
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

# Fetching a remote branch


---

## Content

If you are working on a local version of a remote branch and someone else updates the remote branch, you might want to synchronize your version.

To do this, you run `git fetch <remote>`, which updates your local repository with any changes to the remote.

For example, to synchronize with `origin` remote:

```plain-text
git fetch origin
```

To fetch all the remotes:

```plain-text
git fetch --all
```

Note: changes are **not** automatically applied to your local branch, you have to do this yourself with `git merge`.


---

## Practice

Synchronise your local branch with changes to the remote `test`:

```plain-text
git ??? ???
```

- `fetch`
- `test`
- `master`
- `origin`
- `merge`


---

## Revision

Complete the process to apply the changes to your local branch `master`:

```plain-text
git ??? origin
git ???
```

- `fetch`
- `merge`
- `commit`
- `master`
