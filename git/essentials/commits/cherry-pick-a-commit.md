---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Cherry Picking Git
    Documentation](https://git-scm.com/docs/git-cherry-pick){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Cherry-pick a commit


---

## Content

Cherry-picking is a method to apply a single, specific commit from another branch.

For example:

```bash
git checkout master
git cherry-pick a456bd7
# merge commit a456bd7 (from another branch)
# with branch master
```

This is most useful when you are unable to merge the two branches. For example, you might want to fix a security issue present in both branches.


---

## Practice

The commit cherry-picked in the example was applied on ???.

- master
- other branch


---

## Revision

To apply a *single* commit (from another branch) on the current branch, you use

```bash
git ??? a456bd7
```

- `cherry-pick`
- `pick`
- `merge`
