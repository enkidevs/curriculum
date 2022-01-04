---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Tracking Branches Official
    Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches#_tracking_branches){website}
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

# Tracking shorthands


---

## Content

The following git commands all have the same effect: set up a local branch `sharefix` to track the remote branch `sharefix` from `origin`, then switch to the new branch.

Full version:

```bash
git checkout -b sharefix origin/sharefix
```

`--track` shorthand:

```bash
git checkout --track origin/sharefix
```

Automatic:

```bash
git checkout sharefix
```

The final option works if the branch name you’re trying to checkout doesn’t exist locally and also matches a name on only one remote.


---

## Practice

The shorthand command to set up a new branch and track it is:

```bash
git ??? --??? origin/sharefix
```

- `checkout`
- `track`
- `follow`
- `branch`


---

## Revision

The shorthand command to set up a new branch and track it is:

```bash
git ??? --??? origin/sharefix
```

- `checkout`
- `track`
- `follow`
- `branch`
