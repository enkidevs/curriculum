---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Checkout Previous Branch
    Github](https://github.com/jbranchaud/til/blob/master/git/checkout-previous-branch.md){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Checkout the previous branch


---

## Content

There is a shorthand to checkout the previous branch:

```bash
git checkout -
```

This is the same as:

```bash
git checkout @{-1}
```

The shorthand is useful if you want to switch back and forth between a `master` branch and a feature branch.
This is similar to the *nix `cd -` command.


---

## Revision

What does the next command do?

```bash
git checkout -
```

???

- Switches to the last branch.
- Deletes the current branch.
- Deletes the last branch.
