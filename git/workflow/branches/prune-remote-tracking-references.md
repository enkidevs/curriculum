---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Clean Up Old Remote Tracking
    References](https://github.com/jbranchaud/til/blob/master/git/clean-up-old-remote-tracking-references.md){website}
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

# Prune remote tracking references


---

## Content

You may have references to old remote branches in your local repository.

Use `--prune` to remove references to branches that have been deleted from the remote server:

```bash
git fetch origin --prune
```

This will clean up your log.


---

## Practice

Remove references to deleted branches:

```bash
git ??? origin ???
```

- `fetch`
- `--prune`
- `prune`
- `--fetch`


---

## Revision

```bash
git fetch origin --prune
```

Removes references to ??? branches.

- deleted
- merged
- existing
